<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Http\Requests\HandleFormRequest;
use App\Jobs\SendMail;
use App\Models\Contact;
use App\Models\User;
use Illuminate\Http\Request;

class ContactAPIController extends Controller
{

    // public function store(HandleFormRequest $request)
    public function store(Request $request)
    {
        $user = new User($request->all());
        $user->save();

        $contact = new Contact($request->all());
        $contact->user_id = $user->id;
        $contact->save();

        $data = [
            'customer' =>  $request->name,
            'content' => 'Thank you for your connecting Have a nice day! ',
            'email' => 'CONTACT_EMAIL'
        ];

        $dataAdmin = [
            'type' => "Customer contact to website",
            'customer' =>  $request->name,
            'problem' => $request->problem,
        ];

        SendMail::dispatch($request->email, $data, $dataAdmin);

        if ($user) {
            return response()->json(["status" => 200, "success" => true, "message" => "Thank for your submit we will connect you soon"]);
        } else {
            return response()->json(["status" => 400, "success" => false, "message" => "Whoops! failed to submit."]);
        }
    }
}
