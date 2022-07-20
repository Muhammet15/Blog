<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
  function articleCount(){

   //birden fazla data da olabilir olmayadabnilir o yüzden hasmany
   return $this->hasMany('App\Models\Article','category_id','id')->count();
               //bağlanıcağımız model //bağlanacağımız sutun  // bağlanılacak id
 }

}
