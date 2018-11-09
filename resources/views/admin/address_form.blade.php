@extends('main.master')
@section('title','Address Insert Form')
@section('content')
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                <div class="panel panel-default">
                    <div class="panel-heading">Address Insert Form</div>
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
                                <label for="address_no" class="col-md-2 col-form-label">Address No</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="address_no" name="address_no" placeholder="Address No">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="street_address" class="col-sm-2 col-form-label">Street Address</label>
                                <div class="col-sm-10">
                                    <input type="text" name="street_address" class="form-control" id="street_address" placeholder="Street Address">
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="quarter_id" class="col-md-2 col-form-label">Quarter ID</label>
                                <div class="col-sm-10">
                                    <select name="quarter_id" class="form-control" multiple>
                                        @foreach($quas as $qua)
                                            <option value="{{$qua->quarterID}}" selected="selected">
                                                {{$qua->quarterID}} {{$qua->quarterName}}
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