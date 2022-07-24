<?php

use App\Http\Controllers\Admin\OrderController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\API\ContactAPIController;
use App\Http\Controllers\API\DetailSessionAPIController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
Route::group([
    'namespace' => 'API',
    'prefix' => 'contact'
], function () {
    Route::post('/', [ContactAPIController::class, 'store']);
});
Route::get('packages',[DetailSessionAPIController::class,'index']);
Route::get('orders',[OrderController::class,'index']);

// Route::group([
//     'namespace' => 'API',
//     'prefix' => 'detailSession'
// ], function () {
//     Route::get('/', [DetailSessionAPIController::class, 'index']);
// });