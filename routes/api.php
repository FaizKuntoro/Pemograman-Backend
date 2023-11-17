<?php

use App\Http\Controllers\AnimalController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\StudentController;
use App\Http\Controllers\NewsController;
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

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});




//buat middleware sanctum UNTUK otoritas controller, Sehingga user harus meregristasrikan Token untuk mengakses
//rute dibawah berikut

Route::middleware('auth:sanctum')->group(function () {
    //menampilkan index berita
    Route::get('/news', [NewsController::class, 'index']);
    //meunggah berita baru
    Route::post('/news', [NewsController::class, 'store']);
    //menampilkan berita bedasarkan ID
    Route::get('/news/{id}', [NewsController::class, 'show']);
    //mengedit data dalam query
    Route::put('/news/{id}', [NewsController::class, 'update']);
    //men delete data
    Route::delete('/news/{id}', [NewsController::class, 'destroy']);
    //mencari berita bedasarkan judul
    Route::get('/news/search/{title}', [NewsController::class, 'search']);
    //mencari berita bedasarkan kategori
    Route::get('/news/category/{category}', [NewsController::class, 'category']);
    
});


//endpoint untuk registrasi dan log in user
Route::post('/login', [AuthController::class, 'login']);
Route::post('/register', [AuthController::class, 'register']);
