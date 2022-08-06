<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Order>
 */
class OrderFactory extends Factory
{
    private $status = array('waiting for approve', 'approved', 'rejected');
    public function definition()
    {
        $rand = rand(2,100);
        return [
            'package_id' => rand(1, 2),
            'start_meeting' => date('Y-m-d H:i:s', strtotime( ' + '.$rand.' hours')),
            'end_meeting' => date('Y-m-d H:i:s', strtotime(' + '.($rand+2).' hours')),
            'problem' => fake()->text(200),
            'user_id' => rand(1, 10),
            'doctor_id' => rand(1, 2),
            'status'=> $this->status[rand(0,2)],
            'link_google_meet_id' => rand(1,2),
        ];
    }
}
