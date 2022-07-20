<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class CategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
      $categories=['Eğlence','Bilişim','Teknoloji','Spor','Gündem','Yaşam'];
    foreach ($categories as $category) {
      // code...
    DB::table('categories')->insert([
      'name'=>$category,
      'slug'=>Str::slug($category), //laravel 8' de STR_Slug şeklinde kullanılmıyor.
      'created_at'=>now(),
      'updated_at'=>now()
    ]);
    }
}
}
