<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Karaoke extends Model
{
    protected $fillable=[
        'ktvName',
        'licenseID',
        'licenseOwner',
        'ktvRoomTotal',
        'userID',
        'addressID',
        'personID',
        'phone_one',
        'phone_two',
    ];

    public function user(){
        return $this->belongsTo('App\User');
    }

    public function person(){
        return $this->belongsTo('App\Person','personID','personID');
    }

    public function address(){
        return $this->belongsTo('App\Address','addressID','addressID');
    }
}
