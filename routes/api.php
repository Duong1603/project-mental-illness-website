<?php

use App\Http\Controllers\Admin\OrderController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\API\ContactAPIController;
use App\Http\Controllers\API\ApiPackageController;
use App\Http\Controllers\API\BookingAPIController;
use App\Http\Controllers\API\PaymentController;
use Faker\Provider\ar_EG\Payment;

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
Route::get('/booking', [BookingAPIController::class, 'getBooking']);
Route::post('/add-booking',[BookingAPIController::class,'addBooking']);
Route::delete('/delete-booking/{id}',[BookingAPIController::class,'deleteBooking']);


Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
Route::group([
    'namespace' => 'API',
    'prefix' => 'contact'
], function () {
    Route::post('/', [ContactAPIController::class, 'store']);
});
Route::get('orders', [OrderController::class, 'index']);

Route::group(
    ['namespace' => 'API'],
    function () {
        Route::get('/package', [ApiPackageController::class, 'all']);
        Route::get('/package/{id}', [ApiPackageController::class, 'get']);
    }
);
Route::get('/payment',[PaymentController::class,'momoPayment']);