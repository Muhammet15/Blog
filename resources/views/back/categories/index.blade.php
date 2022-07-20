@extends('back.layouts.master')
@section('title','All Articles')
@section('content')

  <div class="card shadow mb-4">

      <div class="card-header py-3">
          <h6 class="m-0 font-weight-bold text-primary"><strong> Create Article </strong></h6>

      </div>

      <div class="card-body">
        <form  class="user" method="post" action="{{route('admin.makaleler.store')}}" enctype="multipart/form-data">
          @csrf
            <div class="form-group">
              <label>Article name</label>
                <input name="title" type="text" class="form-control" required></input>
            </div>
            <button type="sumbit"  class="btn btn-primary btn-user btn-block">Create</button>
            <hr>

        </form>
          </div>
      </div>
  </div>

</div>
@endsection
