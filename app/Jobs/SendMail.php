<?php

namespace App\Jobs;

use App\Mail\AdminEmail;
use App\Mail\BookingEmail;
use App\Mail\ChangeTimeEmail;
use App\Mail\ConfirmEmail;
use App\Mail\UserEmail;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldBeUnique;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;
use Illuminate\Support\Facades\Mail;

class SendMail implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    public $email, $data, $dataAdmin;

    public function __construct($email, $data, $dataAdmin)
    {
        $this->email = $email;
        $this->data = $data;
        $this->dataAdmin = $dataAdmin;
    }

    public function handle()
    {
        $mail =  Mail::to($this->email);
        if ($this->data['email'] === 'RESIGN_EMAIL') {
            $mail->send(new BookingEmail($this->data));
        } else if ($this->data['email'] === 'CONTACT_EMAIL') {
            $mail->send(new UserEmail($this->data));
        } else if ($this->data['email'] === 'CHANGE_TIME_EMAIL') {
            $mail->send(new ChangeTimeEmail($this->data));
            return;
        } else {
            $mail->send(new ConfirmEmail($this->data));
            return;
        }
        
        Mail::to(config('constants.ADMIN_EMAIL'))->send(new AdminEmail($this->dataAdmin));
    }
}
