<?php
use Illuminate\Support\Facades\Route;
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
/*
 * Admin Routes
*/




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

                // Fontend Routes



Auth::routes();
Route::middleware('auth')->group(function ()
{
   Route::get('/dashboard','HomeController@show_dashboard');//Open Dashboard
Route::get('/edit_value/{id}','HomeController@edit_commission_fee');
Route::post('/update-transection-fee/{id}','HomeController@update_commission_fee');

Route::get('/get_all_payments_orders_data','PaymentsOrdersController@get_all_payments_orders_data')->name('get_all_payments_orders_data');

Route::get('/get_all_payments_orders_data_ajax','PaymentsOrdersController@get_all_payments_orders_data_ajax')->name('get_all_payments_orders_data_ajax');

Route::post('/del_pay_order_ajax','PaymentsOrdersController@del_pay_order_ajax')->name('del_pay_order_ajax');

Route::get('/edit_order_value/{id}','HomeController@edit_order_value')->name('edit_order_value');
Route::post('/update-order-value/{id}','HomeController@Update_Order')->name('Update_Order');

});

 

Route::get('/','HomeController@index');//View Site

// Route::get('/testing','HomeController@testing');//View Site


Route::get('/api','BitconController@store');//Open Dashboard
Route::post('/make_order','HomeController@make_order')->name('make_order');//make_order
Route::post('/converter','HomeController@converter')->name('converter');//btc converter\
Route::post('/confirm_order','HomeController@confirm_order')->name('confirm_order');//btc converter
Route::get('/thanks','PaymentsOrdersController@thanks')->name('thanks');
                // Backend Routs









Route::get('/profile','TestingController@index');

// Route::get('/testing','TestingController@index');
// Route::post('/create-order','TestingController@store');



Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
