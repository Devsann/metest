@extends('main.master')
@section('title','Person Insert Form')
@section('content')
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                <div class="panel panel-default">
                    <div class="panel-heading">Person Insert Form</div>
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
                                    <label for="person_name" class="col-md-2 col-form-label">Person Name</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" id="person_name" name="person_name" placeholder="Person Name">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="id_card" class="col-md-2 col-form-label">Person ID Card</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" id="id_card" name="id_card" placeholder="ID Card">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="addressid" class="col-sm-2 col-form-label">Address ID</label>
                                    <div class="col-sm-10">
                                        <select name="addressid" class="form-control">
                                            @foreach($address as $address)
                                                <option value="{{$address->addressID}}" selected>
                                                    {{$address->addressID}} {{$address->noAddress}} {{$address->streedAddress}}
                                                </option>
                                                @endforeach
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="phone1" class="col-sm-2 col-form-label">Phone Number-1</label>
                                    <div class="col-sm-10">
                                        <input type="text" name="phone1" class="form-control" id="phone1" placeholder="phone number">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="phone2" class="col-sm-2 col-form-label">Phone Number-2</label>
                                    <div class="col-sm-10">
                                        <input type="text" name="phone2" class="form-control" id="phone2" placeholder="phone number-2">
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