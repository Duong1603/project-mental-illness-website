<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Package;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;

class PackageController extends Controller
{
    public function index()
    {
        $packages = Package::paginate(15);
        return view('admin.packages.index', ['packages' => $packages]);
    }

    public function create()
    {
        return view('admin.packages.add', ['action' => 'create']);
    }

    public function store(Request $request)
    {
        $name = '';
        if ($request->hasfile('image')) {
            $this->validate($request, [
                'image' => 'mimes:jpeg,jpg,png,gif|max:4000|required',
            ], [
                'image.mimes' => 'chi chap nhan file hinh anh',
                'image.max' => 'chi chap nhan file hinh anh duoi 2MB',
            ]);
            $file = $request->file('image');
            $name = time() . '_' . $file->getClientOriginalName();
            $destinationPath = public_path('img');
            $file->move($destinationPath, $name);
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

        $package = new Package($request->all());
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
            $image = time() . '_' . $file->getClientOriginalName();
            $destinationPath = public_path('img');
            $file->move($destinationPath, $image);
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
        $package->image = $image;
        $package->save();
        return redirect()->route('packages.index')->with('message', 'Bạn đã cập nhật thành công');
    }

    public function delete($id)
    {
        $package = Package::find($id);
        $imgLink = public_path('img\\') . $package->image;
        if (File::exists($imgLink)) {
            File::delete($imgLink);
        }
        $package->delete();
        return redirect()->route('packages.index')->with('message', 'Bạn đã xoa thành công');
    }
}
