<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\FrontendController;
use App\Http\Controllers\CheckoutController;

Route::get('/', function () {
    return view('welcome');
});

Route::get('/', [FrontendController::class, 'index'])->name('home');
Route::post('/reservations', [FrontendController::class, 'storeReservation'])->name('reservations.store');
Route::get('/checkout/{order}', [CheckoutController::class, 'prosesBayar'])->name('checkout');
Route::post('/midtrans-callback', [CheckoutController::class, 'webhook']);
Route::post('/checkout/{order}/bayar-kasir', [CheckoutController::class, 'bayarDiKasir'])->name('checkout.kasir');