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
            $table->dateTime('start_meeting');
            $table->dateTime('end_meeting');
            $table->integer('package_id')->unsigned();
            $table->integer('user_id')->unsigned();
            $table->integer('doctor_id')->unsigned();
            $table->string('status');
            $table->string('google_meet_id', 500);
            $table->text('problem');

            $table->foreign('package_id')
                ->references('id')
                ->on('packages')
                ->onDelete('cascade')
                ->onUpdate('cascade');

            $table->foreign('user_id')
                ->references('id')
                ->on('users')
                ->onDelete('cascade')
                ->onUpdate('cascade');

            $table->foreign('doctor_id')
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
