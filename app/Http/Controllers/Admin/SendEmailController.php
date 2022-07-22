<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Mail\AdminEmail;
use App\Mail\UserEmail;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;

class SendEmailController extends Controller
{
    function index()
    {
        return view('emails.formContact');
    }
    public function send(Request $request)
    {
        $request->validate([
            'email' => 'required|email',
            'subject' => 'required',
            'name' => 'required',
            'message' => 'required',
        ]);

        $subject = $request->subject;
        $name = $request->name;
        $email = $request->email;
        $message = $request->message;

        $details = [
            'email' => $email,
            'subject' => $subject,
            'name' => $name,
            'message' => $message,
        ];
        $data = [
            'title' => 'Chào bạn,',
            'body' => 'Cảm ơn bạn đã gửi feedback cho chúng tôi, chúc bạn có một ngày tốt lành'
        ];
        // Mail::to($email)->send(new MyTestMail($data));
        Mail::to('huett2501@gmail.com')->send(new AdminEmail($details));
        Mail::to($email)->send(new UserEmail($data));

        return back()->with(['message' => 'Email successfully sent!']);
    }
}
