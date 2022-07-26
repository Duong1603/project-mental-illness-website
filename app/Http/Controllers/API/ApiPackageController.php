<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\PackageCollection;
use App\Http\Resources\PackageResource;
use App\Models\Package;
use Illuminate\Http\Request;

class ApiPackageController extends Controller
{
    public function all()
    {
        return new PackageCollection(Package::get());
    }

    public function get($id)
    {
        $result = Package::find($id);
        if ($result) {
            return new PackageResource($result);
        } else {
            return response()->json(['code' => 404, 'message' => "something is wrong"]);
        }
    }
}
