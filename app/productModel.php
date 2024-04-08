<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
;
class productModel extends Model
{
    //

    public function purchase(){
        return $this->hasMany(purchaseModel::class,'product_id','id');
    }

    public function customer(){
        return $this->hasManyThrough(customerModel::class, purchaseModel::class,'product_id','purchase_id','id','id');

    }
}
