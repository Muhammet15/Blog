@extends('back.layouts.master')
@section('title','All Articles')
@section('content')

  <div class="card shadow mb-4">

      <div class="card-header py-3">
          <h6 class="m-0 font-weight-bold text-primary"><strong> {{$articles->count()}} Article Founds.</strong></h6>

      </div>

      <div class="card-body">

          <div class="table-responsive">
              <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                      <tr>
                          <th>Photo</th>
                          <th>Category</th>
                          <th>Tittle</th>
                          <th>Content</th>
                          <th>Read Count</th>
                          <th>Created_at</th>
                          <th>Updated_at</th>
                          <th>İşlemler</th>

                      </tr>
                  </thead>
                  <tbody>
                    @foreach ($articles as $article)
                      <tr>
                        <td><img src="{{$article->image}}" width="200"></imh></td>
                          <td>{{$article->title}}</td>
                          <td>{{$article->getCategory->name}}</td>
                          <td>{{$article->content}}</td>
                          <td>{{$article->hit}}</td>
                          <td>{{$article->created_at}}</td>
                          <td>{{$article->updated_at}}</td>
                          <td><a href="" class="btn btn-sm btn-success">Görüntüle<i class="fa fa-eye" ></i></a>
                            <a href="{{route('admin.makaleler.edit',$article->id)}}" class="btn btn-sm btn-info">Düzenle<i class="fa fa-pen"></i></a>
                            <form method="post" action="{{route('admin.makaleler.destroy',$article->id)}}">
                              @csrf
                              @method('DELETE')

                            <button href="" type="sumbit" class="btn btn-sm btn-danger">Sil<i class="fa fa-times"></i></button></td>
                            </form>



                      </tr>
                    @endforeach

                  </tbody>
              </table>
          </div>
      </div>
  </div>

</div>
@endsection
