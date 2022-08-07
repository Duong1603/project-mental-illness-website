<?php

use App\Http\Controllers\Admin\CategoryController;
use App\Http\Controllers\Admin\OrderController;
use App\Http\Controllers\Api\BlogAPIController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\ContactAPIController;
use App\Http\Controllers\Api\ApiPackageController;
use App\Http\Controllers\Api\BookingAPIController;
use App\Http\Controllers\Api\PaymentController;
use App\Http\Controllers\Api\SearchAPIController;
use App\Models\Category;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/ // Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// });

// -------------------------Package/ Session--------------------------------
Route::get('/package', [ApiPackageController::class, 'all']);
Route::get('/package/{id}', [ApiPackageController::class, 'get']);    

Route::get('/booking', [BookingAPIController::class, 'index']);
Route::post('/add-booking',[BookingAPIController::class,'store']);

Route::delete('/delete-booking/{id}',[BookingAPIController::class,'deleteBooking']);

Route::group([
    'namespace' => 'Api',
    'prefix' => 'contact'
], function () {
    Route::post('/', [ContactAPIController::class, 'store']);
});

Route::get('orders', [OrderController::class, 'index']);
Route::get('/payment-qr',[PaymentController::class,'momoQrPayment']);
Route::get('/payment',[PaymentController::class,'momoPayment']);
Route::get('search/{id}', [SearchAPIController::class, 'searchCategory']);
Route::get('/posts/search', [SearchAPIController::class, 'search']);
Route::get('/categories', [SearchAPIController::class, 'statistical']);

