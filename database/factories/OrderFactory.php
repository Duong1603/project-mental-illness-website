<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Order>
 */
class OrderFactory extends Factory
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
            'package_id' => rand(1, 2),
            'user_id' => rand(1, 10),
            'doctor_id' => rand(1, 2),
        ];
    }
}
