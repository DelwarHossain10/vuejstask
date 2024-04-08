<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\dataModel;
use App\User;
class crudOperationController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }


    public function editData($id){

   
        return dataModel::find($id);
       

    }


    public function updateData(Request $request){
        dataModel::where('id',$request->id)->update($request->except(['_token','_method','created_at','created_at','updated_at']));
        return $request;
    }

    public function insertData(Request $request){
        
        dataModel::create($request->all());
        return $request;
    }

    public function deleteData($id){

     
        $user = dataModel::find($id);
        $user->delete();
        return response()->json('user deleted!');

    }

    public function totalData()
    {
        return dataModel::get();
        
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
