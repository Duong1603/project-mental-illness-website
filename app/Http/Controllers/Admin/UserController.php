<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Session;
use Symfony\Component\Console\Input\Input;
use App\Models\User;

class UserController extends Controller
{
    public function index()
    {
        $managerCustomer = User::paginate(15);
        return view('admin.managerCustomer.index', ['managerCustomer' => $managerCustomer]);
    }
   
}
