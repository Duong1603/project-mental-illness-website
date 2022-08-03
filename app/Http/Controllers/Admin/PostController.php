<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Post;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;

class PostController extends Controller
{
  
    public function index()
    {
        $posts = Post::paginate(15);
        return view('admin.blogs.index', ['posts' => $posts]);
    }


    public function create()
    {
        return view('admin.blogs.add', ['action' => 'create']);
    }

    public function store(Request $request)
    {
        //
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
            'title' => 'required',
            'content' => 'required',
        ], [
            'title.required' => 'ban chua nhap title',
            'content.required' => 'ban chua nhap content',
        ]);

        $post = new Post();
        $post->title = $request->title;
        $post->image = $name;
        $post->content = $request->content;
        $post->emotion = 0;
        $post->status = "show";
        $post->tag = "pnv staff check";
        $post->id_category = 1;
        $post->save();
        return redirect()->route('posts.index')->with('message', 'bạn đã thêm thành công');
    }

    public function show($id)
    {

        $post = Post::find($id);
        return view('admin.blogs.index', compact('post'));
    }


    public function edit($id)
    {
        $post = Post::findOrFail($id);
        return view('admin.blogs.add', ['action' => 'update'], compact(['post']));
    }

    public function update(Request $request, $id)
    {
        $name = '';
        if ($request->hasfile('image')) {
            $this->validate($request, [
                'image' => 'mimes:jpg,png,gif,jpeg|max:4000|required',
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
            'title' => 'required',
            'content' => 'required',
        ], [
            'title.required' => 'ban chua nhap title',
            'content.required' => 'ban chua nhap content',
        ]);

        $post = Post::find($id);
        $post->title = $request->title;
        $post->image = $name;
        $post->content = $request->content;
        $post->save();
        return redirect()->route('posts.index')->with('message', 'bạn đã cập nhật thành công');
    }

    public function delete($id)
    {
        $post = Post::find($id);
        $imgLink = public_path('img\\') . $post->image;
        if (File::exists($imgLink)) {
            File::delete($imgLink);
        }
        $post->delete();
        return redirect()->route('posts.index')->with('thành công', 'bạn đã xoa thành công');
    }
}
