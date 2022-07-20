<?php

namespace App\Http\Controllers\Back;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use Illuminate\Support\Str;
use Illuminate\Support\Facades\Http;
use App\Models\Article;
use App\Models\Category;

class ArticleController extends Controller
{
    /** RESOURCE YAZARAK HAZIR OLARAK OLUŞTURDUK PHP ARTİSAN MAKE:CONTROLLER İSİM --RESOURCE
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $articles = Article::orderBy('created_at','ASC')->get();
        return view('back.articles.index',compact('articles')); //compact kuallndık burada
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $categories = Category::all();
        return view('back.articles.create',compact('categories'));//direk o sayfada algılaması için comöpact
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
      $article=new Article;
      $article ->title=$request->title;
      $article ->category_id=$request->category;
      $article ->content =$request->content;
      $article ->slug =Str::slug($request->title);
      //dd($request->post());

      //resim için önce upload edilmeli
      if($request->hasFile('image'))
      {
      $imageName=Str::slug($request->title).'.'.$request->image->getClientOriginalExtension();
      $request->image->move(public_path('uploads'),$imageName);
      $article ->image ='uploads/'.$imageName;
    }
       //dd ($imageName);
       $article->save();

       return redirect()->route('admin.makaleler.index');
    }


    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
        return $id;
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
      $article=Article::findOrFail($id);// if article null m işlemi yapar

      $categories=Category::all();

            return view('back.articles.update',compact('categories','article'));
            }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {

        $article=Article::findOrFail($id);
        $article ->title=$request->title;
        $article ->category_id=$request->category;

        $article ->content =$request->content;
        $article ->slug =Str::slug($request->title);
        //dd($request->post());

        //resim için önce upload edilmeli
        if($request->hasFile('image'))
        {
        $imageName=Str::slug($request->title).'.'.$request->image->getClientOriginalExtension();
        $request->image->move(public_path('uploads'),$imageName);
        $article ->image ='uploads/'.$imageName;
      }
         //dd ($imageName);
         $article->save();

         return redirect()->route('admin.makaleler.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
         Article::find($id)->delete();
         return redirect()->route('admin.makaleler.index');
    }
}
