<?php

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
Route::get('/','MainController@index')->name('main');


//Route::resource('products','ProductController');
Route::get('profile','ProfileController@edit')->name('profile.edit');

Route::put('profile','ProfileController@update')->name('profile.update');



Route::resource('products.carts','ProductCartController')->only(['store', 'destroy']);

Route::resource('carts','CartController')->only(['index']);
Route::resource('orders','OrderController')->only(['create','store']);

Route::resource('orders','OrderController')
	->only(['create','store']);

Route::resource('orders.payments','OrderPaymentController')
	->only(['create','store']);

Auth::routes([
	'verify' => true,
	//'reset' => false,
	]);

//Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
