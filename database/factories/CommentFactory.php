<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;


class CommentFactory extends Factory
{
    public function definition()
    {
        return [
            'content' => fake()->paragraph(),
            'post_id' => rand(1, 10),
            'user_id' => rand(1, 10)
        ];
    }
}
