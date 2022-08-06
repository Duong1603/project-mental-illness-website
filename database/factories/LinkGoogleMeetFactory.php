<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\LinkGoogleMeet>
 */
class LinkGoogleMeetFactory extends Factory
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
            'link_gg_meet'=> 'https://meet.google.com/cih-jscm-aip?authuser=0'
        ];
    }

}
