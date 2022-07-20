@extends ('front.Layouts.master')
@section ('title',$article->title)
@section ('bg',$article->image)
@section ('content')
        <!-- Main Content-->
@include ('front.widgets.categorywidgets')

      <div class="col-md-8 mx-auto">
          <article>
              <div class="col-md-10  ">
                    <img class="img-thumbnail" src ="{{$article->image}}">
                        {!!$article->content!!}
                        <!--divli olaylar varsa yazımızda bunu yaparak çözebiliriz.-->
              </div>
        </article>
          </div>
        <span class="text-info">Okunma sayısı: <b>{{$article->hit}}</b></span>

@endsection
