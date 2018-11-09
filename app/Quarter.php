<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Quarter extends Model
{
    protected $fillable=[
        'townshipID',
        'quarterName',
    ];

    public function address(){
        return $this->hasMany('App\Address','townshipID','townshipID');
    }

    public function township(){
        return $this->belongsTo('App\Township','townshipID','townshipID');
    }
}
