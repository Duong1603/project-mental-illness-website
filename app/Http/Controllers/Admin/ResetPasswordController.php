<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Admin;
use Illuminate\Http\Request;
use App\Core\Mail;
use Illuminate\Foundation\Auth\ResetsPasswords;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;

class ResetPasswordController extends Controller
{
    use ResetsPasswords;
    public function forgot()
    {
        return view('admin.login.password.forgot');
    }

    public function generateToken(Request $request)
    {
        $request->validate(
            [
                "email" => "required|exists:App\Models\Admin,account"
            ]
        );
        $admin = Admin::where("account", $request->email)->first();
        $admin->reset_password_token = Str::random(50);
        $admin->save();
        
        Mail::send($admin->account, Mail::RESET_PASSWORD_SUBJECT, view("emails.reset-password", ["user" => $admin->account, "resetPwdToken" => $admin->reset_password_token])->render());
        echo "<script>alert('Please check in your account!'); ;window.location.assign('/')</script>";
        // return redirect("/");

    }

    public function verifyResetPwdRequest(Request $request) {
        if (empty($request->token)) {
            return view("admin.login.password.forgot");
        }
        $admins = Admin::where("reset_password_token", $request->token)->first();
        if ($admins == null) {
            return redirect("/");
        }
        return view("admin.login.password.reset", ["account" => $admins->account]);
    }


    function changePassword(Request $request)
    {
        //Validate form
        $validator = Validator::make($request->all(), [
            'oldpassword' => [
                'required', function ($attribute, $value, $fail) {
                    if (!Hash::check($value, Auth::admin()->password)) {
                        return $fail(__('The current password is incorrect'));
                    }
                },
                'min:8',
                'max:30'
            ],
            'newpassword' => 'required|min:8|max:30',
            'cnewpassword' => 'required|same:newpassword'
        ], [
            'oldpassword.required' => 'Enter your current password',
            'oldpassword.min' => 'Old password must have atleast 8 characters',
            'oldpassword.max' => 'Old password must not be greater than 30 characters',
            'newpassword.required' => 'Enter new password',
            'newpassword.min' => 'New password must have atleast 8 characters',
            'newpassword.max' => 'New password must not be greater than 30 characters',
            'cnewpassword.required' => 'ReEnter your new password',
            'cnewpassword.same' => 'New password and Confirm new password must match'
        ]);

        if (!$validator->passes()) {
            return response()->json(['status' => 0, 'error' => $validator->errors()->toArray()]);
        } else {

            $update = Admin::find(Auth::admin()->id)->update(['password' => Hash::make($request->newpassword)]);

            if (!$update) {
                return response()->json(['status' => 0, 'msg' => 'Something went wrong, Failed to update password in db']);
            } else {
                return response()->json(['status' => 1, 'msg' => 'Your password has been changed successfully']);
            }
        }
    }

    public function updatePassword(Request $request) {
        $request->validate([
            "password" => "required",
            "password_confirmation" => "required|same:password"
        ], [
            "password.required" => "You have not entered a new password!",
            "password_confirmation.same" => "Password incorrect!"
        ]); 
        $admin = Admin::where("account", $request->email)->first();
        $admin->password = Hash::make($request->password);
        $admin->reset_password_token = "";
        $admin->save();
        echo "<script>alert('Change password successfully!!');window.location.assign('/')</script>";
    }
}
