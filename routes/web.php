<?php

use App\Http\Controllers\Admin\UserController;
use App\Http\Controllers\Admin\PostController;
use App\Http\Controllers\Admin\BookingController;
use App\Http\Controllers\Admin\OverviewController;
use App\Http\Controllers\Admin\SendEmailController;
use App\Http\Controllers\Admin\WebUserController;

use Illuminate\Support\Facades\Route;

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
Route::group([
    'namespace' => 'Admin',
    'prefix' => 'admin',
    // 'middleware' => ['auth']
], function () {
    Route::get('/logout', [UserController::class, 'Logout']);
    Route::post('/login', [UserController::class, 'Login']);
    // Route::post('/register', [UserController::class, 'Register']);
    Route::get('/login', [UserController::class, "index"])->name('login.index');
});

//------------------------- Login, Logout, Register ---------------------------------//
// Route::get('/register', function () {
//     return view('users.register');
// });

// Route::get('/login', function () {
//     return view('admin.login.index');
// });


//------------------------- Login, Logout, Register ---------------------------------//


/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// -----------------------ADMIN--------------------------------
// Auth::routes();


    Route::get('/contact',[SendEmailController::class,'index']);
    Route::post('/send',[SendEmailController::class,'send'])->name('email.send');
