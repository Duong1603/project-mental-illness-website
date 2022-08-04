<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Admin;
use Illuminate\Http\Request;

class AdminController extends Controller
{
    public function getLogin()
    {
        return view("auth.login");
    }
    public function postLogin()
    {
        # code...
        dd("just test");
    }
}
