<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use DB;
use Illuminate\Support\FacedesDB;

class AdminSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
      DB::table('Admins')->insert([
        'name'=>'Muhammmet',
        'email'=>'muhammedkayacan3@gmail.com',
        'password'=>bcrypt('test')
      ]);
    }
}
