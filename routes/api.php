<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;


use App\Http\Controllers\API\LoginController;
use App\Http\Controllers\API\UserController;
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

/*Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});*/


Route::post('login',[LoginController::class,'authentication']);

/*Authenticate route from sanctum api authenticatioin*/

Route::group(['middleware'=>'auth:sanctum'],function(){
   /*here goes all secure url*/
   Route::post('save',[UserController::class,'save']);    
   Route::get('users',[UserController::class,'getAllUsers']);    
   Route::get('users/{id}',[UserController::class,'getUserById']);    
   Route::put('update',[UserController::class,'update']);
   Route::delete('delete/{id}',[UserController::class,'delete']);
   Route::get('logout',[LoginController::class,'logout']);
    
});


