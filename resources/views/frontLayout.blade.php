<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="description" content="">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- Title -->
        <title>@yield('title')</title>
        {{-- include all css files and meta tags --}}
        <link rel="icon" href="{{ asset('img/core-img/favicon.ico') }}">
        <link rel="stylesheet" href="{{ asset('style.css') }}">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link rel="stylesheet" href=" https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css">
        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.22/css/dataTables.bootstrap4.min.css">
        <!-- Core Stylesheet -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA==" crossorigin="anonymous" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" />
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous" />
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,200;0,300;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
        
        <style type="text/css">
        
        #preloader {
        display: none !important;
        }
        .loader {
        left: 0;
        top: 0;
        width: 100%;
        height: 100%;
        position: fixed;
        background: #1e1d1d82;
        z-index: 100;
        }
        .overlay__inner {
        left: 0;
        top: 0;
        width: 100%;
        height: 100%;
        position: absolute;
        }
        .overlay__content {
        left: 50%;
        position: absolute;
        top: 50%;
        transform: translate(-50%, -50%);
        }
        .spinner {
        width: 120px;
        height: 120px;
        background: transparent;
        border: 16px solid #f3f3f3;
        border-radius: 50% !important;
        border-top: 16px solid #036EB5;
        display: inline-block;
        animation: spin 1s infinite linear;
        border-radius: 100%;
        border-style: solid;
        }
        html,body,p,h1,h2,h3,h4,h5,h6,span,label,div{
        font-family: poppins !important;
        }
        </style>
        <!-- Favicon -->
        
    </head>
    <body style="background-color: black">
        {{-- <form action="{{ URL::to('create-order') }}" method="POST">
            <input type="submit" name="">
        </form> --}}
        <!-- ##### Preloader ##### -->
        {{-- <div id="preloader">
            <i class="circle-preloader"></i>
        </div> --}}
        <div class="loader" style="">
            <div class="overlay__inner">
                <div class="overlay__content"><span class="spinner"></span></div>
            </div>
        </div>
        <!-- ##### Header Area Start ##### -->
        <header class="header-area" style="background-color: rgb(34, 39, 41) !important;";>
            
            <!-- Navbar Area -->
            <div class="cryptos-main-menu" style="background-color: rgb(34, 39, 41) !important">
                <div class="classy-nav-container breakpoint-off" style="background-color: rgb(34, 39, 41) !important">
                    <div class="container" style="border-bottom: 1px solid white;">
                        <!-- Menu -->
                        <nav class="classy-navbar justify-content-between" id="cryptosNav" style="background-color: rgb(34, 39, 41) !important">
                            {{-- <a class="nav-brand" href=""><img src="img/logo3.webp" alt=""></a> --}}
                            <a href="/">
                                
                                <img src="{{ asset('img/Logo final- white back-01.png') }}" class="img-fluid" style="width:170px;height: 130px;">
                            </a>
                            <div class="classy-navbar-toggler">
                                <span class="navbarToggler"><span></span><span></span><span></span></span>
                            </div>
                            <div class="classy-menu">
                                <div class="classycloseIcon">
                                    <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
                                </div>
                                <div class="classynav">
                                    <h4 style="margin-right:30px;color: orange">Bitcoin:$ @php
                                    echo CH::Get_Latest_Bitcoin_value()[0]->price+
                                    CH::Get_Latest_Additional_price()[0]->cryptocurrency_additional_price;
                                    @endphp</h4>
                                    <ul >
                                        <li><a href="/" style="color: orange">Home</a></li>
                                        <li><a href="#"  style="color:orange">Sell/Buy</a></li>
                                        <li><a href="#" style="color:orange">Exchange</a></li>
                                        <li><a href="#" style="color:orange">Marketplace</a></li>
                                        <li><a href="#" style="color:orange">Contact</a></li>
                                    </ul>
                                </div>
                            </div>
                        </nav>
                    </div>
                </div>
            </div>
        </header>
        @yield('content')
        <!-- ##### Footer Area Start ##### -->
        <footer class="footer-area">
            <!-- Main Footer Area -->
            <div class="main-footer-area section-padding-100 bg-overlay" style="background-color:rgb(34, 39, 41)">
                {{-- background-image: url(img/bg-img/bg-1.jpg); --}}
                <div class="container">
                    <div class="row">
                        <!-- Footer Widget Area -->
                        <div class="col-12 col-sm-6 col-lg-4">
                            
                            <div class="footer-widget mb-100">
                                <div class="widget-title">
                                    <h6>ABOUT COMPANY</h6>
                                </div>
                                <div class="single--blog-post">
                                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                                </div>
                                {{--  <div class="single--blog-post">
                                    <a href="#">
                                        <p>1 btc to cad rate Canada local trading</p>
                                    </a>
                                </div>
                                <div class="single--blog-post">
                                    <a href="#">
                                        <p>Best exchange to sell bit coin for cash</p>
                                    </a>
                                </div>
                                <div class="single--blog-post">
                                    <a href="#">
                                        <p>Convert bitcoin to Australian dollars</p>
                                    </a>
                                </div> --}}
                                
                            </div>
                        </div>
                        <div class="col-12 col-sm-6 col-lg-4">
                            
                            <div class="footer-widget mb-100">
                                <div class="widget-title">
                                    <h6>MOST POPULAR TOP PAGES</h6>
                                </div>
                                <div class="single--blog-post">
                                    <a href="#">
                                        <p>Home</p>
                                    </a>
                                </div>
                                <div class="single--blog-post">
                                    <a href="#">
                                        <p>Sell/Buy</p>
                                    </a>
                                </div>
                                <div class="single--blog-post">
                                    <a href="#">
                                        <p>Exchange</p>
                                    </a>
                                </div>
                                
                            </div>
                        </div>
                        <div class="col-12 col-sm-6 col-lg-4">
                            
                            <div class="footer-widget mb-100">
                                <div class="widget-title">
                                    <h6>X-UA-Compatible</h6>
                                </div>
                                <div class="single--blog-post">
                                    <a href="#">
                                        <p>Instant transfer btc to moneygram</p>
                                    </a>
                                </div>
                                <div class="single--blog-post">
                                    <a href="#">
                                        <p>Spend btc usd to inr western union</p>
                                    </a>
                                </div>
                                <div class="single--blog-post">
                                    <a href="#"><p>Sell btc to wmz conversion calculator</p></a>
                                </div>
                                
                            </div>
                        </div>
                        
                    </div>
                </div>
            </div>
            <div class="bottom-footer-area" style="background-color: rgb(34, 39, 41)">
                <div class="container h-100">
                    <div class="row h-100 align-items-center justify-content-center ">
                        <div class="col-12">
                            <p class="text-white">
                                Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="#" target="_blank">SBSS</a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <!-- ##### Footer Area Start ##### -->
        <!-- ##### All Javascript Script ##### -->
        <!-- jQuery-2.2.4 js -->
        <script src="{{ asset('js/jquery/jquery-2.2.4.min.js') }}"></script>
        <!-- Popper js -->
        <script src="{{ asset('js/bootstrap/popper.min.js') }}"></script>
        <!-- Bootstrap js -->
        <script src="{{ asset('js/bootstrap/bootstrap.min.js') }}"></script>
        <!-- All Plugins js -->
        <script src="{{ asset('js/plugins/plugins.js') }}"></script>
        <!-- Active js -->
        <script src="{{ asset('js/active.js') }}"></script>
        <script src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js" type="text/javascript"></script>
        <script type="text/javascript" language="javascript" src="https://cdn.datatables.net/1.10.22/js/dataTables.bootstrap4.min.js"></script>
        <script type="text/javascript">
        $(document).ready(function() {
        $(".loader").fadeOut(3000);
        });
        </script>
        
        @yield('footer')
    </body>
</html>