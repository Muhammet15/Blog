<?php

use Illuminate\Support\Facades\Route;



Route::group(['namespace' => 'App\Http\Controllers'], function()
{


  //GİRİŞ YAPTIYSA TEKRAR GİRİŞ YAPAMAZ VE ÇIKMADAN ÇIKAMAZ
    Route::prefix('admin')->name('admin.')->middleware('isLogin')->group(function(){
      Route::get('/login','Back\AuthController@login') -> name('login');
      Route::post('/login','Back\AuthController@loginpost') -> name('login.post');

    });

//GİRİŞ YAPMADAN PANALE ULAŞAMAZ
    Route::prefix('admin')->name('admin.')->middleware('isAdmin')->group(function(){
      Route::get('/panel','Back\Dashboard@index') -> name('dasboard');
      Route::resource('/makaleler','Back\ArticleController');
      Route::get('/cikis','Back\AuthController@logout') -> name('logout');
      Route::get('/kategoriler','Back\CategoryController@index') -> name('kategoriler');

    });
});


/*
|--------------------------------------------------------------------------
| front Routes
|--------------------------------------------------------------------------
|
*/

Route::group(['namespace' => 'App\Http\Controllers'], function()
{
  
    Route::view('/css', 'front.begendigimcssler.guzellikler');
Route::get('/','Front\HomePage@index') -> name('homepage');
Route::get('/iletisim','Front\HomePage@contact') -> name('contact');
Route::post('/iletisim','Front\HomePage@contactpost') -> name('contact.post');
Route::get('/kategori/{slug}','Front\HomePage@category') -> name('category');
Route::get('/{category}/{slug}','Front\HomePage@single') -> name('single');
Route::get('/{sayfa}','Front\HomePage@page') -> name('page');

});

/*
|--------------------------------------------------------------------------
| backend Routes
|--------------------------------------------------------------------------
|
*/
