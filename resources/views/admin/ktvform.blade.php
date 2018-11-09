@extends('main.master')
@section('title','KTV Form')

@section('content')
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                <div class="panel panel-default">
                    <div class="panel panel-heading">KTV Insert Form</div>
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
                                <label for="ktv_name" class="col-md-2 col-form-label">KTV Name</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="ktv_name" name="ktv_name" placeholder="KtvName">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="license_id" class="col-sm-2 col-form-label">License ID</label>
                                <div class="col-sm-10">
                                    <input type="text" name="license_id" class="form-control" id="license_id" placeholder="licenseID">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="license_owner" class="col-sm-2 col-form-label">License Owner</label>
                                <div class="col-sm-10">
                                    <input type="text" name="license_owner" class="form-control" id="license_owner" placeholder="license Owner">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="ktv_room_total" class="col-sm-2 col-form-label">KTV Room Total</label>
                                <div class="col-sm-10">
                                    <input type="text" name="ktv_room_total" class="form-control" id="ktv_room_total" placeholder="ktvroomtotal">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="user_id" class="col-md-2 col-form-label">User ID</label>
                                <div class="col-sm-10">
                                    <select name="user_id" class="form-control">
                                        @foreach($users as $user)
                                            <option value="{{$user->id}}">
                                                {{$user->id}} {{$user->name}}
                                            </option>
                                            @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="person_id" class="col-sm-2 col-form-label">PersonID</label>
                                <div class="col-sm-10">
                                    <select name="person_id" class="form-control">
                                        @foreach($person as $person)
                                            <option value="{{$person->personID}}">
                                                {{$person->personID}} {{$person->personName}}
                                            </option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="address_id" class="col-sm-2 col-form-label">Address ID</label>
                                <div class="col-sm-10">
                                    <select name="address_id" class="form-control">
                                        @foreach($address as $address)
                                            <option value="{{$address->addressID}}">
                                            {{$address->addressID}} {{$address->noAddress}} {{$address->streetAddress}}
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

                            {{--<div class="form-group row">--}}
                                {{--<label for="phone1" class="col-sm-2 col-form-label">Phone Number-1</label>--}}
                                {{--<div class="col-sm-10">--}}
                                    {{--<select name="phone1" class="form-control">--}}
                                        {{--@foreach($person as $person)--}}
                                            {{--<option value="{{$person->personID}}">--}}
                                                {{--{{$person->phone1}}--}}
                                            {{--</option>--}}
                                            {{--@endforeach--}}
                                    {{--</select>--}}
                                {{--</div>--}}
                            {{--</div>--}}
                            {{--<div class="form-group row">--}}
                                {{--<label for="phone2" class="col-sm-2 col-form-label">Phone Number-2</label>--}}
                                {{--<div class="col-sm-10">--}}
                                    {{--<select name="phone1" class="form-control">--}}
                                        {{--@foreach($person as $person)--}}
                                            {{--<option value="{{$person->phone2}}">--}}
                                                {{--{{$person->phone2}}--}}
                                            {{--</option>--}}
                                        {{--@endforeach--}}
                                    {{--</select>--}}
                                {{--</div>--}}
                            {{--</div>--}}

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