<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Person extends Model
{
    protected $fillable=[
        'personName',
        'personIDCard',
        'addressID',
        'phone1',
        'phone2',
    ];

    public function karaoke(){
        return $this->hasMany('App\Karaoke','personID','personID');
    }
}
