<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Address extends Model
{
    protected $fillable=[
      'quarterID',
      'noAddress',
      'streetAddress',
    ];

    public function karaoke(){
        return $this->hasOne('App\Karaoke');
    }

    public function quarter(){
        return $this->belongsTo('App\Quarter','quarterID','quarterID');
    }
}
