<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class crudOperationModel extends Model
{
    
            protected $fillable = [
                'name',
                'address',
                'phone',
                'quantity',
                'product',
                'amount',
            ];
        
}
