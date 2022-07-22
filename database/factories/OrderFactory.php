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
            'id_package' => rand(1, 2),
            'id_user' => rand(1, 10),
            'id_doctor' => rand(1, 2),
        ];
    }
}
