<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\customerModel;
use App\productModel;
use App\purchaseModel;
use App\finalVueDataTableModel;
use PHPUnit\Framework\Constraint\Count;

class customerController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
   
$customer=customerModel::whereHas('purchase',function($q){
    return $q->whereNotNull('address');
       })->get();

  foreach($customer as $customers){
  
    $dataCheck2 =[
       'name'=> $customers->name,
       'address'=>  $customers->purchase->address,
       'phone'=> $customers->phone,
       'quantity'=>  $customers->purchase->qantity,
       'product'=>  $customers->purchase->product->name,
       'amount'=>  $customers->purchase->amount,
       'status'=>  'no'
    ];
    $dataCheck[] =$dataCheck2;
       
     };

 return  $dataCheck;
  
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    public function submitData(Request $request,$id)
    {
      for($i=0;$i<$id;$i++){
           finalVueDataTableModel::create([
                'name'=> $request[$i]['name'],
                'address'=>$request[$i]['address'],
                'phone'=> $request[$i]['phone'],
                'quantity'=>$request[$i]['quantity'],
                'product'=>$request[$i]['product'],
                'amount'=>$request[$i]['amount'],
                'status'=>$request[$i]['status']
             ]);
    };
    return "Successfully Done!";
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
