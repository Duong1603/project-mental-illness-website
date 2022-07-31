<?php

namespace Database\Factories;

use DateTime;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Booking>
 */
class BookingFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    private $status = array('will do', 'doing', 'done');

    public function definition()
    {
        $rand = rand(2,100);
        return [
            //
            'start_meeting' => date('Y-m-d H:i:s', strtotime( ' + '.$rand.' hours')),
            'end_meeting' => date('Y-m-d H:i:s', strtotime(' + '.($rand+2).' hours')),
            'problem' => fake()->text(200),
            'times'=>rand(1,3),
            'status' => $this->status[rand(0, 2)],
            'link_gg_meet' => fake()->text(300),
            'order_id' => rand(1, 10)
        ];
    }
}
