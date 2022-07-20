<?php

namespace Database\Seeders;
use Illuminate\Database\Seeder;


use Faker\Factory as Faker;
use DB;
use Illuminate\Support\FacedesDB;
use Illuminate\Support\Str;

class articleseeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {

      $faker =Faker::create();
        for($i=0;$i<4;$i++){
          $title=$faker->sentence(6);
          DB::table('articles')->insert([
            'category_id'=>rand(1,7),
            'title'=>$title,
            'image'=>$faker->imageUrl(800,400,'cats',true,'Laravel başlangıç'),
            'content'=>$faker->paragraph(6),
            'slug'=>Str::slug($title), //laravel 8' de STR_Slug şeklinde kullanılmıyor.
            'created_at'=>$faker-> dateTime('now'),
            'updated_at'=>now()
          ]);
        }
    }
}
