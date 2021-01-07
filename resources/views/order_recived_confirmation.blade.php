@extends('frontLayout')
@section('title', 'Home')
@section('content')

<div class="container my-5 card" style="background-image:url(img/bg-img/bg-2.jpg);    position: relative;
    z-index: 2;
    background-position: center center;
    background-size: cover;
    background-position: center center;
    background-size: cover;
    background-repeat: no-repeat;
    border: 1px solid white;
    background-color: black ">
    <h1 style="text-align:center;margin-top:50px;color: white">Order Received</h1>
    <h2 style="text-align:center;margin-top:50px;color: white">....</h2>
    <p style="text-align: center;"><img src="thanks1.png" alt="Bitcoin Card" class="" width="200" height="180" style="" /></p>
    <div style="text-align:center;margin-top:70px;margin-bottom:80px;">
    <h4><strong style="color: white"> Thanks, We have Receive your order, Now it is on Manual
    review,</br></br></br> Soon you will receive your payment in your account.</strong><h4>
</div>
</div>

@endsection
@section('footer')
@endsection