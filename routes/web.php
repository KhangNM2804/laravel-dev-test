<?php

use App\Http\Controllers\Auth\LoginController;
use App\Http\Controllers\Auth\LogoutController;
use App\Http\Controllers\Auth\RegisterController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\ProductController;
use App\Models\Category;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('page.home');
});
Route::get('/home', function () {
    return view('page.home');
});
Route::get('/login', function () {
    return view('page.login');
})->name('get.login');
Route::get('/register', function () {
    return view('page.register');
})->name('get.register');

Route::prefix('auth')->group(function () {
    Route::post('/login', LoginController::class)->middleware('guest')->name('login');
    Route::post('/logout', LogoutController::class)->middleware('auth:sanctum')->name('logout');
    Route::post('/register', RegisterController::class)->name('register');
});

Route::resource('category', CategoryController::class);
Route::resource('products', ProductController::class);
