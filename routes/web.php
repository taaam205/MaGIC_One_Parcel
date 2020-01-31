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

// Route::get('/', function () {
//     return view('auth.login');
// });

Route::get("/", "WelcomeController@index");

Auth::routes();


Route::group(['prefix' => 'home'], function () {
    
    Route::get('/', 'HomeController@index')->name('home');
    Route::get('/staffs', 'HomeController@staffs')->name('home.staffs');
    Route::post('/addStaff', 'HomeController@addStaff')->name('home.addStaff');
    Route::post('/sendEmail', 'HomeController@sendEmail')->name('home.sendEmail');
    
    // Route::get('/dashboard', 'HomeController@index')->name('home.dashboard');
    Route::get('/{any}', 'HomeController@index')->where('any', '.*');

});

Route::group(['prefix' => 'admin', 'middleware' => ['role:admin', 'auth']], function () {

    Route::get('/', 'AdminController@index')->name('admin.dashboard');
    Route::get('/getDashboardContent', 'AdminController@getDashboardContent');
    Route::get('/getUsers', 'AdminController@users');
    Route::get('/getRoles', 'AdminController@roles');
    Route::post('/sendEmail', 'AdminController@sendEmail');
    Route::post('/addUser', 'AdminController@store');
    // Route::post('/editUser/{id}', 'AdminController@update');
    Route::delete('/deleteUser/{id}', 'AdminController@destroy');
    
    Route::get('/getStaffs', 'StaffController@index');
    Route::get('/getAllStaff', 'StaffController@getAll');
    Route::post('/addStaff', 'StaffController@store');
    Route::patch('/editStaff/{id}', 'StaffController@update');
    Route::delete('/deleteStaff/{id}', 'StaffController@destroy');

    Route::get('/{any}', 'AdminController@index')->where('any', '.*');
});
