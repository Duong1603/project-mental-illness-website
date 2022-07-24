<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Package;


class DetailSessionAPIController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        // dd(111);
        // return response()->json(["hi"=>1]);
        $package = Package::all();

        if($package) {            
            return response()->json(["status" => "200", "success" => true, "message" => "car record created successfully", "data" => $package]);
        }    
    else {
            return response()->json(["status" => "failed", "success" => false, "message" => "Whoops! failed to create."]);
    }
       
        // if (count($packages) > 0) {
        //     return response()->json(["status" => "200", "success" => true, "count" => count($packages), "data" => $packages]);
        // } else {
        //     return response()->json(["status" => "failed", "success" => false, "message" => "Whoops! no record found"]);
        // }

        // if ($user && $contact) {
        //     return response()->json(["status" => 200, "success" => true, "message" => "Thank for your submit we will connect you soon"]);
        // } else {
        //     return response()->json(["status" => "failed", "success" => false, "message" => "Whoops! failed to submit."]);
        // }
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
