<?php

use App\Http\Controllers\Admin\AdminController;
use App\Http\Controllers\Admin\ContactController;
use App\Http\Controllers\Admin\UserController;
use App\Http\Controllers\Admin\PostController;
use App\Http\Controllers\Admin\OrderController;
use App\Http\Controllers\Admin\OverviewController;
use App\Http\Controllers\Admin\SendEmailController;
use App\Http\Controllers\Admin\ResetPasswordController;
use App\Http\Controllers\Api\DebugController;
use Illuminate\Support\Facades\Route;

Route::get('/', [AdminController::class, "getLogin"])->name('admin.getLogin');
Route::get('/login', [AdminController::class, "getLogin"])->name('admin.getLogin');
Route::post('/login', [AdminController::class, "postLogin"])->name('admin.postLogin');
Route::get('/logout', [AdminController::class, "getLogout"])->name('admin.getLogout');

Route::get('/', function () {
    return redirect()->route('overview.index');
});

Route::group([
    "namespace" => "Admin",
    "middleware" => "AuthAdmin",
    "prefix" => "/admin"
], function () {

    Route::group(["prefix" => "overview"], function () {
        Route::get('/', [OverviewController::class, "index"])->name('overview.index');
        Route::get('/charts/orders', [OverviewController::class, "ordersChart"])->name('charts.orders');
    });

    Route::group(["prefix" => "managerCustomer"], function () {
        Route::get('/', [UserController::class, "index"])->name('managerCustomer.index');
    });

    Route::group([
        'prefix' => '/blogs',
    ], function () {
        Route::get('/create', [PostController::class, 'create']);
        Route::post('/create', [PostController::class, 'store']);
        Route::get('/update/{id}', [PostController::class, "edit"]);
        Route::post('/update/{id}', [PostController::class, "update"]);
        Route::get('/delete/{id}', [PostController::class, "delete"]);
        Route::get('/update-status/{id}', [PostController::class, "updateStatus"])->name('posts.updateStatus');
        Route::get('/', [PostController::class, "index"])->name('posts.index');
    });

    Route::group([
        'prefix' => '/bookings',
    ], function () {
        Route::get('/', [OrderController::class, "index"])->name('bookings.index');
        Route::get('/update/{id}', [OrderController::class, 'update'])->name('bookings.update');
        Route::patch('/change-time', [OrderController::class, 'changeTime'])->name('changeTime');
    });

    Route::group(['prefix' => 'contact'], function () {
        Route::get('/', [ContactController::class, 'index'])->name('contact.index');
    });
});
Route::get('/contact', [SendEmailController::class, 'index']);
Route::post('/send', [SendEmailController::class, 'send'])->name('email.send');


// _--------------------RESET PASSWORD--------------------
// Route::get('/forgot', [ResetPasswordController::class, "forgot"]);

Route::prefix("/forgot")->group(function () {
    Route::get("", [ResetPasswordController::class, "verifyResetPwdRequest"]);
    Route::post("", [ResetPasswordController::class, "generateToken"]);
});
Route::post("/account/update-password", [ResetPasswordController::class, "updatePassword"])->name("update-password");
Route::get('error', function () {
    return view('admin.error');
})->name('error');
