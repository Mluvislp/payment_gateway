<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/
    Route::get('/notfound', [ \App\Http\Controllers\Web\NotFoundController::class, 'index'])->name('notfound');

    Route::middleware('token.check')->group(function (){
        Route::get('payment', [ \App\Http\Controllers\Web\PaymentController::class, 'payment'])->name('payment');
        Route::post('payment/handle/paypal-direct', [ \App\Http\Controllers\Web\Gateway\PayPalDirectController::class, 'createPayment3DS'])->name('payment.handle.paypal-direct');
        Route::get('payment/handle/capture-paypal-direct', [ \App\Http\Controllers\Web\Gateway\PayPalDirectController::class, 'capturePayPalDirect'])->name('payment.handle.capture-paypal-direct');
    });

    Route::get('/test', [ \App\Http\Controllers\WebTest\TestPaymentController::class, 'createPayment'])->name('test.create');
    Route::post('/test/create/token', [ \App\Http\Controllers\WebTest\TestPaymentController::class, 'handleCreateToken'])->name('test.createToken');
    Route::get('/test/payment', [ \App\Http\Controllers\WebTest\TestPaymentController::class, 'payment'])->name('test.payment');

    Route::post('/test/payment/handle/paypaldirect', [ \App\Http\Controllers\WebTest\GateWay\PayPalDirectController::class, 'createPayment3DS'])->name('test.payment.handle.paypaldirect');
    Route::get('/test/payment/handle/capturepaypaldirect', [ \App\Http\Controllers\WebTest\GateWay\PayPalDirectController::class, 'capturePayPalDirect'])->name('test.payment.handle.capturepaypaldirect');

    Route::post('/test/stripe/create-payment', [ \App\Http\Controllers\WebTest\GateWay\StripeController::class, 'createPaymentIntent'])->name('test.stripe.create-payment');
    Route::get('/test/stripe/hook', [ \App\Http\Controllers\WebTest\GateWay\StripeController::class, 'retrievePaymentIntent'])->name('test.stripe.hook');

    Route::post('/test/payment/handle/amex', [ \App\Http\Controllers\WebTest\GateWay\AmericanExpressController::class, 'createPayment'])->name('test.payment.handle.amex');
    Route::match(['GET', 'POST'],'/test/payment/amex/process3d', [ \App\Http\Controllers\WebTest\GateWay\AmericanExpressController::class, 'process3d'])->name('test.payment.amex.process3d');
    Route::get('/test/payment/amex/validate3d', [ \App\Http\Controllers\WebTest\GateWay\AmericanExpressController::class, 'validate3d'])->name('test.payment.amex.validate3d');
