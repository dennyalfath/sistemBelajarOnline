<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

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

// Route::middleware('auth:api')->get('/user', function (Request $request) {
//     return $request->user();
// });

Route::prefix('v1')->group(function () {
    Route::get('users', 'Api\UserController@index');
    Route::post('login', 'Api\UserController@login');
    Route::post('register', 'Api\UserController@register');
    Route::get('logout', 'Api\UserController@logout');

    Route::group(['middleware' => 'auth:api'], function () {
        Route::get('my-account', 'Api\UserController@myAccount');
        Route::post('submit', 'Api\SubmitTugasController@store');
    });

    Route::resource('pemateri', 'Api\PemateriController');
    Route::resource('pelajar', 'Api\PelajarController');
    Route::resource('kelas', 'Api\KelasController');
    Route::resource('materi', 'Api\MateriController');
    Route::resource('tugas', 'Api\TugasController');
    Route::resource('submit', 'Api\SubmitTugasController');
});
