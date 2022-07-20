@extends ('front.Layouts.master')
@section ('title',$page->title)
@section ('bg',$page->image)
@section ('content')
        <!-- Main Content-->
@include ('front.widgets.categorywidgets')

      <div class="col-md-8 mx-auto">

            <p>{{$page->content}}</p>
        

      </div>

@endsection
