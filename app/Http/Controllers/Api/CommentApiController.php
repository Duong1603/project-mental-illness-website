<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Resources\CommentResource;
use App\Models\Comment;


class CommentAPIController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $comments = Comment::select("*")->orderBy("created_at", "desc");
        if (!empty($request->numberOfComments)) {
            $comments = $comments->limit($request->numberOfComments);
        }
        // $comments = Comment::all();
        // return CommentResource::collection($comments);
        return CommentResource::collection($comments->get());
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'image' => 'required|image',
            'price' => 'required|numeric',
            'promotionPrice' => 'required|numeric',
            'description' => 'required',
            'quantity' => 'required|numeric',
            'id_type' => 'required|numeric',
        ]);

        $comment = new Comment();

        $destination_path = public_path('images');
        $image = $request->file('image');
        $imageName = $image->getClientOriginalName();
        $request->file('image')->move($destination_path, $imageName);
        if (file_exists("/images/" . $comment->image)) unlink("/images/" . $comment->image);
        $comment->image = $imageName;


        $comment->name = $request->name;
        $comment->price = $request->price;
        $comment->promotionPrice = $request->promotionPrice;
        $comment->description = $request->description;
        $comment->quantity = $request->quantity;
        $comment->id_type = $request->id_type;
        $comment->save();

        return response()->json(['message' => 'Successfully added']);
    }


    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}