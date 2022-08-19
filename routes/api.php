<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\API\Auth\AuthController;
use App\Http\Controllers\API\Kategori\KategoriController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::post('/register', [AuthController::class, 'register']);
Route::post('/login', [AuthController::class, 'login']);

Route::group(['prefix' => 'kategori'], function(){
    Route::group(['middleware' => 'auth:api'], function(){
        Route::get('/get_all', [KategoriController::class,'getAll']);
        Route::post('/tambah', [KategoriController::class,'store']);
        Route::post('/update', [KategoriController::class,'update']);
        Route::post('/hapus', [KategoriController::class,'destroy']);
    });
});