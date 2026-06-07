<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\FrontendController;

Route::get('/', function () {
    return view('welcome');
});

Route::get('/', [FrontendController::class, 'index'])->name('home');
Route::post('/reservations', [FrontendController::class, 'storeReservation'])->name('reservations.store');
