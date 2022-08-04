<?php

use App\Http\Controllers\Admin\AdminController;
use App\Http\Controllers\Admin\PostController;
use App\Http\Controllers\Admin\BookingController;
use App\Http\Controllers\Admin\OverviewController;
use App\Http\Controllers\Admin\SendEmailController;
use App\Http\Controllers\Admin\WebUserController;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;

// OverView
Route::group([
    'namespace' => 'Admin',
    'prefix' => 'admin/overview',
    // 'middleware' => ['auth']
], function () {
    Route::get('/', [OverviewController::class, "index"])->name('overview.index');
});

// ManagerCustomer
Route::group([
    'namespace' => 'Admin',
    'prefix' => 'admin/managerCustomer',
    // 'middleware' => ['auth']
], function () {
    Route::get('/', [WebUserController::class, "index"])->name('managerCustomer.index');
});

// Blogs
Route::group([
    'namespace' => 'Admin',
    'prefix' => 'admin/blogs',
    // 'middleware' => ['auth']
], function () {
    Route::get('/create', [PostController::class, 'create']);
    Route::post('/create', [PostController::class, 'store']);
    Route::get('/update/{id}', [PostController::class, "edit"]);
    Route::post('/update/{id}', [PostController::class, "update"]);
    Route::get('/delete/{id}', [PostController::class, "delete"]);
    Route::get('/', [PostController::class, "index"])->name('posts.index');
});

// Bookings
Route::group([
    'namespace' => 'Admin',
    'prefix' => 'admin/bookings',
    // 'middleware' => ['auth']
], function () {
    Route::get('/', [BookingController::class, "index"])->name('bookings.index');
});

// login

    Route::get('/logout', [AdminController::class, 'Logout']);
    Route::post('/login', [AdminController::class, 'Login']);
    // Route::post('/register', [UserController::class, 'Register']);
    Route::get('/', [AdminController::class, "index"])->name('login.index');




    Route::get('/contact',[SendEmailController::class,'index']);
    Route::post('/send',[SendEmailController::class,'send'])->name('email.send');
