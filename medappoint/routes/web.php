<?php

Route::get('/', function () {
    return  redirect('/login');//view('welcome');
});

Auth::routes();
// Rutas para la recuperación de contraseña
Route::get('/password/reset', 'Auth\ForgotPasswordController@showLinkRequestForm')->name('password.request');
Route::post('/password/email', 'Auth\ForgotPasswordController@sendResetLinkEmail')->name('password.email');
Route::get('/password/reset/{token}', 'Auth\ResetPasswordController@showResetForm')->name('password.reset');
Route::post('/password/reset', 'Auth\ResetPasswordController@reset')->name('password.update'); // Agrega esta línea


Route::get('/home', 'HomeController@index')->name('home');

Route::middleware(['auth','admin'])->namespace('Admin')->group(function () {
    //Especialidades
    Route::get('/specialties', 'SpecialtyController@index');
    Route::get('/specialties/create', 'SpecialtyController@create'); // formulario de registro
    Route::get('/specialties/{specialty}/edit', 'SpecialtyController@edit');
    Route::post('/specialties', 'SpecialtyController@store');// envio del form
    Route::put('/specialties/{specialty}', 'SpecialtyController@update');
    Route::delete('/specialties/{specialty}', 'SpecialtyController@destroy');

    //DOCTOR
    Route::resource('doctors', 'DoctorController');

    //PACIENTE
    Route::resource('patients', 'PatientController');

    // Charts
	Route::get('/charts/appointments/line', 'ChartController@appointments');
	Route::get('/charts/doctors/column', 'ChartController@doctors');
	Route::get('/charts/doctors/column/data', 'ChartController@doctorsJson');
});


Route::middleware(['auth','doctor'])->namespace('Doctor')->group(function () {
    Route::get('/schedule', 'ScheduleController@edit');
    Route::post('/schedule', 'ScheduleController@store');
});


Route::middleware('auth')->group(function () {
    Route::get('/appointments/create', 'AppointmentController@create');
    Route::post('/appointments', 'AppointmentController@store');



    
    Route::get('/appointments', 'AppointmentController@index');
    Route::get('/appointments/{appointment}', 'AppointmentController@show');

    Route::get('/appointments/{appointment}/cancel', 'AppointmentController@showCancelForm');
	Route::post('/appointments/{appointment}/cancel', 'AppointmentController@postCancel');

    Route::post('/appointments/{appointment}/confirm', 'AppointmentController@postConfirm');
    
    //JSON
    //Route::get('/specialties/{specialty}/doctors', 'Api\SpecialtyController@doctors'); 
    //Route::get('/schedule/hours', 'Api\ScheduleController@hours');
    Route::get('/specialties/{specialty}/doctors', 'Api\SpecialtyController@doctors')->name('specialties.doctors');
    Route::get('/schedule/hours', 'Api\ScheduleController@hours')->name('schedule.hours');

    
});