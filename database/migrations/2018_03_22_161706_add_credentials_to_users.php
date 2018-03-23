<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddCredentialsToUsers extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('users', function ($table) {
            $table->string('forename')->nullable();
            $table->string('lastname')->nullable();
            $table->string('street')->nullable();
            $table->string('streetnumber')->nullable();
            $table->string('zipcode')->nullable();
            $table->string('place')->nullable();
            $table->integer('telephone')->nullable();
            $table->enum('level', ['0', '1', '2', '3', '4'])->nullable();	
            $table->boolean('enabled')->nullable();	
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('users', function ($table) {
            $table->dropColumn('forename');
            $table->dropColumn('lastname');
            $table->dropColumn('street');
            $table->dropColumn('streetnumber');
            $table->dropColumn('zipcode');
            $table->dropColumn('place');
            $table->dropColumn('telephone');
            $table->dropColumn('level');	
            $table->dropColumn('enabled');	
        });
    }
}
