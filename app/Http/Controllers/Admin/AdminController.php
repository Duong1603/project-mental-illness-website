<?php

namespace App\Http\Controllers\Admin;


use App\Http\Controllers\Controller;
use App\Models\Admin;
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
    public function getLogin()
    {
        return view('admin.login.index');
    }

    public function postLogin(Request $request)
    {
        # code...
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
            $admin =  Admin::where('account', $request->email)->first();
            Session::put('admin', $admin);
            return redirect()->route('overview.index');
        } else {
            return redirect()->back()->with('status', "Đăng nhập khong thành công");
        }
    }
    public function getLogout()
    {
        Session::forget('admin');
        return redirect()->route('admin.getLogin');
    }
}
