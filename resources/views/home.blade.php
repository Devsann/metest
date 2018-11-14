@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Dashboard</div>

                <div class="panel-body">
                    <or>
                        <li>{{Auth::user()->karaoke->ktvName}},{{Auth::user()->karaoke->licenseID}},
                            {{Auth::user()->karaoke->licenseOwner}},{{Auth::user()->karaoke->ktvRoomTotal}}</li>
                        <li>{{Auth::user()->karaoke->person->personName}}</li>
                    </or>

                </div>
            </div>
        </div>
    </div>
</div>
@endsection
