<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class CategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        \App\Models\Category::factory(10)->create();
        \App\Models\Post::factory(10)->create();
        \App\Models\User::factory(100)->create();
        \App\Models\Comment::factory(10)->create();

        \App\Models\Contact::factory(100)->create();

        \App\Models\Package::factory(3)->create();
        \App\Models\Doctor::factory(2)->create();
        \App\Models\Order::factory(10)->create();
        \App\Models\Booking::factory(10)->create();

        \App\Models\Role::factory(2)->create();
        \App\Models\UsersRole::factory(10)->create();

        // \App\Models\Admin::factory(2)->create();

    }
}
