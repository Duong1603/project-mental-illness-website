<?php

namespace Database\Factories;

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
        return [
            //
            'start_meeting' => fake()->dateTime(),
            'end_meeting' => fake()->dateTime('+2 hours'),
            'problem' => fake()->text(200),
            'times'=>rand(1,3),
            'status' => $this->status[rand(0, 2)],
            'link_gg_meet' => fake()->text(300),
            'id_order' => rand(1, 10)
        ];
    }
}
