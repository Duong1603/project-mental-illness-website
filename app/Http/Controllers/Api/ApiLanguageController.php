<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class ApiLanguageController extends Controller
{
    public function index(Request $request)
    {
        $data = [
            'message' => trans('message'),
        ];

        return response()->json($data, 200);
    }
    // public function postLang(Request $request)
    //   {
    //       Session::set('locale', $request->locale);
    //       return redirect()->back();
    //   }
}
