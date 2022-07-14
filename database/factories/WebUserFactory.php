<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\WebUser>
 */
class WebUserFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    private $gender = array('male','female','other');

    public function definition()
    {
        return [
            //
            'name'=>fake()->name(),
            'gender'=>$this->gender[rand(0,2)],
            'phone'=>'0'.fake()->numerify('#########'),
            'mail'=>fake()->firstName()."@gmail.com",
            'dob'=>fake()->date()
        ];
    }
}
