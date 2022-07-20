<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
      //seeder tablomuzu çağırdık.
      $this->call(CategorySeeder::class);
      $this->call(aricleseeder::class);
      $this->call(PageSeeder::class);
      $this->call(AdminSeeder::class);
    }
}
