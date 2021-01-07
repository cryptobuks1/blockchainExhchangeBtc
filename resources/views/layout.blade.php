@extends('frontLayout')
@section('title', 'Home')
@section('content')
<form action="{{ route('make_order') }}" method="post">
    @csrf
    <img src="coins (1).png" style="margin-top: 30px">
    <div class="card container" style="margin-top:30px;margin-bottom: 30px;    background-image: url(img/bg-img/bg-2.jpg);position: relative;
        z-index: 1;
        background-attachment: fixed;
        position: relative;
        z-index: 2;
        background-position: center center;
        background-size: cover;
        border: 3px solid white">
        <div class="row" style="margin-top: 20px;">
         
            <div class="col-sm-8 px-lg-5 px-md-5 mx-auto">
                <h2 class="text-center text-white my-5 bg">Select Amount to Exchange</h2>
                {{-- iconsssss --}}
                @foreach ($View_Bit_Cry_Prices as  $Prices)
                <p class="sprite sprite-{{$Prices->slug }} small_coin_logo select_currency {{$Prices->symbol }}"></p>
                <style type="text/css">
                .{{$Prices->symbol }}{
                display: none;
                }
                </style>
                @endforeach
                {{-- <p class="sprite sprite-bitcoin small_coin_logo select_currency BTC"></p>
                <p class="sprite sprite-tether small_coin_logo select_currency USDT"></p>
                <p class="sprite sprite-cardano  small_coin_logo select_currency ETH"></p> --}}
                <div class="coiniconlive mb-2">
                    
                </div>
                
                <div class="input-group mb-3">
                    <select   id="bitcoin_value" class="cointType" name="bitcoin_convert_to" style="background-color:#e9ecef;width:100% !important;margin-bottom: 20px">
                        <option value="select_currency">Select Currency</option>
                        @foreach ($View_Bit_Cry_Prices as  $Prices)
                        <option value="{{$Prices->symbol }}" coin-id='{{$Prices->id }}' >{{$Prices->symbol }} - {{$Prices->name }}</option>
                        @endforeach
                    </select>
                    <input type="number" name="bitcoin_entered_amount"  id="bitcoin_value" class="form-control bitcoin_valuefConverion" min="1" value="1" style="background-color:#e9ecef;margin-bottom:20px">
                    
                    <select  id="bitcoin_convert_to" class="currencyType select_currency" name="bitcoin_convert_to" style="background-color:#e9ecef;width:100% !important;margin-bottom:20px">
                        {{-- <option value="">Select Currency You Need</option> --}}
                        <option value="USD">USD</option>
                        <option value="EUR">EUR</option>
                        <option value="ALL">ALL</option>
                        <option value="DZD">DZD</option>
                        <option value="ARS">ARS</option>
                        <option value="AMD">AMD</option>
                        <option value="AUD">AUD</option>
                        <option value="AZN">AZN</option>
                        <option value="BHD">BHD</option>
                        <option value="BDT">BDT</option>
                        <option value="BYN">BYN</option>
                        <option value="BMD">BMD</option>
                        <option value="BOB">BOB</option>
                        <option value="BAM">BAM</option>
                        <option value="BRL">BRL</option>
                        <option value="BGN">BGN</option>
                        <option value="KHR">KHR</option>
                        <option value="CAD">CAD</option>
                        <option value="CLP">CLP</option>
                        <option value="CNY">CNY</option>
                        <option value="COP">COP</option>
                        <option value="CRC">CRC</option>
                        <option value="HRK">HRK</option>
                        <option value="CUP">CUP</option>
                        <option value="CZK">CZK</option>
                        <option value="DKK">DKK</option>
                        <option value="PHP">PHP</option>
                        <option value="PLN">PLN</option>
                        <option value="GBP">GBP</option>
                        <option value="QAR">QAR</option>
                        <option value="RON">RON</option>
                        <option value="RUB">RUB</option>
                        <option value="SAR">SAR</option>
                        <option value="RSD">RSD</option>
                        <option value="SGD">SGD</option>
                        <option value="ZAR">ZAR</option>
                        <option value="KRW">KRW</option>
                        <option value="SSP">SSP</option>
                        <option value="VES">VES</option>
                        <option value="LKR">LKR</option>
                        <option value="SEK">SEK</option>
                        <option value="CHF">CHF</option>
                        <option value="THB">THB</option>
                        <option value="TTD">TTD</option>
                        <option value="TND">TND</option>
                        <option value="TRY">TRY</option>
                        <option value="UGX">UGX</option>
                        <option value="UAH">UAH</option>
                        <option value="AED">AED</option>
                        <option value="UYU">UYU</option>
                        <option value="UZS">UZS</option>
                        <option value="VND">VND</option>
                        <option value="DOP">DOP</option>
                        <option value="EGP">EGP</option>
                        <option value="GEL">GEL</option>
                        <option value="GHS">GHS</option>
                        <option value="GTQ">GTQ</option>
                        <option value="HNL">HNL</option>
                        <option value="HKD">HKD</option>
                        <option value="HUF">HUF</option>
                        <option value="ISK">ISK</option>
                        <option value="INR">INR</option>
                        <option value="IDR">IDR</option>
                        <option value="IRR">IRR</option>
                        <option value="IQD">IQD</option>
                        <option value="ILS">ILS</option>
                        <option value="JMD">JMD</option>
                        <option value="JPY">JPY</option>
                        <option value="JOD">JOD</option>
                        <option value="KZT">KZT</option>
                        <option value="KES">KES</option>
                        <option value="KWD">KWD</option>
                        <option value="KGS">KGS</option>
                        <option value="LBP">LBP</option>
                        <option value="MKD">MKD</option>
                        <option value="MYR">MYR</option>
                        <option value="MUR">MUR</option>
                        <option value="MXN">MXN</option>
                        <option value="MDL">MDL</option>
                        <option value="MNT">MNT</option>
                        <option value="MAD">MAD</option>
                        <option value="MMK">MMK</option>
                        <option value="NAD">NAD</option>
                        <option value="NPR">NPR</option>
                        <option value="TWD">TWD</option>
                        <option value="NZD">NZD</option>
                        <option value="NIO">NIO</option>
                        <option value="NGN">NGN</option>
                        <option value="NOK">NOK</option>
                        <option value="OMR">OMR</option>
                        <option value="PKR">PKR</option>
                        <option value="PAB">PAB</option>
                        <option value="PEN">PEN</option>
                        <input type="number" name="bitcoin_converted_amount"  id="bitcoin_value" class="form-control bitcoin_converted_amount select_currency" readonly="" required>
                    </select>
                </div>
                {{-- <span class="sprite sprite-bitcoin small_coin_logo"></span> --}}
            </div>
        </div> 
        <div class="row" style="margin-top: 10px;margin-bottom:5px;">
           
            <div class="col-lg-8 mx-auto">
                <div class="input-group mb-3">
                    <select id="bitcoin_value" class="paymentVal select_currency_to" name="paymentVal" style="width: 100%;background-color:#e9ecef">
                        <option>Select Payment Method</option>
                        <option value="paypal">Paypal</option>
                        <option value="bank_wire">Bank Wire</option>
                        <option value="westren_union">Western Union</option>
                        <option value="perfect_money">Perfect Money</option>
                        <option value="payza">Payza</option>
                        <option value="payoneer">Payoneer</option>
                        <option value="webmoney">Webmoney</option>
                        <option value="okpay">Okpay</option>
                        <option value="skrill">Skrill</option>
                        <option value="nettler">Nettler</option>
                        <option value="dash">Dash</option>
                        <option value="money_gram">Money Gram</option>
                        <option value="credit_card">Credit Card</option>
                        <option value="instaforex">Instaforex</option>
                        <option value="solid_trust_pay">Solid Trust Pay</option>
                        <option value="us_bank">US Bank</option>
                        <option value="advcash">AdvCash</option>
                        <option value="alipay_china">Alipay China</option>
                        <option value="paysafecard">Paysafecard</option>
                        <option value="onecard">OneCard</option>
                        <option value="sofort">SOFORT</option>
                        <option value="qivi_wallet">QIWI Wallet</option>
                        <option value="entromoney">Entromoney</option>
                        <option value="mobile_wallet">Mobile Wallet</option>
                        <option value="wordremit">Word Remit</option>
                        <option value="mobile_pay">Mobile Pay</option>
                        <option value="capital_one">Capital One</option>
                        <option value="apple_pay">Apple Pay</option>
                        <option value="chase_quick_pay">Chase Quick Pay</option>
                        <option value="transfer_wise">TransferWise</option>
                        <option value="venmo_mobile_payment">Venmo Mobile Payment</option>
                        <option value="xoom_money_transfer">Xoom Money Transfer</option>
                        <option value="swift_transfer">Swift Transfer</option>
                        <option value="direct_bank_deposit">Direct Bank Deposit</option>
                        <option value="buy_virtual_card">Buy Virtual Card</option>
                    </select>
                    
                </div>
            </div>
        </div>
        
        <div class="row" style="margin-top: 5px;margin-bottom:20px;">
           
            <div class="col-lg-8 mx-auto">
                <div class="input-group mb-3">
                    <input type="text" name="paypal_email" class="paypal" placeholder="e.g abc@gmail.com" id="account_id" style="width: 100% !important;margin-bottom:20px" required >
                    <input type="text" name="bankwire_holder_name"  placeholder="A/c Holder Name" id="account_id" class="bank_wire" style="width: 100% !important;margin-bottom:20px" required>
                    <input type="text" name="westrenunion_full_name"  placeholder="Full Name" id="account_id" class="westren_union" style="width: 100% !important;margin-bottom:20px" required>
                    <input type="text" name="perfectmoney_pm_id"  placeholder="PM ID" id="account_id" class="perfect_money" style="width: 100% !important;margin-bottom:20px" required>
                    <input type="text" name="payza_payza_email"  placeholder="Payza Email" id="account_id" class="payza" style="width: 100% !important;margin-bottom:20px" required>
                    <input type="text" name="payoneer_payoneer_email"  placeholder="Payoneer Email" id="account_id" class="payoneer" style="width: 100% !important;margin-bottom:20px" required>
                    <input type="text" name="webmoney_webmoney_purse"  placeholder="Webmoney Purse" id="account_id" class="webmoney" style="width: 100% !important;margin-bottom:20px" required>
                    <input type="text" name="okpay_okpay_email"  placeholder="Okpay Email" id="account_id" class="okpay" style="width: 100% !important;margin-bottom:20px" required>
                    <input type="text" name="skrill_skrill_email"  placeholder="Skrill Email" id="account_id" class="skrill" style="width: 100% !important;margin-bottom:20px" required>
                    <input type="text" name="nettler_nettler_id"  placeholder="Nettler ID" id="account_id" class="nettler" style="width: 100% !important;margin-bottom:20px" required>
                    <input type="text" name="dash_dash_id"  placeholder="Dash ID" id="account_id" class="dash" style="width: 100% !important;margin-bottom:20px" required>
                    <input type="text" name="moneygram_full_name"  placeholder="Full Name" id="account_id" class="money_gram" style="width: 100% !important;margin-bottom:20px" required>
                    <input type="text" name="creditcard_card_number"  placeholder="Card Number" id="account_id" class="credit_card" style="width: 100% !important;margin-bottom:20px" required>
                    <input type="text" name="instaforex_instaforex_id"  placeholder="Instaforex ID" id="account_id" class="instaforex" style="width: 100% !important;margin-bottom:20px" required>
                    <input type="text" name="solidtrustpay_std_id"  placeholder="STD ID" id="account_id" class="solid_trust_pay" style="width: 100% !important;margin-bottom:20px" required>
                    <input type="text" name="usbank_us_id"  placeholder="US ID" id="account_id" class="us_bank" style="width: 100% !important;margin-bottom:20px" required>
                    
                    <input type="text" name="advcash_wallet_id"  placeholder="Wallet ID" id="account_id" class="advcash" style="width: 100% !important;margin-bottom:20px" required>
                    <input type="text" name="alipaychina_email_id"  placeholder="Email ID" id="account_id" class="alipay_china" style="width: 100% !important;margin-bottom:20px" required>
                    <input type="text" name="paysafecard_email_id"  placeholder="Email ID" id="account_id" class="paysafecard" style="width: 100% !important;margin-bottom:20px" required>
                    <input type="text" name="onecard_email_id"  placeholder="Email ID" id="account_id" class="onecard" style="width: 100% !important;margin-bottom:20px" required>
                    <input type="text" name="sofort_email_id"  placeholder="Email ID" id="account_id" class="sofort" style="width: 100% !important;margin-bottom:20px" required>
                    <input type="text" name="qiviwallet_id"  placeholder="ID" id="account_id" class="qivi_wallet" style="width: 100% !important;margin-bottom:20px" required>
                    <input type="text" name="wordremit_wallet_address"  placeholder="Wallet Address" id="account_id" class="wordremit" style="width: 100% !important;margin-bottom:20px" required>
                    {{-- Start///////////////////////////////////Start --}}
                    <input type="text" name="mobilepay_full_name"  placeholder="Full Name" id="account_id" class="mobile_pay" style="width: 100% !important;margin-bottom:20px" required>
                    <input type="text" name="capitalone_email_id"  placeholder="Email ID" id="account_id" class="capital_one" style="width: 100% !important;margin-bottom:20px" required>
                    <input type="text" name="applepay_full_name"  placeholder="Full Name" id="account_id" class="apple_pay" style="width: 100% !important;margin-bottom:20px" required>
                    <input type="text" name="chasequickpay_email_id"  placeholder="Email ID" id="account_id" class="chase_quick_pay" style="width: 100% !important;margin-bottom:20px" required>
                    <input type="text" name="transferwise_email_address"  placeholder="Email Address" id="account_id" class="transfer_wise" style="width: 100% !important;margin-bottom:20px" required>
                    <input type="text" name="venmomobilepayment_full_name"  placeholder="Full Name" id="account_id" class="venmo_mobile_payment" style="width: 100% !important;margin-bottom:20px" required>
                    <input type="text" name="riamoneytransfer_email_address"  placeholder="Email Address" id="account_id" class="ria_money_transfer" style="width: 100% !important;margin-bottom:20px" required>
                    <input type="text" name="xoommoneytransfer_email_address"  placeholder="Email Address" id="account_id" class="xoom_money_transfer" style="width: 100% !important;margin-bottom:20px" required>
                    <input type="text" name="swifttransfer_holder_name"  placeholder="A/c Holder Name" id="account_id" class="swift_transfer" style="width: 100% !important;margin-bottom:20px" required>
                    <input type="text" name="directbankdeposit_holder_name"  placeholder="A/c Holder Name" id="account_id" class="direct_bank_deposit" style="width: 100% !important;margin-bottom:20px" required>
                    <input type="text" name="buyvirtualcard_email_address"  placeholder="Email Address" id="account_id" class="buy_virtual_card" style="width: 100% !important;margin-bottom:20px" required>
                    <input type="text" name="mobilewallet_full_name"  placeholder="Full Name" id="account_id" class="mobile_wallet" style="width: 100% !important;margin-bottom:20px" required>
                    <input type="text" name=""  placeholder="Wallet Address" id="account_id" class="payco" style="width: 100% !important;margin-bottom:20px" required>
                    
                    <input type="text" name="entromoney_wallet_address"  placeholder="Wallet Address" id="account_id" class="entromoney" style="width: 100% !important;margin-bottom:20px" required>
                    <input type="text" name="yandexmoney_email_address"  placeholder="Email Address" id="account_id" class="yandex_money" style="width: 100% !important;margin-bottom:20px" required>
                    <input type="text" name="googlepay_gmail_id"  placeholder="Gmail ID" id="account_id" class="google_pay" style="width: 100% !important;margin-bottom:20px" required>
                    <input type="text" name="bankwire_swift_card"  placeholder="Swift Card" id="account_id" class="bank_wire" style="width: 100% !important;margin-bottom:20px;" required>
                    <input type="text" name="bankwire_bank_name"  placeholder="Bank Name" id="account_id" class="bank_wire" style="width: 100% !important;margin-bottom:20px;" required>
                    <input type="text" name="bankwire_iban"  placeholder="IBAN" id="account_id" class="bank_wire" style="width: 100% !important;margin-bottom:20px;" required>
                    <input type="text" name="bankwire_country"  placeholder="Country" id="account_id" class="bank_wire" style="width: 100% !important;margin-bottom:20px;" required>
                    <input type="text" name="wordremit_swift_card"  placeholder="Swift Card" id="account_id" class="wordremit" style="width: 100% !important;margin-bottom:20px;" required>
                    <input type="text" name="wordremit_bank_name"  placeholder="Bank Name" id="account_id" class="wordremit" style="width: 100% !important;margin-bottom:20px;" required>
                    <input type="text" name="wordremit_iban"  placeholder="IBAN" id="account_id" class="wordremit" style="width: 100% !important;margin-bottom:20px;" required>
                    <input type="text" name="wordremit_country"  placeholder="Country" id="account_id" class="wordremit" style="width: 100% !important;margin-bottom:20px;" required>
                    <input type="text" name="westrenunion_address"  placeholder="Address" id="account_id" class="westren_union" style="width: 100% !important;margin-bottom:20px;" required>
                    <input type="text" name="westrenunion_country"  placeholder="Country" id="account_id" class="westren_union" style="width: 100% !important;margin-bottom:20px;" required>
                    <input type="text" name="westrenunion_phone_no"  placeholder="Phone No" id="account_id" class="westren_union" style="width: 100% !important;margin-bottom:20px;" required>
                    <input type="text" name="moneygram_address"  placeholder="Address" id="account_id" class="money_gram" style="width: 100% !important;margin-bottom:20px;" required>
                    <input type="text" name="moneygram_country"  placeholder="Country" id="account_id" class="money_gram" style="width: 100% !important;margin-bottom:20px;" required>
                    <input type="text" name="moneygram_phone_no"  placeholder="Phone No" id="account_id" class="money_gram" style="width: 100% !important;margin-bottom:20px;" required>
                    <input type="text" name="creditcard_expiry"  placeholder="Expiry m/y" id="account_id" class="credit_card" style="width: 100% !important;margin-bottom:20px;" required>
                    <input type="text" name="creditcard_cvv"  placeholder="CVV" id="account_id" class="credit_card" style="width: 100% !important;margin-bottom:20px;" required>
                    <input type="text" name="usbank_expiry"  placeholder="Expiry m/y" id="account_id" class="us_bank" style="width: 100% !important;margin-bottom:20px;" required>
                    <input type="text" name="usbank_cvv"  placeholder="CVV" id="account_id" class="us_bank" style="width: 100% !important;margin-bottom:20px;" required>
                    <input type="text" name="mobilewallet_phone_number"  placeholder="Phone Number" id="account_id" class="mobile_wallet" style="width: 100% !important;margin-bottom:20px;" required>
                    <input type="text" name="mobilepay_phone_number"  placeholder="Phone Number" id="account_id" class="mobile_pay" style="width: 100% !important;margin-bottom:20px;" required>
                    <input type="text" name="applepay_phone_number"  placeholder="Phone Number" id="account_id" class="apple_pay" style="width: 100% !important;margin-bottom:20px;" required>
                    <input type="text" name="venmomobilepayment_phone_number"  placeholder="Phone Number" id="account_id" class="venmo_mobile_payment" style="width: 100% !important;margin-bottom:20px;" required>
                    <input type="text" name="swifttransfer_swift_transfer"  placeholder="Swift Code" id="account_id" class="swift_transfer" style="width: 100% !important;margin-bottom:20px;" required>
                    <input type="text" name="swifttransfer_bank_name"  placeholder="Bank Name" id="account_id" class="swift_transfer" style="width: 100% !important;margin-bottom:20px;" required>
                    <input type="text" name="swifttransfer_iban"  placeholder="IBAN" id="account_id" class="swift_transfer" style="width: 100% !important;margin-bottom:20px;" required>
                    <input type="text" name="swifttransfer_country"  placeholder="Country" id="account_id" class="swift_transfer" style="width: 100% !important;margin-bottom:20px;" required>
                    <input type="text" name="directbankdeposit_swift_code"  placeholder="Swift Code" id="account_id" class="swift_transfer" style="width: 100% !important;margin-bottom:20px;" required>
                    <input type="text" name="directbankdeposit_bank_name"  placeholder="Bank Name" id="account_id" class="direct_bank_deposit" style="width: 100% !important;margin-bottom:20px;" required>
                    <input type="text" name="directbankdeposit_iban"  placeholder="IBAN" id="account_id" class="direct_bank_deposit" style="width: 100% !important;margin-bottom:20px;" required>
                    <input type="text" name="directbankdeposit_country"  placeholder="Country" id="account_id" class="direct_bank_deposit" style="width: 100% !important;margin-bottom:20px;" required>
                    <button type="submit" class="btn btn-primary mb-5 font-weight-bold" style="width:250px;background-color:#28A745;border:1px solid orange;height: 60px">Order Now</button>
                    
                </div>
            </div>
        </div>
        
    </div>
</form>
<div class="container-fluid">
    <div class=" card row table_rows mb-4 table-responsive mx-auto" style="background-color:white">
       
          
                <table class="table table-hover table-sm table-borderless">
                    <thead>
                        <tr>
                            <th>Icon</th>
                            <th class="mobile-hide">Coin Name</th>
                            <th >Price</th>
                            <th class="mobile-hide">Market Cap</th>
                            {{--  <th  class="mobile-hide" >Volume (24hr)</th>
                            <th  class="mobile-hide">Supply</th> --}}
                            <th  class="mobile-hide">Change (24hr)</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($View_Bit_Cry_Prices as  $Prices)
                        <tr>
                            <td scope="row">
                                {{--  <span class="sprite sprite-{{ $Prices->slug }} small_coin_logo"></span> --}}
                                <img src="https://www.blockchain.com/explorer-frontend/_next/image?url=https%3A%2F%2Fwww.cryptocompare.com{{ $Prices->img_url }}&w=96&q=75" alt="" class="img-thumbnail" width="50" height="50">
                            </td>
                            <td class="mobile-hide">
                            <div></span>
                        <strong>{{ $Prices->name }}</strong></div>
                        <div class="coin-code">{{ $Prices->symbol }}</div>
                    </td>
                    <td class="market_capital  sorting_1" style="font-size:19px;font-weight: 600;width: 310px">$ @php
                        echo CH::Get_Latest_Additional_price()[0]->cryptocurrency_additional_price +$Prices->price;
                    @endphp</td>
                    <td class="price mobile-hide" data-usd="17,819.1743" style="font-size:19px;font-weight: 600;">$ {{ $Prices->market_cap}}</td>
                    
                    <td class="increment change mobile-hide" style="font-size:19px;font-weight: 600;">$ {{ $Prices->percent_change_24h }}</td>
                </tr>
                @endforeach
            </tbody>
        </table>
        
   
   

</div>
</div>

<!-- ##### Course Area Start ##### -->
<div class="cryptos-feature-area section-padding-100-0">
<div class="container">

<div class="row">
    <!-- Single Course Area -->
    <div class="col-12 col-lg-6 col-xl-3">
        <div class="single-feature-area active mb-100  rounded text-justify">
            <i class="icon-safebox text-center"></i>
            <h3 class="text-center">Lorem Ipsum</h3>
            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
        </div>
    </div>
    <!-- Single Course Area -->
    <div class="col-12 col-lg-6 col-xl-3">
        <div class="single-feature-area active mb-100 rounded text-justify">
            <i class="icon-bitcoin text-center"></i>
            <h3 class="text-center">Lorem Ipsum</h3>
            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
        </div>
    </div>
    <!-- Single Course Area -->
    <div class="col-12 col-lg-6 col-xl-3">
        <div class="single-feature-area active mb-100 rounded text-justify">
            <i class="icon-exchange text-center"></i>
            <h3 class="text-center">Lorem Ipsum</h3>
            <p style="padding-bottom:25px">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
        </div>
    </div>
    <!-- Single Course Area -->
    <div class="col-12 col-lg-6 col-xl-3">
        <div class="single-feature-area active mb-100 rounded text-justify">
            <i class="icon-wallet text-center"></i>
            <h3 class="text-center">Lorem Ipsum</h3>
            <p style="padding-bottom:25px">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
        </div>
    </div>
</div>
</div>
</div>
<!-- ##### Course Area End ##### -->
<!-- ##### About Area Start ##### -->
<div class="container-fluid let_exchange_class" style="background-color:rgb(34, 39, 41) !important">
<div class="row">
<div class="col-md-1">
    
</div>
<div class="col-md-10">
    <h4 class="text-center text-white" style="margin-top:20px;">Lorem Ipsum</h4>
    <p class="text-justify text-white" style="margin-top: 30px">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
    {{-- <img src="img/download.jpg" width="600" style="margin-top:30px"> --}}
</div>
<div class="col-md-1">
    
</div>

<div class="col-md-1">
    
</div>

</div>
<div class="row" style="padding-bottom:40px;">
<div class="col-md-1">
    
</div>
<div class="col-md-5 ">
    <img src="img/bitcoin.jpg" width="600" style="border-radius:20px;border:1px solid">
</div>
<div class="col-md-5">
    <p class="text-justify text-white">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
</div>
<div class="col-md-1">
    
</div>

</div>
</div>

<!-- ##### About Area End ##### -->
<!-- ##### Currency Area Start ##### -->
<section class="currency-calculator-area section-padding-100 bg-img bg-overlay" style="background-image: url(img/bg-img/bg-2.jpg);">
<div class="container">
<div class="row">
    <div class="col-12">
        <div class="section-heading text-center white mx-auto text-justify">
            <h4 class="mb-4 text-white">Lorem Ipsum</h4>
            {{-- <h5 class="mb-2">BTC to usd converter startup current exchange value in all popular currencies like american canadian dollar aud great british pound euro inr php or transfer to paypal.</h5> --}}
            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
        </div>
    </div>
</div>

</section>
<!-- ##### Currency Area End ##### -->
<!-- ##### Blog Area Start ##### -->
<section class="cryptos-blog-area section-padding-100" style="background-color: black;">
<div class="container card" style="padding: 40px;border-radius:20px">
    <div class="row align-items-center">
        <div class="col-12 col-lg-6">
            <div class="blog-area">
                <div class="single-blog-area d-flex align-items-start ">
                    <div class="blog-thumbnail">
                        <img src="img/blog-img/paypal (2).png" alt="" style="border-radius:20px">
                    </div>
                    <div class="blog-content">
                        <a href="#" class="post-title">Lorem Ipsum</a>
                        <p class="text-dark">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. </p>
                    </div>
                </div>
                <div class="single-blog-area d-flex align-items-start">
                    <div class="blog-thumbnail">
                        <img src="img/blog-img/perfectmoney.png" alt="" style="border-radius:20px">
                    </div>
                    <div class="blog-content">
                        <a href="#" class="post-title">Lorem Ipsum</a>
                        <p class="text-dark">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. </p>
                    </div>
                </div>
                <div class="single-blog-area d-flex align-items-start">
                    <div class="blog-thumbnail">
                        <img src="img/blog-img/withdraw.png" alt="" style="border-radius:20px">
                    </div>
                    <div class="blog-content">
                        <a href="#" class="post-title">Lorem Ipsum</a>
                        <p class="text-dark">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. </p>
                    </div>
                </div>
                <div class="single-blog-area d-flex align-items-start">
                    <div class="blog-thumbnail">
                        <img src="img/blog-img/westernunio.png" alt="" style="border-radius:20px;height: 90px">
                    </div>
                    <div class="blog-content">
                        <a href="#" class="post-title">Lorem Ipsum</a>
                        <p class="text-dark">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. </p>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-12 col-lg-6">
            <div class="blog-area">
                <div class="single-blog-area d-flex align-items-start">
                    <div class="blog-thumbnail">
                        {{-- <img src="img/blog-img/1.jpg" alt="" style="border-radius:20px"> --}}
                        <img src="img/blog-img/paypal (2).png" alt="" style="border-radius:20px">
                    </div>
                    <div class="blog-content">
                        <a href="#" class="post-title">Lorem Ipsum</a>
                        
                        <p class="text-dark">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. </p>
                    </div>
                </div>
                <div class="single-blog-area d-flex align-items-start">
                    <div class="blog-thumbnail">
                        {{-- <img src="img/blog-img/1.jpg" alt="" style="border-radius:20px"> --}}
                        <img src="img/blog-img/perfectmoney.png" alt="" style="border-radius:20px">
                    </div>
                    <div class="blog-content">
                        <a href="#" class="post-title">Lorem Ipsum</a>
                        
                        <p class="text-dark">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. </p>
                    </div>
                </div>
                <div class="single-blog-area d-flex align-items-start">
                    <div class="blog-thumbnail">
                        {{-- <img src="img/blog-img/2.jpg" alt="" style="border-radius:20px"> --}}
                        <img src="img/blog-img/withdraw.png" alt="" style="border-radius:20px">
                    </div>
                    <div class="blog-content">
                        <a href="#" class="post-title">Lorem Ipsum</a>
                        <p class="text-dark">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. </p>
                    </div>
                </div>
                <div class="single-blog-area d-flex align-items-start">
                    <div class="blog-thumbnail">
                        {{-- <img src="img/blog-img/3.jpg" alt="" style="border-radius:20px"> --}}
                        <img src="{{ asset('img/blog-img/westernunio.png') }}" alt="" style="border-radius:20px;height: 90px">
                    </div>
                    <div class="blog-content">
                        <a href="#" class="post-title">Lorem Ipsum</a>
                        <p class="text-dark">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    
</section>
<!-- ##### Blog Area End ##### -->
<!-- Newsletter Area -->
<div class="container-fluid" style="background-color:black;padding-left:130px;padding-right:130px;padding-bottom:40px">
    <div class="row">
        <div class="col-12">
            <div class="newsletter-area mt-100" style="border-radius:20px;">
                <div class="section-heading mx-auto">
                    <h3 class="text-white text-center">Lorem Ipsum</h3>
                    <p class="text-justify text-white">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. </p>
                </div>
                <div class="row">
                    <div class="col-md-3">
                        
                    </div>
                    <div class="col-md-5 ">
                        <img src="img/profile_image.jpg" class="rounded-circle">
                    </div>
                    <div class="col-md-4">
                        <h3>Author Profile</h3><br><br>
                        <strong>Name :</strong><span>Lorem Ipsum</span><br><br>
                        <strong>Date of birth : </strong><span>01/01/0001</span><br><br>
                        <strong>Address:</strong><span>Lorem Ipsum</span><br><br>
                        <strong>Article post date : </strong><span>01/01/0001</span><br><br>
                        <strong>Last updated :</strong><span>none</span><br><br>
                        <strong>Total Views : </strong><span>00000</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
@section('footer')
<script >
$(document).ready(function () {

$('.paypal').prop('required',true);
function GetbtcConvertedValues(){
// $('.loader').show();
var   coinid=$('option:selected').attr('coin-id');

var coinVal= $('.bitcoin_valuefConverion').val();
var coinType= $('.cointType').val();
var currencyVal= $('.bitcoin_converted_amount').val();
var currencyType= $('.currencyType').val();
console.log(coinVal,coinType,currencyVal,currencyType,coinid);
// $('.loader').show();
$.ajax({
url:"{{ route('converter') }}",
type:"POST",
dataType:"json",
data:{coinVal:coinVal,coinType:coinType,currencyVal:currencyVal,currencyType:currencyType,coinid:coinid,_token:"{{ csrf_token() }}"},
success:function(res)
{



var multipyCount=res.PRICE*coinVal;

var converted_amount= + multipyCount + +{{ CH::Get_Latest_Additional_price()[0]->cryptocurrency_additional_price }};

$('.bitcoin_converted_amount').val(converted_amount);

$('.coiniconlive').html('<img src="https://www.blockchain.com/explorer-frontend/_next/image?url=https%3A%2F%2Fwww.cryptocompare.com'+res.IMAGEURL+'&amp;w=96&amp;q=75" alt="" class="img-thumbnail" width="50" height="50">');

$('.loader').hide();
},
error: function(XMLHttpRequest, textStatus, errorThrown) {
console.log("Status: " + textStatus); console.log("Error: " + errorThrown);console.log("Error: " + errorThrown);
}
});

}
GetbtcConvertedValues();

$(".bitcoin_valuefConverion,.cointType,.currencyType").change(function() {

GetbtcConvertedValues();
});


$('#coins-info-table').DataTable( {

"pageLength": 25
} );
});
</script>
<style type="text/css">

.coin-code {
display: inline-block;
font-size: 10px;
padding: 2px 5px;
border: 1px solid #fcc118;
color: #fcc118;
border-radius: 4px;
margin-right: 10px;
}
.navbar-toggle {
margin-top: 25px;
}
table.dataTable thead th {
position: relative;
background-image: none !important;
}
table.dataTable thead th.sorting:after, table.dataTable thead th.sorting_asc:after, table.dataTable thead th.sorting_desc:after {
position: absolute;
top: 12px;
right: 8px;
display: block;

}

.navbar-inverse {
background-color: #101820;
border-color: #101820;
margin-bottom: 0px;
}
.navbar-brand {
float: left;
height: 50px;
padding: 33px 30px 50px 0px;
font-size: 18px;
line-height: 20px;
}
.navbar-inverse .navbar-nav>li>a {
color: #ffffff;
}
.well {
min-height: 20px;
padding: 19px;
margin-bottom: 20px;
background-color: #f9f9f9;
border: 1px solid #eee;
border-radius: 4px;
-webkit-box-shadow: none;
box-shadow: none;
}
tr.increment td{
background-color:rgba(0,255,0,.4)!important;
transition:all .7s ease;
}
tr.decrement td{
background-color:rgba(255,0,0,.4)!important;
transition:all .7s ease;
}
.container.content {
padding: 40px;
background: #fff;
}
.container.content.chart {
background: #f9f9f9;
padding: 40px;
border-top: 1px solid #eee;
border-bottom: 1px solid #eee;
}
.header-bar {
font-size: 16px;
padding: 15px 0 17px 0;
text-align: center;
background: #fcc118;
color: #fff;
}
.banner-ad {
text-align: center;
margin-bottom: 30px;
}
.banner-ad img {
max-width: 100%;
}
a.header-link:hover {
text-decoration: none;
}
.btn-value {
background: #fcc118;
color: #101820;
border: 2px solid #fcc118;
border-radius: 210px;
padding: 10px 25px;
font-weight: bold;
}
form.navbar-form.navbar-right {
padding: 15px 0;
}
.table>tbody>tr>td, .table>tbody>tr>th, .table>tfoot>tr>td, .table>tfoot>tr>th, .table>thead>tr>td, .table>thead>tr>th {
padding: 15px;
line-height: 1.42857143;
vertical-align: top;
border-top: 1px solid #ddd;
}
.coin-header {
font-size: 16px;
text-transform: uppercase;
font-weight: 600;
}
.tx {
}
footer {
background: #101820;
padding: 0px 0;
text-align: center;
}
footer img {
-webkit-filter: grayscale(100%);
-moz-filter: grayscale(100%);
-ms-filter: grayscale(100%);
-o-filter: grayscale(100%);
filter: grayscale(100%);
opacity: 0.3;
}
@keyframes fadein {
from {
opacity: 0;
}
to {
opacity: 1;
}
}
/* Firefox < 16 */
@-moz-keyframes fadein {
from {
opacity: 0;
}
to {
opacity: 1;
}
}
/* Safari, Chrome and Opera > 12.1 */
@-webkit-keyframes fadein {
from {
opacity: 0;
}
to {
opacity: 1;
}
}
/* Internet Explorer */
@-ms-keyframes fadein {
from {
opacity: 0;
}
to {
opacity: 1;
}
}
/* Opera < 12.1 */
@-o-keyframes fadein {
from {
opacity: 0;
}
to {
opacity: 1;
}
}
@media (min-width: 992px) {
/* 992px and above */
.affix-sidebar.affix {
top: 30px;
/* Top Position */
width: 294px;
/* Widget Width (small desktop) */
}
}
@media (min-width: 1200px) {
/* 1200px and above */
.affix-sidebar.affix {
width: 364px;
/* Widget Width (large desktop) */
}
}
@media (max-width: 991px) {
/* 991px and below */
.affix-sidebar.affix {
position: static;
}
.mobile-hide {
display: none;
}
.mobile-center {
text-align: center;
}
.mobile-center h2 {
margin-bottom: 30px;
}
.table-responsive {
border: 0px;
}
.well {
margin-bottom: 0px;
}
.col-lg-6 {
width: 50%;
display: inline-block;
}
.container.content {
padding: 15px 0;
}
}
@media (min-width: 768px) {
.navbar-nav>li>a {
padding-top: 35px;
padding-bottom: 35px;
}
}

#account_id
{
background-color:#e9ecef;
}
.paypal,.bank_wire,.westren_union,.perfect_money,.payza,.payoneer,.webmoney,.okpay,.skrill,.nettler,.dash,.money_gram,.credit_card,.instaforex,.solid_trust_pay,.us_bank,.advcash,.alipay_china,.paysafecard,.onecard,.sofort,.qivi_wallet,.entromoney,.mobile_wallet,.mobile_pay,.capital_one,.apple_pay,.chase_quick_pay,.transfer_wise,.venmo_mobile_payment,.xoom_mobile_payment,.swift_transfer,.direct_bank_deposit,.buy_gift_card,.buy_virtual_card,.google_pay,.yandex_money,.payco,.ria_money_transfer,.xoom_money_transfer,.wordremit,.select_currency_to,.select_currency{
display: none;
}
</style>
<script>
// let classesCss=[{paypal:'paypal'},{bank_wire:'bank_wire'},{westren_union:'westren_union'},{perfect_money:'perfect_money'},{payza:'payza'},{payoneer:'payoneer'},{webmoney:'webmoney'},{okpay:'okpay'},{skrill:'skrill'},{nettler:'nettler'},{dash:'dash'},{money_gram:'money_gram'},{credit_card:'credit_card'},{instaforex:'instaforex'},{solid_trust_pay:'solid_trust_pay'},{us_bank:'us_bank'},{advcash:'advcash'},{alipay_china:'alipay_china'},{paysafecard:'paysafecard'},{onecard:'onecard'},{sofort:'sofort'},{qivi_wallet:'qivi_wallet'},{entromoney:'entromoney'},{mobile_wallet:'mobile_wallet'},{mobile_pay:'mobile_pay'},{capital_one:'capital_one'},{apple_pay:'apple_pay'},{chase_quick_pay:'chase_quick_pay'},{transfer_wise:'transfer_wise'},{venmo_mobile_payment:'venmo_mobile_payment'},{xoom_mobile_payment:'chase_quick_pay'},{swift_transfer:'swift_transfer'},{direct_bank_deposit:'direct_bank_deposit'},{buy_gift_card:'buy_gift_card'},{buy_virtual_card:'buy_virtual_card'},{google_pay:'google_pay'},{yandex_money:'yandex_money'},{payco:'payco'},{ria_money_transfer:'ria_money_transfer'},{xoom_money_transfer:'xoom_money_transfer'}];

let classesCss=['paypal','bank_wire','westren_union','perfect_money','payza','payoneer','webmoney','okpay','skrill','nettler','dash','money_gram','credit_card','instaforex','solid_trust_pay','us_bank','advcash','alipay_china','paysafecard','onecard','sofort','qivi_wallet','entromoney','mobile_wallet','mobile_pay','capital_one','apple_pay','chase_quick_pay','transfer_wise','venmo_mobile_payment','chase_quick_pay','swift_transfer','direct_bank_deposit','buy_gift_card','buy_virtual_card','google_pay','yandex_money','payco','ria_money_transfer','xoom_money_transfer','wordremit'];

$('.paymentVal').on('change', function() {
classesCss.filter(word => word !=this.value);
classesCss.map(function(key, index) {

$('.'+key).hide();
$('.'+key).prop('required',false);
console.log(key);

});
$('.'+this.value).show();
$('.'+this.value).prop('required',true);
//alert( this.value );
});
</script>

{{-- Select Currency like BTC,ETH --}}
<script>
let classesCss1=['select_currency'];

$('.cointType').on('change', function() {
// alert(this.value);
if(this.value=="select_currency"){
alert("Please Select Currency");

}
else
{
classesCss1.filter(word => word !=this.value);
classesCss1.map(function(key1, index) {

$('.loader').show();
$('.'+key1).show();
$('.'+key1).prop('required',false);
console.log(key1);

});
$('.'+this.value).hide();
$('.'+this.value).prop('required',true);
}

});
</script>
<script>
let classesCss2=['select_currency_to'];

$('.currencyType').on('change', function() {
classesCss2.filter(word => word !=this.value);
classesCss2.map(function(key2, index) {
$('.loader').show();
$('.'+key2).show();
$('.'+key2).prop('required',false);
console.log(key2);

});
// $('.loader').hide();
$('.'+this.value).hide();

$('.'+this.value).prop('required',true);
});
</script>
@endsection