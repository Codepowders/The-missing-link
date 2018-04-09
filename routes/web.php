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

Route::get('/fetch', 'FetchController@index');
Route::get('/fetch2', 'Fetch2Controller@index');
Route::get('/fetch3', 'Fetch3Controller@index');
Route::get('/fetch4', 'Fetch4Controller@index');


Route::get('/', function () {
    return view('index'); // welcome moet naar login=senioren. //index=deelnememers
});

Route::get('/contact.blade.php', function () {
    return view('contact');
});

Route::get('/welcome.blade.php', function () {
    return view('welcome');
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

Route::get('/index.blade.php', function () {
    return view('index');
});

Route::get('login.blade.php', function () {
    return view('auth.login');
});


Route::get('register.blade.php', function () {
    return view('auth.register');
});

Route::get('register2.blade.php', function () {
    return view('auth.register2');
});

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});


Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::get('senior.blade.php', function () {
    return view('seniors.senior');
});

Route::resource('posts2', 'PostsController');

/*Route::get('blog.blade.php', function () {
    return view('posts.index');
});*/
