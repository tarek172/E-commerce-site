<?php

Route::get('/', function(){
	
	return redirect()->route('login.index');
});

Route::get('/login', 'LoginController@index')->name('login.index');
Route::post('/login', 'LoginController@verify')->name('login.verify');

Route::get('/logout', 'LogoutController@index')->name('logout.index');

Route::group(['middleware'=>['sess']], function(){

	Route::get('/home', 'HomeController@index')->name('home.index');
	/*Route::get('/home/upload/', 'HomeController@upload')->name('home.upload');
	Route::post('/home/upload/', 'HomeController@storePhoto');
	Route::get('/home/profile/', 'HomeController@profile')->name('home.profile');*/

	Route::get('/home/action', 'HomeController@action')->name('home.action');
	

	
	
	Route::group(['middleware'=>['admin']], function(){
		Route::get('/user', 'EmployeeController@index')->name('employee.index');
	    Route::get('/user/show/{id}', 'EmployeeController@show')->name('employee.show');
		Route::get('/user/create/', 'EmployeeController@create')->name('employee.create');
		Route::post('/user/create/', 'EmployeeController@store');
		Route::get('/user/edit/{id}', 'EmployeeController@edit')->name('employee.edit');
		Route::post('/user/edit/{id}', 'EmployeeController@update');
		Route::get('/user/delete/{id}', 'EmployeeController@delete')->name('employee.delete');
		Route::post('/user/delete/{id}', 'EmployeeController@destroy');

		Route::get('/product', 'ProductController@index')->name('product.index');
	    Route::get('/product/show/{id}', 'ProductController@show')->name('product.show');
		Route::get('/product/create/', 'ProductController@create')->name('product.create');
		Route::post('/product/create/', 'ProductController@store');
		Route::get('/product/edit/{id}', 'ProductController@edit')->name('product.edit');
		Route::post('/product/edit/{id}', 'ProductController@update');
		Route::get('/product/delete/{id}', 'ProductController@delete')->name('product.delete');
		Route::post('/product/delete/{id}', 'ProductController@destroy');
	});
	
});



//Route::resource('/acctypes', 'AccountTypeController');