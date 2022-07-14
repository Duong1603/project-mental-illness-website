<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('posts', function (Blueprint $table) {
                // $table->increments('id');
                // $table->increments('name');
                // $table->increments('discription');
                // $table->increments('image');
                $table->increments('id');           
                $table->string('title');           
                $table->string('image');
                // $table->date('post_on');
                // $table->string('action');
                $table->text('content');
                // $table->string('status');
                $table->timestamps();
            });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('posts');
    }
};
