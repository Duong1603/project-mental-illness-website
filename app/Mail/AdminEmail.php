<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class AdminEmail extends Mailable
{
    use Queueable, SerializesModels;
    protected $data;

    const MESSAGE_ADMIN = [
        'type' => '',
        'customer' => '',

        'feedback' => '',

        'start_time' => '',
        'end_time' => '',
        'link' => '',

        'QR_code' => ''
    ];

    public function __construct($data)
    {
        $this->data = $data;
    }

    public function build()
    {
        return $this->subject("[Phi Phi System] new information")
            ->view('emails.adminEmail');
    }
}
