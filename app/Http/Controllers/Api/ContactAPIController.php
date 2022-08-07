<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Http\Requests\HandleFormRequest;
use App\Mail\UserEmail;
use App\Models\Contact;
use App\Models\User;
use Illuminate\Support\Facades\Mail;

class ContactAPIController extends Controller
{

    public function store(HandleFormRequest $request)
    {

        $user = new User($request->all());
        $user->save();

        $contact = new Contact($request->all());
        $contact->user_id = $user->id;
        $contact->save();

        $data = [
            'title' => 'Hello mr/ms ' . $request->name,
            'body' => 'Thank you for your connecting Have a nice day! '
        ];

        Mail::to($request->email)->send(new UserEmail($data));

        if ($user && $contact) {
            return response()->json(["status" => 200, "success" => true, "message" => "Thank for your submit we will connect you soon"]);
        } else {
            return response()->json(["status" => 400, "success" => false, "message" => "Whoops! failed to submit."]);
        }
    }
}
