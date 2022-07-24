<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\PackageCollection;
use App\Http\Resources\PackageResource;
use App\Models\Package;
use Illuminate\Http\Request;

class ApiPackageController extends Controller
{
    public function all() {
        return new PackageCollection(Package::get());
    }

    public function get($id) {
        return new PackageResource(Package::find($id));
    }
}
