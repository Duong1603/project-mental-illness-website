<?php

namespace App\Jobs;

use App\Mail\AdminEmail;
use App\Mail\BookingEmail;
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

    protected $email, $data, $dataAdmin;

    public function __construct($email, $data, $dataAdmin)
    {
        $this->email = $email;
        $this->data = $data;
        $this->dataAdmin = $dataAdmin;
    }

    public function handle()
    {
        $mail =  Mail::to($this->email);
        if ($this->data['email'] == 'RESIGN_EMAIL') {
            $mail->send(new BookingEmail($this->data));
        } else if ($this->data['email'] == 'CONTACT_EMAIL') {
            $mail->send(new UserEmail($this->data));
        } else {
            $mail->send(new ConfirmEmail($this->data));
        }
        Mail::to(env('ADMIN_EMAIL'))->send(new AdminEmail($this->dataAdmin));
    }
}
