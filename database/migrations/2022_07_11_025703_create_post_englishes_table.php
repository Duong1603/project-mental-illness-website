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
        Schema::create('post_englishes', function (Blueprint $table) {
            $table->increments("id");
            $table->string('title',500);
            $table->text('content');
            $table->string('image',500);
            $table->enum('status',array('show','hidden'));
            $table->integer('emotion');
            $table->integer('id_category');
            $table->foreign('id_category')
            ->reference('id')
            ->on('categories')
            ->onDelete('cascade')
            ->onUpdate('cascade');
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
        Schema::dropIfExists('post_englishes');
    }
};
