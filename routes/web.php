<?php

<<<<<<< HEAD
=======
use App\Http\Controllers\adminController;
>>>>>>> 5a14a42 (update code left content)
use Illuminate\Support\Facades\Route;

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

Route::get('/', function () {
    return view('welcome');
});
<<<<<<< HEAD
=======

// -----------------------ADMIN--------------------------------
Route::get('/admin', [adminController::class, 'indexAdmin']);
>>>>>>> 5a14a42 (update code left content)
