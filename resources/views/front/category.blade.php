@extends ('front.Layouts.master')

@section ('title',$category->name.' Kategorisi|'. count($articles))

@section ('content')
        <!-- Main Content-->

        @include ('front.widgets.categorywidgets')

<div class="col-md-8 mx-auto">
@include('front.widgets.articlelist')
</div>
@endsection
