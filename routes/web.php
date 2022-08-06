<?php

use App\Http\Controllers\Admin\AdminController;
use App\Http\Controllers\Admin\UserController;
use App\Http\Controllers\Admin\PostController;
use App\Http\Controllers\Admin\BookingController;
use App\Http\Controllers\Admin\OrderController;
use App\Http\Controllers\Admin\OverviewController;
use App\Http\Controllers\Admin\SendEmailController;
use Illuminate\Support\Facades\Route;

Route::get('/login', [AdminController::class, "getLogin"])->name('admin.getLogin');
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
