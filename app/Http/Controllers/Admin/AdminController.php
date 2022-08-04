<?php

namespace App\Http\Controllers\Admin;


use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Session;
use Symfony\Component\Console\Input\Input;
use App\Models\User; 


class AdminController extends Controller
{
    public function index()
    {
        return view('admin.login.index');
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

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
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
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
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
