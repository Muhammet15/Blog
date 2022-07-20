<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class Articles extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('articles', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedBigInteger('category_id');//ilişkili tablo oldugundan dolayı unsignedInteger girdik
            $table->string('title');
            $table->longText('content');
            $table->string('image');
            $table->Integer('hit') ->default(0);

            $table->string('slug');
            $table->timestamps();

            $table -> foreign('category_id') -> references('id') -> on('categories');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('articles');
    }
}
