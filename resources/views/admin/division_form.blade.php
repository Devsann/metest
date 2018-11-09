@extends('main.master')
@section('title','Division Insert Form')
@section('content')
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                <div class="panel panel-default">
                    <div class="panel panel-heading">Division Insert Form</div>
                    <div class="panel-body">
                        <form method="post">
                            @foreach($errors->all() as $error)
                                <p class="alert alert-danger">{{$error}}</p>
                            @endforeach

                            @if(session('status'))
                                <p class="alert alert-success">{{session('status')}}</p>
                            @endif

                            <input type="hidden" name="_token" value="{{csrf_token()}}">

                            <div class="form-group row">
                                <label for="division_name" class="col-md-2 col-form-label">Division Name</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="division_name" name="division_name" placeholder="division_name">
                                </div>
                            </div>

                            <div class="form-group row">
                                <div class="col-sm-10 col-md-offset-2">
                                    <button class="btn btn-primary" name="create">Insert Now</button>
                                </div>
                            </div>
                        </form>

                    </div>
                </div>
            </div>
        </div>
    </div>
    @endsection