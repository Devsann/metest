<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| This file is where you may define all of the routes that are handled
| by your application. Just tell Laravel the URIs it should respond
| to using a Closure or controller method. Build something great!
|
*/

//Route::get('/', function () {
//    return view('welcome');
//});
Route::get('/home','HomeController@home');

Route::get('/','HomeController@index');

Route::get('/logout','Auth\LoginController@logout');

Route::get('/login','Auth\LoginController@showLoginForm');
Route::post('/login','Auth\LoginController@login');

Route::get('/register','Auth\RegisterController@showRegistrationForm');
Route::post('/register','Auth\RegisterController@register');

Route::group(array('namespace'=>'admin','middleware'=>'auth'),function (){
    Route::get('/ktvform','KtvController@index');
    Route::post('/ktvform','KtvController@store');

    Route::get('/division','DivisionController@index');
    Route::post('/division','DivisionController@store');

    Route::get('/township','TownshipController@index');
    Route::post('/township','TownshipController@store');

    Route::get('/quarter','QuarterController@index');
    Route::post('/quarter','QuarterController@store');

    Route::get('/address','AddressController@index');
    Route::post('/address','AddressController@store');

    Route::get('/person','PersonController@index');
    Route::post('/person','PersonController@store');

    Route::get('/mechine','MechineController@index');

    Route::get('/song','SongController@index');

});

Auth::routes();

Route::get('/home', 'HomeController@index');
