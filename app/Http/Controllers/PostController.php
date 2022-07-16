<?php

namespace App\Http\Controllers;
use App\Models\Post;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;

class PostController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $posts = Post::get();

        // dd($posts);
        return view('showPost', ['posts' => $posts]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        $posts = Post::all();
        return view('formADD', ['action' => 'create'], compact('posts'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
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
            // dd($request->all());
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
        $post->save();
        return redirect()->route('posts.index')->with('thành công', 'bạn đã cập nhật thành công');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function show(Post $post)
    {

        $post = Post::find($id);
        return view('showPost', compact('post'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function edit(Post $post, $id)
    {
        //
        $posts = Post::all();
        return view("formADD", ["post" => Post::find($id), "action" => "update"], compact('posts'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Post $post, $id)
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
        return redirect()->route('posts.index')->with('thành công', 'bạn đã cập nhật thành công');

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function destroy(Post $post, $id)
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
