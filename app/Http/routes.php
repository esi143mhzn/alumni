<?php

/*
|--------------------------------------------------------------------------
| Routes File
|--------------------------------------------------------------------------
|
| Here is where you will register all of the routes in an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

//These routes are for without Login (Guest)
//Route::get('/', 'UC@home');
//Route::get('individual/{ID}', array('as' => 'individual', 'uses' =>'UC@individual'));
//Route::get('setting/{id}', array('as' => 'setting', 'uses' =>'UC@setting'));


Route::get('about', function()
{
	
    return View::make('pages.about');
});
Route::get('fourm', function()
{
    return View::make('pages.fourm');
});
Route::get('contact', function()
{
    return View::make('pages.contact');
});



Route::get('search', 'SearchController@searchinput');


/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| This route group applies the "web" middleware group to every route
| it contains. The "web" middleware group is defined in your HTTP
| kernel and includes session state, CSRF protection, and more.
|
*/

Route::group(['middleware' => ['web']], function () {
    //
});

Route::group(['middleware' => 'web'], function () {
	//These routes are after the Logging IN
    Route::auth();
    Route::get('/', 'UC@home');
    Route::get('individual/{ID}', array('as' => 'individual', 'uses' =>'UC@individual'));


    Route::get('message/{ID}', array('as' => 'message', 'uses' =>'UC@message'));
    Route::post('message/{ID}', array('as' => 'message', 'uses' =>'UC@messagesave'));


	Route::get('setting/{id}'	, array('as' => 'setting', 'uses' =>'UC@setting'));
	Route::post('setting/{id}', array('as' => 'setting', 'uses' =>'UC@settingupdate'));


	 Route::get('viewmessage/{ID}', array('as' => 'individual', 'uses' =>'UC@viewmessage'));
    /*
    Need to Overwrite these
    Route::get('about', function()
	{
		
	    return View::make('pages.about');
	});
	Route::get('fourm', function()
	{
	    return View::make('pages.fourm');
	});
	Route::get('contact', function()
	{
	    return View::make('pages.contact');
	});*/
     // Authentication routes...
Route::get('auth/login', 'Auth\AuthController@getLogin');
Route::post('auth/login', 'Auth\AuthController@postLogin');
Route::get('auth/logout', 'Auth\AuthController@getLogout');
Route::post('auth/logout','Auth\AuthController@postLogout');
// Registration routes...
Route::get('auth/register', 'Auth\AuthController@getRegister');
Route::post('auth/register', 'Auth\AuthController@postRegister');
Route::get('search', 'SearchController@searchinput');


});
