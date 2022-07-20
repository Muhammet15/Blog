@extends('back.layouts.master')
@section('title',$article->title. ' -  Makalesini güncelliyorsunuz.')
@section('content')
  <div class="card shadow mb-4">

      <div class="card-header py-3">
          <h6 class="m-0 font-weight-bold text-primary"><strong> Update Article </strong></h6>

      </div>

      <div class="card-body">
        <form  class="user" method="post" action="{{route('admin.makaleler.update',$article->id)}}" enctype="multipart/form-data">
          @method('PUT')
          @csrf
            <div class="form-group">
              <label>Article name</label>
                <input name="title" type="text" value="{{$article->title}}" class="form-control"></input>
            </div>
              <label>Select Category name</label>
            <div class="form-group">
                <select type="text" name="category"  class="form-control">
                  @foreach ($categories as $category)
                  <option @if ($article->category_id == $category -> id) selected

                  @endif value="{{$category->id}}">{{$category->name}} </optiom>
                  @endforeach
                </select>
            </div>
            <div class="form-group">
              <label>Article image Url.:</label> <label>{{$article->image}}</label><br>
                <input name="image" type="file"></input>
            </div>
            <div class="form-group">
              <label>Article</label> <br>
                <textarea  name="content" class="form-control"> {{$article->content}}  </textarea>
            </div>
            <button type="sumbit"  class="btn btn-primary btn-user btn-block">Edit</button>
            <hr>

        </form>
          </div>
      </div>
  </div>

</div>
@endsection
