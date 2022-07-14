<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

use Illuminate\Support\Str;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\PostEnglish>
 */
class PostEnglishFactory extends Factory
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
            'title'=> fake()->name(),
            'content'=> fake()->name(),
            'image'=> rand(1,3).".jpg",
            'status'=> fake()->randomElement(['show','hidden']),
            'emotion'=>rand(1,1000),
            'category_id'=> rand(1,10)
        ];
    }
}
