@extends('main.master')
@section('title','Quarter Insert Form')
@section('content')
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                <div class="panel panel-default">
                    <div class="panel-heading">Quarter Insert Form</div>
                    <div class="panel panel-body">
                        <form method="post">
                            @foreach($errors->all() as $error)
                                <p class="alert alert-danger">{{$error}}</p>
                                @endforeach
                            @if(session('status'))
                                <p class="alert alert-success">{{session('status')}}</p>
                                @endif
                            <input type="hidden" name="_token" value="{{csrf_token()}}">
                            <div class="form-group row">
                                <label for="quarter_name" class="col-md-2 col-form-label">Quarter Name</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="quarter_name" name="quarter_name" placeholder="Quarter Name">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="township_id" class="col-md-2 col-form-label">Township ID</label>
                                <div class="col-sm-10">
                                    <select name="township_id" class="form-control" multiple>
                                        @foreach($town as $towns)
                                            <option value="{{$towns->townshipID}}" selected="selected">
                                                {{$towns->townshipID}} {{$towns->townshipName}}
                                            </option>
                                        @endforeach
                                    </select>
                                </div>

                            </div>

                            <div class="form-group row">
                                <div class="col-sm-10 col-md-offset-2">
                                    <button type="submit" class="btn btn-primary" name="create">Insert Now</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    @endsection