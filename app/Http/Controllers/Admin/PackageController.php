<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Package;
use App\Services\HandleFileService;
use Illuminate\Http\Request;

class PackageController extends Controller
{
    public function index()
    {
        $packages = Package::paginate(15);
        foreach ($packages as $package ) {
            $package->qrCode = $package->getLinkQrCode();
            $package->img = $package->getImage();
        }
        return view('admin.packages.index', ['packages' => $packages]);
    }

    public function create()
    {
        return view('admin.packages.add', ['action' => 'create']);
    }

    public function store(Request $request)
    {
        if ($request->hasfile('image')) {
            $this->validate($request, [
                'image' => 'mimes:jpeg,jpg,png,gif|max:4000|required',
            ], [
                'image.mimes' => 'chi chap nhan file hinh anh',
                'image.max' => 'chi chap nhan file hinh anh duoi 2MB',
            ]);
            $file = $request->file('image');
            $image = HandleFileService::create($file,'img');
        }
        if ($request->hasfile('image-qr')) {
            $this->validate($request, [
                'image-qr' => 'mimes:jpeg,jpg,png,gif|max:4000|required',
            ], [
                'image-qr.mimes' => 'chi chap nhan file hinh anh',
                'image-qr.max' => 'chi chap nhan file hinh anh duoi 2MB',
            ]);
            $file = $request->file('image-qr');
            $name = HandleFileService::create($file,'img/qr-code');
        }
        $this->validate($request, [
            'name' => 'required',
            'price' => 'required',
            'description' => 'required',
        ], [
            'name.required' => 'Bạn chưa nhập name',
            'price.required' => 'Bạn chưa nhập price',
            'description.required' => 'Bạn chưa nhập description',
        ]);

        $package = new Package();
        $package->name = $request->name;
        $package->price = $request->price;
        $package->description = $request->description;
        $package->image = $image;
        $package->qr_code = $name;

        $package->save();

        return redirect()->route('packages.index')->with('message', 'Bạn đã thêm thành công');
    }

    public function show($id)
    {
        $package = Package::find($id);
        return view('admin.packages.index', compact('package'));
    }

    public function edit($id)
    {
        $package = Package::findOrFail($id);
        $package->qrCode = $package->getLinkQrCode();
        $package->img = $package->getImage();

        return view('admin.packages.add', ['action' => 'update'], compact(['package']));
    }

    public function update(Request $request, $id)
    {
        $image = '';
        if ($request->hasfile('image')) {
            $this->validate($request, [
                'image' => 'mimes:jpg,png,gif,jpeg|max:4000|required',
            ], [
                'image.mimes' => 'chi chap nhan file hinh anh',
                'image.max' => 'chi chap nhan file hinh anh duoi 2MB',
            ]);
            $file = $request->file('image');
            $image = HandleFileService::create($file,'img');
        }
        if ($request->hasfile('image-qr')) {
            $this->validate($request, [
                'image-qr' => 'mimes:jpeg,jpg,png,gif|max:4000|required',
            ], [
                'image-qr.mimes' => 'chi chap nhan file hinh anh',
                'image-qr.max' => 'chi chap nhan file hinh anh duoi 2MB',
            ]);
            $file = $request->file('image-qr');
            $name = HandleFileService::create($file,'img/qr-code');
        }
        $this->validate($request, [
            'name' => 'required',
            'price' => 'required',
            'description' => 'required',
        ], [
            'name.required' => 'Bạn chưa nhập name',
            'price.required' => 'Bạn chưa nhập price',
            'description.required' => 'Bạn chưa nhập description',
        ]);

        $package = Package::find($id);
        $package->name = $request->name;
        $package->price = $request->price;
        $package->description = $request->description;
        
        $imgLink = public_path('img/') . $package->image;
        $qrLink = public_path('img/qr-code/') . $package->qr_code;
        HandleFileService::delete($imgLink);
        HandleFileService::delete($qrLink);
        
        $package->image = $image;
        $package->qr_code = $name ?? $package->qr_code;
        $package->save();

        return redirect()->route('packages.index')->with('message', 'Bạn đã cập nhật thành công');
    }

    public function delete($id)
    {
        $package = Package::find($id);
        $imgLink = public_path('img/') . $package->image;
        HandleFileService::delete($imgLink);
        $package->delete();
        return redirect()->route('packages.index')->with('message', 'Bạn đã xoa thành công');
    }
}
