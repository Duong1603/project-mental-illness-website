<?php

namespace App\Http\Controllers\Admin;


use App\Http\Controllers\Controller;
use App\Models\Admin;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\User;


class AdminController extends Controller
{
    public function index()
    {
        return view('admin.login.index');
    }

    public function getLogin()
    {
        return view('admin.login.index');
    }

    public function postLogin(Request $request)
    {
        $this->validate(
            $request,
            [
                'email' => 'required|email',
                'pw' => 'required|min:6|max:20'
            ],
            [
                'email.required' => 'Vui lòng nhập email',
                'email.email' => 'Không đúng định dạng email',
                'pw.required' => 'Vui lòng nhập mật khẩu',
                'pw.min' => 'Mật khẩu ít nhất 6 ký tự',
                'pw.max' => 'Mật khẩu tối đa 20 ký tự'
            ]
        );
        $credentials = ['account' => $request->email, 'password' => $request->pw];
        if (Auth::attempt($credentials)) {
            return redirect()->route('overview.index');
        }
        return redirect()->back()->with('message', "Đăng nhập khong thành công");
    }
    
    public function getLogout()
    {
        Auth::logout();
        return redirect()->route('admin.getLogin');
    }
}
