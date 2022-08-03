<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Mail\UserEmail;
use App\Models\Contact;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Mail;

class ContactAPIController extends Controller
{

    public function ruleValidates()
    {

        return [
            'name' => 'required',
            'email' => 'required|email',
            'phone' => 'required|regex:/(0)[0-9]{9}/',
            'description' => 'required',
        ];
    }

    public function store(Request $request)
    {
        $validation = Validator::make(
            $request->all(),
            $this->ruleValidates()
        );
        if ($validation->fails()) {
            $response = array('status' => 'error', 'errors' => $validation->errors()->toArray());
            return response()->json($response);
        }

        $user = new User();
        $user->name = $request->name;
        $user->phone = $request->phone;
        $user->email = $request->email;
        $user->save();

        $contact = new Contact();
        $contact->user_id = $user->id;
        $contact->save();

        $data = [
            'title' => 'Hello mr/ms ' . $request->name,
            'body' => 'Thank you for your feedback Have a nice day! '
        ];

        Mail::to($request->email)->send(new UserEmail($data));

        if ($user && $contact) {
            return response()->json(["status" => 200, "success" => true, "message" => "Thank for your submit we will connect you soon"]);
        } else {
            return response()->json(["status" => "failed", "success" => false, "message" => "Whoops! failed to submit."]);
        }
    }
}
