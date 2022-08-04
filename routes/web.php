<?php

use App\Http\Controllers\Admin\AdminController;
use App\Http\Controllers\Admin\UserController;
use App\Http\Controllers\Admin\PostController;
use App\Http\Controllers\Admin\BookingController;
use App\Http\Controllers\Admin\OverviewController;
use App\Http\Controllers\Admin\SendEmailController;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;

// OverView
// Route::group([
//     'namespace' => 'Admin',
//     'prefix' => 'admin/overview',
//     // 'middleware' => ['auth']
// ], function () {
//     Route::get('/', [OverviewController::class, "index"])->name('overview.index');
// });

// // ManagerCustomer
// Route::group([
//     'namespace' => 'Admin',
//     'prefix' => 'admin/managerCustomer',
//     // 'middleware' => ['auth']
// ], function () {

// });

// Blogs



// login
// Route::group([
//     'namespace' => 'Admin',
//     'prefix' => 'admin',
//     // 'middleware' => ['auth']
// ], function () {
//     Route::get('/logout', [UserController::class, 'Logout']);
//     Route::post('/login', [UserController::class, 'Login']);
//     // Route::post('/register', [UserController::class, 'Register']);
//     Route::get('/login', [UserController::class, "index"])->name('login.index');
// });

Route::get('/logout', [AdminController::class, 'Logout']);
Route::post('/login', [AdminController::class, 'Login']);
// Route::post('/register', [UserController::class, 'Register']);
Route::get('/', [AdminController::class, "index"])->name('login.index');





Route::get('/contact', [SendEmailController::class, 'index']);
Route::post('/send', [SendEmailController::class, 'send'])->name('email.send');
Route::get('/admin/login', [AdminController::class, "getLogin"])->name('admin.getLogin');
Route::post('/admin/login', [AdminController::class, "postLogin"])->name('admin.postLogin');
Route::group([
    "namespace" => "Admin",
    "middleware" => "AuthAdmin",
    "prefix" => "/admin"
], function () {

    // Overview
    Route::group(["prefix" => "overview"], function () {
        Route::get('/', [OverviewController::class, "index"])->name('overview.index');
    });

    // Manager customer
    Route::group(["prefix" => "managerCustomer"], function () {
        Route::get('/', [UserController::class, "index"])->name('managerCustomer.index');
    });

    //Manager blogs
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

    //Manager bookings
    Route::group([
        'prefix' => '/bookings',
    ], function () {
        Route::get('/', [BookingController::class, "index"])->name('bookings.index');
    });
});
Route::get('/contact', [SendEmailController::class, 'index']);
Route::post('/send', [SendEmailController::class, 'send'])->name('email.send');
