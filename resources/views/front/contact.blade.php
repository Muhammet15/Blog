@extends ('front.Layouts.master')
@section ('title','Anasayfa')

@section ('content')
        <!-- Main Content-->


@if (session('success'))
  <div class="aler alert-success">
    {{session('success')}}
  </div>
@endif

@if ($errors->any())
  <div class="aler alert-danger">
    <ul>
      @foreach ($errors->all() as $error)
        <li>{{$error}}</li>
      @endforeach
    </ul>
  </div>
@endif


<main class="mb-4">
    <div class="container px-4 px-lg-5">
        <div class="row gx-4 gx-lg-5 justify-content-center">
            <div class="col-md-10 col-lg-8 col-xl-7">

                <div class="my-5">

                    <form method="post" action="{{route('contact.post')}}">
                      @csrf
                        <div class="form-floating">
                            <input class="form-control" name="name" type="text" value="{{old('name')}}" placeholder="Enter your name..." data-sb-validations="required" />
                            <label for="name">Name</label>
                            <div class="invalid-feedback" data-sb-feedback="name:required">A name is required.</div>
                        </div>
                        <div class="form-floating">
                            <input class="form-control" value="{{old('email')}}" name="email" type="email" placeholder="Enter your email..." data-sb-validations="required,email" />
                            <label for="email">Email address</label>
                            <div class="invalid-feedback" data-sb-feedback="email:required">An email is required.</div>
                            <div class="invalid-feedback" data-sb-feedback="email:email">Email is not valid.</div>
                        </div>

<br>
                          <label> About</label>
                            <select class="form-control" name="topic" aria-label="Default select example">

                              <option @if(old('topic')=="Laravel")  selected @endif >Laravel</option>
                              <option @if(old('topic')=="Destek") selected @endif>Destek</option>
                              <option @if(old('topic')=="Genel") selected @endif>Genel</option>
                            </select>

                        <div class="form-floating">
                            <textarea class="form-control" name="message" placeholder="Enter your message here..." style="height: 12rem" data-sb-validations="required">{{old('message')}}</textarea>
                            <label for="message">Message</label>
                          </div>
                        <br />

                        <!-- Submit Button-->
                        <button class="btn btn-primary" id="submitButton" type="submit">Send</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</main>
@endsection
