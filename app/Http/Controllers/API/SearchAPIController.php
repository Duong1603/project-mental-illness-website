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
        $post = Post::join('categories', 'categories.id', 'posts.id_category')
            ->Where('posts.id_category', '=', $id)
            ->select('categories.name as nameCategory', 'posts.*')
            ->get();
        return response()->json($post, Response::HTTP_OK);
    }
    public function search(Request $request) //request cua get: cateId
    {
        $posts = Post::join('categories', 'categories.id', 'posts.id_category')
        ->select('categories.name as nameCategory', 'posts.*');

        if ($request->cateId) {
            $posts = $posts->where("id_category", $request->cateId);
        }
        if ($request->title) {
            $posts = $posts->where("title", "LIKE", "%".$request->title."%");
        }

        $posts = $posts->get();
        return ["data" => $posts, "count" => $posts->count() ];
    }
    public function statistical()
    {
        $count_category = Category::leftJoin('posts',  'posts.id_category', 'categories.id')
            ->selectRaw('categories.name, categories.id,  count(posts.id_category) as total')
            ->groupBy('categories.name', 'categories.id', 'posts.id_category')
            ->get();
        // dd($count_category);
        return response()->json($count_category, Response::HTTP_OK);
    }
    


}
