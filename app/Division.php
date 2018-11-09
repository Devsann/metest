<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Division extends Model
{
    protected $fillable=[
      'divisionName',
    ];

    public function township(){
        return $this->hasMany('App\Township');
    }
}
