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

    public function Login(Request $request)
    {
        $login = [
            'account' => $request->input('email'),
            'password' => $request->input('pw')
        ];
        if (Auth::attempt($login)) {
            $user = Auth::user();
            Session::put('user', $user);
            echo '<script>alert("Đăng nhập thành công.");window.location.assign("/admin/overview");</script>';
        } else {
            echo '<script>alert("Đăng nhập thất bại.");window.location.assign("login");</script>';
        }
    }
    public function Logout()
    {
        // Session::forget('user');
        Session::forget('login');
        return redirect('/admin/login');
    }
    // public function Register(Request $request)
    // {
    //     $input = $request->validate([
    //         'name' => 'required|string',
    //         'email' => 'required|email|unique:users',
    //         'password' => 'required',
    //         'c_password' => 'required|same:password'
    //     ]);

    //     $input['password'] = bcrypt($input['password']);
    //     User::create($input);

    //     echo '<script>alert("Đăng ký thành công. Vui lòng đăng nhập.");window.location.assign("login");</script>';
    // }


    public function create()
    {
        //
    }


    public function store(Request $request)
    {
        //
    }


    public function show($id)
    {
        //
    }


    public function edit($id)
    {
        //
    }


    public function update(Request $request, $id)
    {
        //
    }

    public function destroy($id)
    {
        //
    }
}
