<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Township extends Model
{
    protected $fillable=[
        'divisionID',
        'townshipName',
    ];

    public function quarter(){
        return $this->hasMany('App\Quarter');
    }

    public function division(){
        return $this->belongsTo('App\Division','divisionID','divisionID');
    }
}
