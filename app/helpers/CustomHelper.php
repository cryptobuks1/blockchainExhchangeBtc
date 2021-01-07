<?php
namespace App\helpers;

use Carbon\Carbon;
use DB;
use Auth;
use Session;
use Cookie;
use App;
use Illuminate\Support\Facades\Crypt;
class CustomHelper
{

 public function Get_Latest_Bitcoin_value()
 {
  
    $bitcoin_value=DB::select("SELECT * from tbl_bitcoin_values WHERE slug='BTC'");
    return $bitcoin_value;

 }

 public function Get_Latest_Commision()
 {
  
    $transection_fee=DB::select("SELECT * from commission_values where id='1'");
    return $transection_fee;

 }

 public function Get_Latest_Additional_price()
 {
  
    $additional_price=DB::select("SELECT * from commission_values where id='1'");
    return $additional_price;

 }

}