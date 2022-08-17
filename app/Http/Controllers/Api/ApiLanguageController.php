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
}
