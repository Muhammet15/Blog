  @if(count($articles)>0)
@foreach ($articles as $article)

            <!-- Post preview-->
            <div class="post-preview">
                <a href="{{route('single',[$article->getCategory->slug,$article->slug])}}">
                    <h2 class="post-title">{{$article->title}}</h2>
                    <img src="{{$article->image}}"

                      <h3 class="post-subtitle">{{Str::limit($article->content,45,$end='.......')}}</h3>
                <p class="post-meta"> Kategori:
                    <a href="#">{{$article->getCategory->name}}</a>
              <span class="float-right">    {{$article->created_at->diffforHumans()}}  </span>

                </p>
            </div>

            @if($loop->first)
<hr>
          @endif
        @endforeach


{{$articles->links("pagination::bootstrap-4")}}
@else
  <div class="alert alert-info">
      <h1> Bu kategoriye ait yazı yok</h1>
          </div>
        @endif
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
