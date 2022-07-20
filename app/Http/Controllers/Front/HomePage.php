<?php

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Validator;
use App\Models\Category;
use App\Models\Article;
use App\Models\Page;

use App\Models\Contact;
use Mail;


class HomePage extends Controller
{

  public function __construct(){//her fonksiyonda yazmaktansa şöyle     $data['pages']=Page::orderBy('order','ASC')->get(); tek bir share komutu ile __constructer fonksiytonu içerinsde paylaştık
    view()->share('pages',$data['pages']=Page::orderBy('order','ASC')->get());
  }

    public function index()
    {
      $data['articles']=Article::orderBy('created_at','DESC')->paginate(2);//get() vardıama şimdi sayfalandırmak için paginate kullandık
      $data['categories']=Category::inRandomOrder()->get();

      return view('Front.homepage',$data);
    }
    public function single($category,$slug)
    {
      $article=Article::whereSlug($slug)->first() ?? abort(403,'Böyle bir yazı bulunamadı'); //laravel abort özelliğini kulalndık
                    //veya where('slug',$slug) // kullanılmasıu gerek :  whereCategoryId($category->id)->
      $category=Category::whereSlug($category)->first() ?? abort(403,'Böyle bir kategori bulunamadı');
      $article->increment('hit');
      $data['article']=$article;
      $data['categories']=Category::inRandomOrder()->get();

      return view('front.single',$data);

    }
    public function category($slug)
      {
      $category=Category::whereSlug($slug)->first() ?? abort(403,'Böyle bir yazı bulunamadı');
      $data['category']=$category;
      $data['articles']=Article::where('category_id',$category->id)->orderBy('created_at','DESC')->paginate(1);
      $data['categories']=Category::inRandomOrder()->get();

      return view('front.category',$data);

      }
      public function page($slug)
        {
          $page=Page::whereSlug($slug)->first() ?? abort(403,'Böyle bir sayfa bulunamadı');
          $data['pages']=Page::orderBy('order','ASC')->get();
          $data['page']=$page;
          return view('front.page',$data);
        }

        public function contact(){
            return view('front.contact');
        }
        public function contactpost(Request $request){

  /*   print_r($request->post());
   */
          $rules=[
            'name'=>'required|min:5',
            'email'=>'required|email',
            'topic'=>'required',
            'message'=>'required|min:3'
          ];

          $validate= Validator::make($request->post(),$rules);
          if ($validate->fails()) { //errorstu normalde ama errros boşda olsa true değeri dömndürcüğü için akytdetme yapamadık
                        return redirect()->route('contact')->withErrors($validate)->withInput();
          }

          // Mail işlemleri için env dosyasında değişikjlik yapıp artık kodlarımızı yazıoyruz
          Mail::send([],[],function($message) use($request){
            $message->from('muhammetluna@gmail.com','Blog Sitesi');
            $message->to('kayacan@2u.chat');
          //  $message->cc('iletisim@blogsitesii.com');
            $message->setBody('<strong>Mesajı Gönderen isim :</strong> '.$request->name.'<br/>
                    <strong>  Mesajı Gönderen Mail  :</strong>'.$request->email . '<br/>
                    <strong>  Mesaj Konusu : </strong>'.$request->topic.'<br/>
                    <strong>  Mesaj : </strong>'. $request->message. '<br/>
                    <strong>  Mesaj Gönderilme Tarihi : </strong> '.now().'','text/html');
            $message->subject($request -> name.' adlı kullanıcı Blog sitesi iletişimden kısmından mesaj gönderdi');
          });

          //veritabanı kayıt için
          $contact= new Contact;
          $contact->name=$request->name;
          $contact->email=$request->email;
          $contact->topic=$request->topic;
          $contact->message=$request->message;
          $contact->save();

          return redirect()->route('contact')->with('success','Mesajınız iletildi. Teşekkürler..');

        }
}
