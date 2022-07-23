<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Post;
use Illuminate\Http\Response;


class SearchAPIController extends Controller
{
    public function searchCategory($id)
    {
        $food = Post::join('categories', 'categories.id', 'posts.id_category')
            ->Where('posts.id', '=', $id)
            ->select('categories.name as nameCategory', 'posts.*')
            ->get();
        return response()->json($food, Response::HTTP_OK);
    }

    public function searchName(Request $request)
    {
        $food = Post::join('categories', 'categories.id', 'posts.id_category')
            ->select('categories.name as nameCategory', 'posts.*')
            ->Where('posts.title', 'like', '%' . $request->search . '%')
            ->get();
        return response()->json($food, Response::HTTP_OK);
    }
}
