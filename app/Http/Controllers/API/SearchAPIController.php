<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\Category;
use Illuminate\Http\Request;
use App\Models\Post;
use Illuminate\Http\Response;


class SearchAPIController extends Controller
{
    public function searchCategory($id)
    {
        $post = Post::join('categories', 'categories.id', 'posts.category_id')
            ->Where('posts.category_id', '=', $id)
            ->select('categories.name as nameCategory', 'posts.*')
            ->get();
        return response()->json($post, Response::HTTP_OK);
    }
    public function search(Request $request) //request cua get: cateId
    {
        $posts = Post::join('categories', 'categories.id', 'posts.category_id')
        ->select('categories.name as nameCategory', 'posts.*');

        if ($request->cateId) {
            $posts = $posts->where("category_id", $request->cateId);
        }
        if ($request->title) {
            $posts = $posts->where("title", "LIKE", "%".$request->title."%");
        }

        $posts = $posts->paginate(10);
        return response()->json($posts,Response::HTTP_OK);
    }
    public function statistical()
    {
        $count_category = Category::leftJoin('posts',  'posts.category_id', 'categories.id')
            ->selectRaw('categories.name, categories.id,  count(posts.category_id) as total')
            ->groupBy('categories.name', 'categories.id', 'posts.category_id')
            ->paginate(10);
        // dd($count_category);
        return response()->json($count_category, Response::HTTP_OK);
    }
    


}
