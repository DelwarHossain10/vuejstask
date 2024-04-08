<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class purchaseModel extends Model
{
    //

    public function product(){
        return $this->belongsTo(productModel::class,'product_id','id');
    }
    public function customer(){
        return $this->hasMany(customerModel::class,'purchase_id','id');
    }
}
