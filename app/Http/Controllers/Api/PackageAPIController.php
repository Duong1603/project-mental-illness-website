<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\PackageCollection;
use App\Http\Resources\PackageResource;
use App\Models\Package;
use Illuminate\Http\Request;
use Illuminate\Http\Response;

class PackageAPIController extends Controller
{
    // public function index()
    // {
    //     $packages = Package::all();
    //     return response()->json($packages, Response::HTTP_OK);
    // }
    public function index()
    {
        return new PackageCollection(Package::get());
    }

    public function show($id)
    {
        $result = Package::find($id);
        if ($result) {
            return new PackageResource($result);
        } else {
            return response()->json([ 'message' => "something is wrong"],status:404);
        }
    }
}