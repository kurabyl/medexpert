<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateObjDetailExpertiseTypeTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('obj_detail_expertise_type', function (Blueprint $table) {
            $table->id();
            $table->integer('objectdetail_id');
            $table->binary('type_expertise');
            $table->binary('type_isled');
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
        Schema::dropIfExists('obj_detail_expertise_type');
    }
}
