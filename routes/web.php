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

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::get('/customer', 'customerController@index')->name('customerController');

Route::get('/totalData', 'crudOperationController@totalData')->name('totalData');
Route::get('/editData/{id}', 'crudOperationController@editData')->name('editData');
Route::post('/updateData', 'crudOperationController@updateData')->name('updateData');
Route::post('/insertData', 'crudOperationController@insertData')->name('insertData');
Route::delete('/deleteData/{id}', 'crudOperationController@deleteData')->name('deleteData');
Route::post('/submitData/{id}', 'customerController@submitData')->name('submitData');

Route::post('/phpdDeveloperTasksubmitData', 'phpdDeveloperTaskController@submitData')->name('phpdDeveloperTasksubmitData');