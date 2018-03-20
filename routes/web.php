<?php

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
    return view('index');
});

Route::get('/contact.blade.php', function () {
    return view('contact');
});

Route::get('/doctors.blade.php', function () {
    return view('doctors');
});

Route::get('/news.blade.php', function () {
    return view('news');
});

Route::get('/services.blade.php', function () {
    return view('services');
});

Route::get('/about.blade.php', function () {
    return view('about');
});

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
