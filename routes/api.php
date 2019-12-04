<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

// Route::middleware('auth:api')->get('/user', function (Request $request) {
//     return $request->user();
// });

Route::post('register', 'Api\AuthController@register');
Route::post('login', 'Api\AuthController@login');
Route::group(['middleware' => 'jwt.auth'], function () {
    Route::get('logout', 'Api\AuthController@logout');

    Route::resource('students', 'Api\StudentController');

    //class
    Route::get('classes/{id}/students', 'Api\ClassController@getStudents');

    Route::resource('classes', 'Api\ClassController');
    
    Route::resource('teachers', 'Api\TeacherController');

    Route::resource('subjects', 'Api\SubjectController');

    Route::resource('points', 'Api\PointController');

    Route::get('dashboard', 'Api\DashboardController@index');
});
    