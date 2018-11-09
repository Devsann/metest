@extends('main.master')
@section('title','Song Insert Form')
@section('content')
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                <div class="panel panel-default">
                    <div class="panel-heading">Song Insert Form</div>
                    <div class="panel-body">
                        <form method="post">
                            @foreach($errors->all() as $error)
                                <p class="alert alert-danger">{{$error}}</p>
                                @endforeach
                                <input type="hidden" name="_token" value="{{csrf_token()}}">
                            <div class="form-group row">
                                <label for="song_name" class="col-md-2 col-form-label">Song Title / Name</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="song_name" name="song_name" placeholder="Song Title / Name">
                                </div>
                            </div>
                            <div class="form-group row">
                                <div class="col-sm-10 col-md-offset-2">
                                    <button type="submit" class="btn btn-primary">Insert Now</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    @endsection