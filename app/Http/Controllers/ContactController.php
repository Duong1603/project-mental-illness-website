<?php

namespace App\Http\Controllers;

use App\Mail\CustomerEmail;
use App\Mail\MyTestMail;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;

class ContactController extends Controller
{
  function index()
  {
    return view('emails.sendmail');
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

    $data = [
      'email' => $email,
      'subject' => $subject,
      'name' => $name,
      'message' => $message,
    ];
    $details = [
      'title' => 'Mail from ItSolutionStuff.com',
      'body' => 'This is for testing email using smtp'
    ];
    Mail::to($email)->send(new MyTestMail($data));
    Mail::to('huett2501@gmail.com')->send(new CustomerEmail($details));
    return back()->with(['message' => 'Email successfully sent!']);
  }
}
