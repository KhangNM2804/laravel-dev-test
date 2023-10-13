<?php

use App\Http\Controllers\Api\Auth\LoginController;
use App\Http\Controllers\Api\Auth\LogoutController;
use App\Http\Controllers\Api\Auth\RegisterController;
use App\Http\Controllers\Api\V1\CategoryController;
use App\Http\Controllers\Api\V1\CommentController;
use App\Http\Controllers\Api\V1\DiscountController;
use App\Http\Controllers\Api\V1\ProductController;
use App\Models\Category;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::prefix('auth')->group(function () {
    Route::post('/login', LoginController::class);
    Route::post('/logout', LogoutController::class)->middleware('auth:sanctum');
    Route::post('/register', RegisterController::class);
});

Route::prefix('v1')->middleware(['auth:sanctum'])->group(function () {
    Route::get('/category', [CategoryController::class, 'index']);
    Route::get('/products/{category_id}', [ProductController::class, 'findByCategoryId']);
    Route::get('/products', [ProductController::class, 'findByCategoryId']);
    Route::post('/product/create', [ProductController::class, 'store']);
    Route::get('/product/{id}', [ProductController::class, 'show']);
    Route::post('/products/likeandunlike', [ProductController::class, 'likeAndUnlikeProduct']);
    Route::get('/comment/{id}', [CommentController::class, 'show']);
    Route::post('/comment', [CommentController::class, 'store']);
    Route::post('/comment/{id}', [CommentController::class, 'update']);
    Route::delete('/comment/{id}', [CommentController::class, 'destroy']);
    Route::get('/discount', [DiscountController::class, 'index']);
    Route::get('/discount/{id}', [DiscountController::class, 'show']);
    Route::post('/discount', [DiscountController::class, 'store']);
    Route::post('/discount/{id}', [DiscountController::class, 'update']);
    Route::delete('/discount/{id}', [DiscountController::class, 'destroy']);
});

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
