<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateKaraokesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('karaokes', function (Blueprint $table) {
            $table->increments('ktvID');
            $table->string('ktvName');
            $table->string('licenseID');
            $table->string('licenseOwner');
            $table->string('ktvRoomTotal');
            $table->integer('userID');
            $table->integer('personID');
            $table->integer('addressID');
            $table->string('phone1');
            $table->string('phone2');
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
        Schema::dropIfExists('karaokes');
    }
}
