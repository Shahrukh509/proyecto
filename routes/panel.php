<?php

use Illuminate\Support\Facades\Route;

/*

| Admin Panel Routes

*/
Route::get('/','PanelController@index')->name('panel');
Route::resource('products','ProductController');


Route::get('active/orders','ActiveOrderController@index')->name('orders.index');
Route::post('active/order/setDeliveryDate','ActiveOrderController@setDeliveryDate')->name('order.setDate');

Route::get('users','UserController@index')->name('users.index');
Route::post('users/admin/{user}','UserController@toggleAdmin')->name('users.admin.toggle');
