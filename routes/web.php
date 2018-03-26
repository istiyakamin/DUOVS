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
    return view('welcome');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::get('/verifyEmailFirst', 'Auth\RegisterController@verifyEmailFirst')->name('verifyEmailFirst');
Route::get('/verify/{email}/{verify_token}','Auth\RegisterController@sendEmailDone')->name('sendEmailDone');
Route::get('/election_news', 'ElectionNewsController@news');

Route::get('electionNews', 'ElectionNewsController@index');


Route::middleware(['auth'])->group(function () {

Route::resource('users', 'UserController');

});
		// Only Admin can access This
Route::middleware(['admin', 'auth'])->group(function () {

	//User is here
	//Route::get('users', 'UserController@index');
	Route::delete('users/{id}', 'UserController@destroy');
	Route::get('users/create', 'UserController@create');
	Route::get('users/{id}/edit', 'UserController@edit');
	Route::match(['put', 'patch'], 'users/{id}', 'UserController@update');


    Route::resource('roles', 'RoleController');

    Route::resource('elections', 'ElectionController');

	Route::resource('electionCategories', 'ElectionCategoryController');

	Route::resource('candidates', 'CandidateController');

	Route::resource('votes', 'VoteController');

	Route::resource('electionNews', 'ElectionNewsController');
	
});






