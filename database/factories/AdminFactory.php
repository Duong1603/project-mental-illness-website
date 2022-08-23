<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Admin>
 */
class AdminFactory extends Factory
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
            'password'=> '$2y$10$gUayCGNiF9STPHC16MhUBOusbUfN8fbpACXngCkh77lyVog1KyWAG',
            'account'=> 'admin@gmail.com',
            'reset_password_token' => ' ',
        ];
    }
}
