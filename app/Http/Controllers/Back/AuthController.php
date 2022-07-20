<?php

namespace App\Http\Controllers\Back;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

use App\Models\Admin;
use Illuminate\Support\Facades\Auth;

class AuthController extends Controller
{
  public function login(){
    return view('back.auth.login');

  }
  public function logout()
  {
      Auth::logout();
      return redirect()->route('admin.login');
  }
  public function loginpost(Request $request){
  //dd($request->post());

$email = $request->input('email');
$password = $request->input('password');

$user = Admin::where('email', $request->email)->first();

//if ($user->email == $email ) { //return "sss"; die; //} bu bycrpt kullanmadan yapılan giriş.
    if (Auth::attempt(['email'=> $request->email , 'password' => $request -> password]))//bunu kullanmak için bycrpt kullanmak gerek seederda.
   {
      return redirect()->route('admin.dasboard');
      //return "basarili"; die;

   }
   else{
   return redirect()->route('admin.login')->withErrors('Bir yanlışlık oldu.');
    }
    //dd($email,$password);
  //return $request->email;

  }


}
