<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\HandleFormRequest;
use App\Http\Resources\BookingResource;
use App\Models\Order;
use App\Models\User;

class BookingAPIController extends Controller
{
    public function index()
    {
        $bookings =  Order::where('start_meeting', '>', date("Y-m-d H:i:s"))->get();
        return [
            'status' => 200,
            'count' => $bookings->count(),
            'data' => BookingResource::collection($bookings)
        ];
    }
    
    public function store(HandleFormRequest $request)
    {

        try {

            $user = new User($request->all());
            $user->save();
            $package = $request->package;
            $problem = $request->problem;

            foreach ($request->session as $session) {

                $order = new Order($session);
                $order->package_id = $package;
                $order->user_id = $user->id;
                $order->link_google_meet_id = 1;
                $order->problem = $problem;
                $order->doctor_id = config('constants.DEFAULT_DOCTOR');
                $order->status = config('constants.WAITING_APPROVED');
                $order->save();

            }
        } catch (\Illuminate\Database\QueryException $exception) {

            return response()->json(["status" => $exception]);

        }

        return response()->json(["status" => $order]);
    }

    public function delete($id)
    {

        $booking =  Order::find($id);
        $booking->delete();
        return ['status' => 'ok', 'msg' => 'Delete successed'];

    }
}
