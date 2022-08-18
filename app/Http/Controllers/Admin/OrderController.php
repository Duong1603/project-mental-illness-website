<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Jobs\SendMail;
use App\Models\Order;
use Illuminate\Http\Request;

class OrderController extends Controller
{

    public function index()
    {
        $orders = Order::with('type', 'user', 'link')->newest()->paginate(10);
        return view('admin.bookings.index', ['bookings' => $orders]);
    }

    public function update(Request $request)
    {
        $order = Order::find($request->id);
        if ($order) {
            if ($request->query('status') === 'change') {
                return view('admin.bookings.updateTime', compact('order'));
            }
            $order->status = $request->status;
            $order->save();

            $email = $order->user->email;
            $data = [
                'email' => "CONFIRM_EMAIL",
                'customer' => $order->user->name,
                'package' => $order->type->name,
                'start' => $order->start_meeting,
                'end' => $order->end_meeting,
                'link' => $order->link->link_gg_meet
            ];
            $dataAdmin = [];
        } else {
            return redirect()->route('error');
        }

        SendMail::dispatch($email, $data, $dataAdmin);

        return redirect()->back();
    }
    public function changeTime(Request $request)
    {
        $order = Order::find($request->id);
        if ($order) {
            $order->start_meeting = $request->start_meeting;
            $order->end_meeting = $request->end_meeting;
            $order->status = config('constants.APPROVED');
            $order->save();
        } else {
            return redirect()->route('error');
        }
        $email = $order->user->email;
        $data = [
            'email' => "CHANGE_TIME_EMAIL",
            'customer' => $order->user->name,
            'package' => $order->type->name,
            'start' => $order->start_meeting,
            'end' => $order->end_meeting,
            'link' => $order->link->link_gg_meet
        ];
        $dataAdmin = [];

        SendMail::dispatch($email,$data,$dataAdmin);

        return redirect()->route('bookings.index')
        ->with(['message' => 'Change time success, we send notification for customer soon']);
    }
}
