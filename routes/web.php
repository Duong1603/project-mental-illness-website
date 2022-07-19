<?php

use App\Http\Controllers\Admin\AdminController;
use App\Http\Controllers\Admin\PostController;
use Illuminate\Support\Facades\Route;

Route::group([
    'namespace' => 'Admin',
    'prefix' => 'admin/blogs',
    // 'middleware' => ['auth']
], function() {
    Route::get('/create', [PostController::class, 'create']);
    Route::post('/create', [PostController::class, 'store']);
    Route::get('/update/{id}', [PostController::class, "edit"]);
    Route::post('/update/{id}', [PostController::class, "update"]);
    Route::get('/delete/{id}', [PostController::class, "delete"]);
    Route::get('/', [PostController::class, "index"])->name('posts.index');
});

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
Route::get('/admin', [adminController::class, 'indexAdmin']);
// Auth::routes();

// Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');


