<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Smalot\PdfParser\Parser;

class phpdDeveloperTaskController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function submitData(Request $request)
    {
        //
        request()->validate([
            'file'  => 'required|mimes:pdf|max:2048',
          ]);

         
     
          $file = $request->file;
     
           if ($files = $request->file('file')) {
                   
          
            $fileName = $file->getClientOriginalName();
    
            $pdfParser = new Parser();
            $pdf = $pdfParser->parseFile($file->path());
           
            $data= $pdf->getText();

        //    dd($data);
           
           
            preg_match_all("/\d{2}\/\d{2,}\s\(\d{2,}\/\d{2,}\)\*/i",$data,$arraySizes);
            preg_match_all("/\d{4,}[-]\d+/i",$data,$arrayOrderNo);
            preg_match_all("/(?<=\n\s\n)\d{1,9}(?=\n\s\n)/i",$data,$arrays);

          preg_match_all("/(?<=\)\*\n\s\s)\d{2,}/i",$data,$arrayQuantitys);


            $Suplierno=isset($arrays[0][0]);

            $Orderno=$arrayOrderNo[0][0];
            $arrayQuantity1=[];
            foreach ($arrayQuantitys as $arrayQuantity) {
               
                $arrayQuantity1=$arrayQuantity;
            }
            $arraySize1=[];

            foreach ($arraySizes as $arraySize) {      
                $arraySize1=$arraySize;
            }
           
            $arraySize1 = array_slice($arraySize1, 0, count($arraySize1)/2);
            $arrayQuantity1 = array_slice( $arrayQuantity1,0,count($arrayQuantity1)/2);
          


           // $totalDataArray = array_combine($arraySize1,$arrayQuantity1);
           // return $totalDataArray;
           // return response()->json($arraySize1);
           // return $totalDataArray; 
           return response()->json(['arraySize' => $arraySize1, 'arrayQuantity' =>$arrayQuantity1,'Suplierno'=>$Suplierno,'Orderno'=>$Orderno]);
           }
    }
    public function index()
    {
        //
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
