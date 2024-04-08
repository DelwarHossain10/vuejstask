<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class customerModel extends Model
{
     public function purchase(){
        return $this->belongsTo(purchaseModel::class,'purchase_id','id');
    }
}
