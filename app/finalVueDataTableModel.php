<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class finalVueDataTableModel extends Model
{
   
    protected $fillable = [
       'name',
       'address',
       'phone',
       'quantity',
       'product',
       'amount',
       'status',
    ];

  
}
