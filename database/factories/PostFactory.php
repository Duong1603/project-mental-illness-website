<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Post>
 */
class PostFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            //

            // 'name' => $this->faker->name(),
            // 'discription' => $this->faker->paragraph(),
            // 'image' =>''.rand(1,5).'.jpg',

            'title' => $this->faker->name(),
            'image' => ''.rand(1,5).'.jpg',
            // 'post_on' =>now(),
            // 'action' => $this->faker->name(),
            'content' => $this->faker->name(),
            // 'status' => $this->faker->name(),
        ];
    }
}
