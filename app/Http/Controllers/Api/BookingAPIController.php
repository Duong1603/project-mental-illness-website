<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\BookingCollection;
use App\Http\Resources\BookingResource;
// use App\Http\Resources\Booking as BookingResource;
use App\Models\Booking;
use DateTime;
use Illuminate\Http\Request;

class BookingAPIController extends Controller
{
    public function getBooking()
    {
        $bookings =  Booking::where('start_meeting', '>', date("Y-m-d H:i:s"))->get();
        return [
            'status' => 200,
            'count' => $bookings->count(),
            'data' => BookingResource::collection($bookings)
        ];
    }
    public function addBooking(Request $request)
    {
        
        $booking = new Booking();
        $booking->start_meeting = $request->start_meeting;
        $booking->end_meeting = $request->end_meeting;
        $booking->link_gg_meet = $request->link_gg_meet;

        $booking->save();
        return $booking;
    }
    public function deleteBooking($id)
    {
        $booking =  Booking::find($id);
        $booking->delete();
        return ['status' => 'ok', 'msg' => 'Delete successed'];
    }
    
}
