<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Jobs\SendMail;
use App\Models\Order;
use Illuminate\Database\Eloquent\ModelNotFoundException;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class OrderController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $orders = Order::with('type', 'user', 'link')->paginate(15);
        return view('admin.bookings.index', ['bookings' => $orders]);
    }

    public function update(Request $request)
    {


        try {

            $order = Order::findOrFail($request->id);
            if ($request->query('status') === 'change') {
                return view('admin.bookings.updateTime', compact('order'));
            }

            $order->status = $request->status;
            $order->save();

            $email = $order->user->email;
            $data = [
                'email' => "CONFIRM_EMAIL",
                'link_google_meet', $order->link->link_gg_meet,
                'start' => $order->start_meeting,
                'end' => $order->end_meeting,
                'doctor' => $order->doctor->name
            ];
            $dataAdmin = [];
        } catch (ModelNotFoundException $exception) {

            return response()->json(['data' => $exception]);
        }

        // SendMail::dispatch($email, $data, $dataAdmin);

        return redirect()->back();
    }

}
