<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Validation\Rule;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class UserController extends Controller
{
    public function index(Request $request)
    {
        $customers = User::with('order')->newest()->paginate(15);
        foreach ($customers as $customer) {
            if ($customer->order != null) {
                $customer->type = "booking";
                continue;
            }
            $customer->type = "contact";
            if ($request->query('sort_by')) {
                $sort_by = $request->query('sort_by');
                if ($sort_by == 'kytu_za_by_name') {
                    $managerCustomer = User::orderBy('name', 'DESC')->get();
                    return view('admin.managerCustomer.index', ['managerCustomer' => $managerCustomer]);
                } elseif ($sort_by == 'kytu_az_by_name') {
                    $managerCustomer = User::orderBy('name', 'ASC')->get();
                    return view('admin.managerCustomer.index', ['managerCustomer' => $managerCustomer]);
                } elseif ($sort_by == 'kytu_za_by_email') {
                    $managerCustomer = User::orderBy('email', 'DESC')->get();
                    return view('admin.managerCustomer.index', ['managerCustomer' => $managerCustomer]);
                } elseif ($sort_by == 'kytu_az_by_email') {
                    $managerCustomer = User::orderBy('email', 'ASC')->get();
                    return view('admin.managerCustomer.index', ['managerCustomer' => $managerCustomer]);
                }
            }
            $managerCustomer = User::paginate(15);
            return view('admin.managerCustomer.index', ['managerCustomer' => $managerCustomer]);
        }
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
        return view('admin.managerCustomer.index', ['managerCustomer' => $customers]);
    }
}
