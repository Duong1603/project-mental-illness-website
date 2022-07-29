<?php

namespace App\Http\Controllers\API;
use App\Models\Comment;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Http\Response;

class CommentAPIController extends Controller
{
    public function comment(){
        $comment = Comment::join('users', 'users.id', 'comments.user_id')
        ->select('users.name as username', 'comments.*')
        ->get();
    return response()->json($comment, Response::HTTP_OK);
    }
    public function store(Request $request){
        $comment = new Comment ();
        $comment-> content = $request->content;
        $comment-> post_id = $request->post_id;
        $comment-> user_id = $request->user_id;
        $comment->save();
        return response()->json(["status" => "200", "data" => $comment]);
    }
}
