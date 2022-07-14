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
        Schema::create('bookings', function (Blueprint $table) {

            $table->increments('id');
            $table->dateTime('start_meeting');
            $table->dateTime('end_meeting');
            $table->text('problem');
            $table->enum('status',array('will do','doing','done'));
            $table->string('link_gg_meet',500);
            $table->integer('order_id')->unsigned();
            $table->foreign('order_id')
            ->references('id')
            ->on('orders')
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
        Schema::dropIfExists('bookings');
    }
};
