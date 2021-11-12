<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateValidadorTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('validador', function (Blueprint $table) {
            $table->id();
            $table->string('nome');
            $table->string('url');
            $table->string('status_code')->nullable();
            $table->string('resposta')->nullable();
            $table->timestamp('url_verified_at')->nullable();
            $table->integer('user_id');
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
        Schema::dropIfExists('validador');
    }
}
