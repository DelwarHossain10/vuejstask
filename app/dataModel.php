<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class dataModel extends Model
{
    //
    protected $fillable = [
        'name',
        'address',
        'phone',
        'quantity',
        'product',
        'amount',
    ];
}
