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
            'title' => fake()->name(),
            'content' => fake()->name(),
            'image' => rand(1, 3) . ".jpg",
            'status' => fake()->randomElement(['show', 'hidden']),
            'emotion' => rand(1, 1000),
            'id_category' => rand(1, 10),
            'tag'=> 'pnv staff check'
        ];
    }
}
