<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use App\Models\User;

class UserController extends Controller
{
    public function index()
    {
        $customers = User::with('order')->paginate(15);
        foreach ($customers as $customer) {
            if ($customer->order != null) {
                $customer->type = "booking";
                continue;
            }
            $customer->type = "contact";
        }
        return view('admin.managerCustomer.index', ['managerCustomer' => $customers]);
    }
}
