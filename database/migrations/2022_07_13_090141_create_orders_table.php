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
        Schema::create('orders', function (Blueprint $table) {
            
            $table->increments('id');
            $table->integer('id_package')->unsigned();
            $table->integer('id_user')->unsigned();
            $table->integer('id_doctor')->unsigned();
    

            $table->foreign('id_package')
            ->references('id')
            ->on('packages')
            ->onDelete('cascade')
            ->onUpdate('cascade');

            $table->foreign('id_user')
            ->references('id')
            ->on('users')
            ->onDelete('cascade')
            ->onUpdate('cascade');

            $table->foreign('id_doctor')
            ->references('id')
            ->on('doctors')
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
        Schema::dropIfExists('orders');
    }
};
