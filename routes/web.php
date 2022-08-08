<?php

use App\Http\Controllers\Admin\AdminController;
use App\Http\Controllers\Admin\UserController;
use App\Http\Controllers\Admin\PostController;
use App\Http\Controllers\Admin\BookingController;
use App\Http\Controllers\Admin\OrderController;
use App\Http\Controllers\Admin\OverviewController;
use App\Http\Controllers\Admin\SendEmailController;
use App\Http\Controllers\Admin\ResetPasswordController;
use Illuminate\Support\Facades\Route;


Route::get('/', [AdminController::class, "getLogin"])->name('admin.getLogin');
Route::post('/login', [AdminController::class, "postLogin"])->name('admin.postLogin');
Route::get('/logout', [AdminController::class, "getLogout"])->name('admin.getLogout');

Route::group([
    "namespace" => "Admin",
    "middleware" => "AuthAdmin",
    "prefix" => "/admin"
], function () {

    Route::group(["prefix" => "overview"], function () {
        Route::get('/', [OverviewController::class, "index"])->name('overview.index');
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
        Route::get('/', [PostController::class, "index"])->name('posts.index');
    });

    Route::group([
        'prefix' => '/bookings',
    ], function () {
        Route::get('/', [OrderController::class, "index"])->name('bookings.index');
    });
});
Route::get('/contact', [SendEmailController::class, 'index']);
Route::post('/send', [SendEmailController::class, 'send'])->name('email.send');

<<<<<<< HEAD
Route::get('/designSendmail', function () {
    return view('emails.confirmBook');
});
Route::get('/designSendmail1', function () {
    return view('emails.informToAdmin');
});

Route::get('/designSendmail2', function () {
    return view('emails.successResign');
});

Route::get('/designSendmail3', function () {
    return view('emails.userEmail');
});
Route::get('/master', function () {
    return view('emails.master');
});
=======

// _--------------------RESET PASSWORD--------------------
// Route::get('/forgot', [ResetPasswordController::class, "forgot"]);

Route::prefix("/forgot")->group(function() {
    Route::get("", [ResetPasswordController::class, "verifyResetPwdRequest"]);
    Route::post("", [ResetPasswordController::class, "generateToken"]);
});
Route::post("/account/update-password", [ResetPasswordController::class, "updatePassword"])->name("update-password");
>>>>>>> 89cf15880d328830886a1fda09f79ea70f9708ca
