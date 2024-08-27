<?php
session_start();
error_reporting(0);
include('conf/config.php');
?>
<!------------------------------------------------------------------------------------------------------------------------------------------------>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Title -->
    <title>Bus Search list - Immitours </title>
    <!-- Bootstrap css -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css" />
    <!-- animate css -->
    <link rel="stylesheet" href="assets/css/animate.min.css" />
    <!-- Fontawesome css -->
    <link rel="stylesheet" href="assets/css/fontawesome.all.min.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.2/font/bootstrap-icons.css">
    <!-- owl.carousel css -->
    <link rel="stylesheet" href="assets/css/owl.carousel.min.css" />
    <!-- Rangeslider css -->
    <link rel="stylesheet" href="assets/css/nouislider.css" />
    <!-- owl.theme.default css -->
    <link rel="stylesheet" href="assets/css/owl.theme.default.min.css" />
    <!-- navber css -->
    <link rel="stylesheet" href="assets/css/navber.css" />
    <!-- meanmenu css -->
    <link rel="stylesheet" href="assets/css/meanmenu.css" />
    <!-- Style css -->
    <link rel="stylesheet" href="assets/css/style.css" />
    <!-- Responsive css -->
    <link rel="stylesheet" href="assets/css/responsive.css" />
    <!-- Favicon -->
    <link rel="icon" type="image/png" href="assets/img/logo_immi.png">
</head>

<body>
    <!-- preloader Area -->
    <div class="preloader">
        <div class="d-table">
            <div class="d-table-cell">
                <div class="lds-spinner">
                    <div></div>
                    <div></div>
                    <div></div>
                    <div></div>
                    <div></div>
                    <div></div>
                    <div></div>
                    <div></div>
                    <div></div>
                    <div></div>
                    <div></div>
                    <div></div>
                </div>
            </div>
        </div>
    </div>

    <!-- Header Area -->
    <header class="main_header_arae">
        <!-- Top Bar -->
        <
        <!-- Navbar Bar -->
        <div class="navbar-area">
            <div class="main-responsive-nav">
                <div class="container">
                    <div class="main-responsive-menu">
                        <div class="logo">
                            <a href="home.php">
                                <img src="assets/img/Immi_banner.png" alt="logo">
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="main-navbar">
                <div class="container">
                    <nav class="navbar navbar-expand-md navbar-light">
                        <a class="navbar-brand" href="home.php">
                            <img src="assets/img/logo_immi.png" alt="logo">
                        </a>
                        <div class="collapse navbar-collapse mean-menu" id="navbarSupportedContent">
                            <ul class="navbar-nav">
                                <li class="nav-item">
                                    <a href="home.php" class="nav-link">
                                        Home
                                        <!-- <i class="fas fa-angle-down"></i> -->
                                    </a>
                                    <!-- <ul class="dropdown-menu">
                                        <li class="nav-item">
                                            <a href="index.php" class="nav-link">Home</a>
                                        </li>
                                        
                                    </ul> -->
                                </li>
                                <li class="nav-item">
                                    <a href="#" class="nav-link active">
                                        Categories
                                        <i class="fas fa-angle-down"></i>
                                    </a>
                                    <ul class="dropdown-menu">
                                        <li class="nav-item">
                                            <a href="#" class="nav-link">
                                                Tours
                                            </a>
                                            <ul class="dropdown-menu">
                                                <li class="nav-item">
                                                    <a href="tour-search.php" class="nav-link">Tour Grid</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="tour-search-list.php" class="nav-link">Tour List</a>
                                                </li>
                                            
                                                <li class="nav-item">
                                                    <a href="tour-details.php" class="nav-link">Tour Details</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="tour-booking-submission.php" class="nav-link">Tour Booking</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="top-destinations.php" class="nav-link">Top Destination</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="top-destinations-details.php" class="nav-link">Destination
                                                        Details</a>
                                                </li>
                                            </ul>
                                        </li>
                                        
                                        <li class="nav-item">
                                            <a href="#" class="nav-link active">
                                                Hotel
                                            </a>
                                            <ul class="dropdown-menu">
                                                <li class="nav-item">
                                                    <a href="hotel-search.php" class="nav-link active">Hotel Grid</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="hotel-search-list.php" class="nav-link">Hotel List</a>
                                                </li>
                                                
                                                <li class="nav-item">
                                                    <a href="hotel-details.php" class="nav-link">Hotel Booking</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="room-details.php" class="nav-link">Room Details</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="room-booking.php" class="nav-link">Room Booking</a>
                                                </li>
                                            </ul>
                                        </li>
                                        
                                        <li class="nav-item">
                                            <a href="#" class="nav-link">
                                                Apartments
                                            </a>
                                            <ul class="dropdown-menu">
                                                <li class="nav-item">
                                                    <a href="apartment-search.php" class="nav-link">Apartments Grid</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="apartment-search-list.php" class="nav-link">Apartments List</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="apartment-details.php" class="nav-link">Apartments Details</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="apartment-booking.php" class="nav-link">Apartments Booking</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li class="nav-item">
                                            <a href="#" class="nav-link">
                                                Bus
                                            </a>
                                            <ul class="dropdown-menu">
                                                <li class="nav-item">
                                                    <a href="bus-search-list.php" class="nav-link">Bus</a>
                                                </li>
                                               <!--  <li class="nav-item">
                                                    <a href="bus-search-map.php" class="nav-link">Bus Map</a>
                                                </li> -->
                                                <li class="nav-item">
                                                    <a href="bus-booking.php" class="nav-link">Bus Booking</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li class="nav-item">
                                            <a href="#" class="nav-link">
                                                Train
                                            </a>
                                            <ul class="dropdown-menu">
                                                <li class="nav-item">
                                                    <a href="train-search-list.php" class="nav-link">Train</a>
                                                </li>
                                                <!-- <li class="nav-item">
                                                    <a href="train-search-map.php" class="nav-link">Train Map</a>
                                                </li> -->
                                                
                                                <li class="nav-item">
                                                    <a href="train-booking.php" class="nav-link">Train Booking</a>
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                                <li class="nav-item">
                                    <a href="#" class="nav-link">
                                        Pages
                                        <i class="fas fa-angle-down"></i>
                                    </a>
                                    <ul class="dropdown-menu">
                                        <li class="nav-item">
                                            <a href="about.php" class="nav-link">About</a>
                                        </li>
                                        <li class="nav-item">
                                            <a href="tour-guides.php" class="nav-link">Team</a>
                                        </li>
                                        <!-- <li class="nav-item">
                                            <a href="testimonials.php" class="nav-link">Testimonials</a>
                                        </li>
                                        <li class="nav-item">
                                            <a href="faqs.php" class="nav-link">FAQ</a>
                                        </li> -->
                                        <li class="nav-item">
                                            <a href="booking-confirmation.php" class="nav-link">Booking Confirmation</a>
                                        </li>
                                        <li class="nav-item">
                                            <a href="become-expert.php" class="nav-link">Become Expert </a>
                                        </li>
                                        <!-- <li class="nav-item">
                                            <a href="#" class="nav-link">User Pages</a>
                                            <ul class="dropdown-menu">
                                                <li class="nav-item">
                                                    <a href="login.php" class="nav-link">Login</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="register.php" class="nav-link">Register</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="forgot-password.php" class="nav-link">Forget Password</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="verify-otp.php" class="nav-link">Verify OTP</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="reset-password.php" class="nav-link">Reset Password</a>
                                                </li>
                                            </ul>
                                        </li> -->
                                       
                                        <!-- <li class="nav-item">
                                            <a href="privacy-policy.php" class="nav-link">Privacy Policy</a>
                                        </li>
                                        <li class="nav-item">
                                            <a href="error.php" class="nav-link">404 Error</a>
                                        </li> -->
                                    </ul>
                                </li>
                                <li class="nav-item">
                                    <a href="#" class="nav-link">Dashboard  <i class="fas fa-angle-down"></i></a>
                                    <ul class="dropdown-menu">
                                        <li class="nav-item">
                                            <a href="dashboard.php" class="nav-link">Dashboard</a>
                                        </li>
                                        <li class="nav-item">
                                            <a href="hotel-booking.php" class="nav-link">Hotel booking</a>
                                        </li>
                                        <li class="nav-item">
                                            <a href="train-booking.php" class="nav-link">Train booking</a>
                                        </li>
                                        <li class="nav-item">
                                            <a href="tour-booking.php" class="nav-link">Tour booking</a>
                                        </li>
                                        <li class="nav-item">
                                            <a href="booking-history.php" class="nav-link">Booking history</a>
                                        </li>
                                        <li class="nav-item">
                                            <a href="my-profile.php" class="nav-link">My profile</a>
                                        </li>
                                        <!-- <li class="nav-item">
                                            <a href="wallet.php" class="nav-link">Wallet</a>
                                        </li>
                                        <li class="nav-item">
                                            <a href="notification.php" class="nav-link">Notifications</a>
                                        </li> -->
                                    </ul>
                                </li>
                                <li class="nav-item">
                                    <a href="news.php" class="nav-link">News <!-- <i class="fas fa-angle-down"></i> --></a>
                                    <!-- <ul class="dropdown-menu">
                                        <li class="nav-item">
                                            <a href="news.php" class="nav-link">News</a>
                                        </li>
                                      
                                        <li class="nav-item">
                                            <a href="news-details.php" class="nav-link">News Details</a>
                                        </li>
                                    </ul> -->
                                </li>
                                <li class="nav-item">
                                    <a href="contact.php" class="nav-link">Contact <!-- <i class="fas fa-angle-down"></i> --></a>
                                    <!-- <ul class="dropdown-menu">
                                        <li class="nav-item">
                                            <a href="contact.php" class="nav-link">Contact</a>
                                        </li>
                                       
                                    </ul> -->
                                </li>
                            </ul>
                            <div class="others-options d-flex align-items-center">
                                <div class="option-item">
                                    <a href="#" class="search-box">
                                        <i class="bi bi-search"></i>
                                    </a>
                                </div>
                                <div class="option-item">
                                    <a href="become-vendor.php" class="btn  btn_navber">Become a partner</a>
                                </div>
                            </div>
                        </div>
                    </nav>
                </div>
            </div>
            <div class="others-option-for-responsive">
                <div class="container">
                    <div class="dot-menu">
                        <div class="inner">
                            <div class="circle circle-one"></div>
                            <div class="circle circle-two"></div>
                            <div class="circle circle-three"></div>
                        </div>
                    </div>
                    <div class="container">
                        <div class="option-inner">
                            <div class="others-options d-flex align-items-center">
                                <div class="option-item">
                                    <a href="#" class="search-box"><i class="fas fa-search"></i></a>
                                </div>
                                <div class="option-item">
                                    <a href="contact.php" class="btn  btn_navber">Get free quote</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>

     <!-- search -->
     <div class="search-overlay">
        <div class="d-table">
            <div class="d-table-cell">
                <div class="search-overlay-layer"></div>
                <div class="search-overlay-layer"></div>
                <div class="search-overlay-layer"></div>
                <div class="search-overlay-close">
                    <span class="search-overlay-close-line"></span>
                    <span class="search-overlay-close-line"></span>
                </div>
                <div class="search-overlay-form">
                    <form>
                        <input type="text" class="input-search" placeholder="Search here...">
                        <button type="button"><i class="fas fa-search"></i></button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Common Banner Area -->
    <section id="common_banner">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="common_bannner_text">
                        <h2>Bus search result</h2>
                        <ul>
                            <li><a href="home.php">Home</a></li>
                            <li><span><i class="fas fa-circle"></i></span> Bus</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
<!-- ----------------------------------------- Search Hotel ------------------------------------------------------------------ -->

   

    <!-- Form Area -->
    <section id="theme_search_form_tour">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="theme_search_form_area">
                        <div class="theme_search_form_tabbtn">
                            <ul class="nav nav-tabs" role="tablist">

                                
                                
                                <li class="nav-item" role="presentation">
                                    <button class="nav-link active" id="bus-tab" data-bs-toggle="tab"
                                        data-bs-target="#bus" type="button" role="tab" aria-controls="bus"
                                        aria-selected="false"><i class="fas fa-bus"></i> Bus</button>
                                </li>

                            </ul>
                        </div>

                        <div class="tab-content" id="myTabContent">
                            <div class="tab-pane fade show active" id="bus" role="tabpanel"
                                aria-labelledby="bus-tab">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="flight_categories_search">
                                            <ul class="nav nav-tabs" role="tablist">
                                                <li class="nav-item" role="presentation">
                                                    <button class="nav-link active" id="oneway-tab" data-bs-toggle="tab"
                                                        data-bs-target="#oneway_flight" type="button" role="tab"
                                                        aria-controls="oneway_flight" aria-selected="true">One
                                                        Way</button>
                                                </li>
                                                <li class="nav-item" role="presentation">
                                                    <button class="nav-link" id="roundtrip-tab" data-bs-toggle="tab"
                                                        data-bs-target="#roundtrip" type="button" role="tab"
                                                        aria-controls="roundtrip"
                                                        aria-selected="false">Roundtrip</button>
                                                </li>
                                                <li class="nav-item" role="presentation">
                                                    <button class="nav-link" id="multi_city-tab" data-bs-toggle="tab"
                                                        data-bs-target="#multi_city" type="button" role="tab"
                                                        aria-controls="multi_city" aria-selected="false">Multi
                                                        city</button>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            <div class="tab-content" id="myTabContent1">
                            <div class="tab-pane fade show active" id="bus" role="tabpanel" aria-labelledby="bus-tab">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="tour_search_form">
                                            <form action="#!">
                                                <div class="row">
                                                    <div class="col-lg-12">
                                                        <div class="oneway_search_form">
                                                            <form action="#!">
                                                                <div class="row">
                                                                    <div class="col-lg-3 col-md-6 col-sm-12 col-12">
                                                                        <div class="flight_Search_boxed">
                                                                            <p>From</p>
                                                                            <input type="text" value="Gampola">
                                                                            <span>Bus Trtminal</span>
                                                                            <div class="plan_icon_posation">
                                                                                <i class="fas fa-plane-departure"></i>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-lg-3 col-md-6 col-sm-12 col-12">
                                                                        <div class="flight_Search_boxed">
                                                                            <p>To</p>
                                                                            <input type="text" value="Kandy ">
                                                                            <span>Bus Trtminal</span>
                                                                            <div class="plan_icon_posation">
                                                                                <i class="fas fa-plane-arrival"></i>
                                                                            </div>
                                                                            <div class="range_plan">
                                                                                <i class="fas fa-exchange-alt"></i>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-lg-4  col-md-6 col-sm-12 col-12">
                                                                        <div class="form_search_date">
                                                                            <div class="flight_Search_boxed date_flex_area">
                                                                                <div class="Journey_date">
                                                                                    <p>Journey date</p>
                                                                                    <input type="date" value="2024-07-05">
                                                                                    <span>Thursday</span>
                                                                                </div>
                                                                                <div class="Journey_date">
                                                                                    <p>Return date</p>
                                                                                    <input type="date" value="2024-07-08">
                                                                                    <span>Saturday</span>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-lg-2  col-md-6 col-sm-12 col-12">
                                                                        <div
                                                                            class="flight_Search_boxed dropdown_passenger_area">
                                                                            <p>Passenger, Class </p>
                                                                            <div class="dropdown">
                                                                                <button class="dropdown-toggle final-count"
                                                                                    data-toggle="dropdown" type="button"
                                                                                    id="dropdownMenuButton1"
                                                                                    data-bs-toggle="dropdown"
                                                                                    aria-expanded="false">
                                                                                    0 Passenger
                                                                                </button>
                                                                                <div class="dropdown-menu dropdown_passenger_info"
                                                                                    aria-labelledby="dropdownMenuButton1">
                                                                                    <div class="traveller-calulate-persons">
                                                                                        <div class="passengers">
                                                                                            <h6>Passengers</h6>
                                                                                            <div class="passengers-types">
                                                                                                <div class="passengers-type">
                                                                                                    <div class="text"><span
                                                                                                            class="count pcount">2</span>
                                                                                                        <div class="type-label">
                                                                                                            <p>Adult</p>
                                                                                                            <span>12+
                                                                                                                yrs</span>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                    <div class="button-set">
                                                                                                        <button type="button"
                                                                                                            class="btn-add">
                                                                                                            <i
                                                                                                                class="fas fa-plus"></i>
                                                                                                        </button>
                                                                                                        <button type="button"
                                                                                                            class="btn-subtract">
                                                                                                            <i
                                                                                                                class="fas fa-minus"></i>
                                                                                                        </button>
                                                                                                    </div>
                                                                                                </div>
                                                                                                <div class="passengers-type">
                                                                                                    <div class="text"><span
                                                                                                            class="count ccount">0</span>
                                                                                                        <div class="type-label">
                                                                                                            <p
                                                                                                                class="fz14 mb-xs-0">
                                                                                                                Children
                                                                                                            </p><span>2
                                                                                                                - Less than 12
                                                                                                                yrs</span>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                    <div class="button-set">
                                                                                                        <button type="button"
                                                                                                            class="btn-add-c">
                                                                                                            <i
                                                                                                                class="fas fa-plus"></i>
                                                                                                        </button>
                                                                                                        <button type="button"
                                                                                                            class="btn-subtract-c">
                                                                                                            <i
                                                                                                                class="fas fa-minus"></i>
                                                                                                        </button>
                                                                                                    </div>
                                                                                                </div>
                                                                                                <div class="passengers-type">
                                                                                                    <div class="text"><span
                                                                                                            class="count incount">0</span>
                                                                                                        <div class="type-label">
                                                                                                            <p
                                                                                                                class="fz14 mb-xs-0">
                                                                                                                Infant
                                                                                                            </p><span>Less
                                                                                                                than 2
                                                                                                                yrs</span>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                    <div class="button-set">
                                                                                                        <button type="button"
                                                                                                            class="btn-add-in">
                                                                                                            <i
                                                                                                                class="fas fa-plus"></i>
                                                                                                        </button>
                                                                                                        <button type="button"
                                                                                                            class="btn-subtract-in">
                                                                                                            <i
                                                                                                                class="fas fa-minus"></i>
                                                                                                        </button>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="cabin-selection">
                                                                                            <h6>Cabin Class</h6>
                                                                                            <div class="cabin-list">
                                                                                                <button type="button"
                                                                                                    class="label-select-btn">
                                                                                                    <span
                                                                                                        class="muiButton-label">Economy
                                                                                                    </span>
                                                                                                </button>
                                                                                                <button type="button"
                                                                                                    class="label-select-btn active">
                                                                                                    <span
                                                                                                        class="muiButton-label">
                                                                                                        Business
                                                                                                    </span>
                                                                                                </button>
                                                                                                <button type="button"
                                                                                                    class="label-select-btn">
                                                                                                    <span
                                                                                                        class="MuiButton-label">First
                                                                                                        Class </span>
                                                                                                </button>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <span>Business</span>
                                                                        </div>
                                                                    </div>
                                                                    <div class="top_form_search_button">
                                                                        <button class="btn btn_theme btn_md">Search</button>
                                                                    </div>
                                                                </div>
                                                            </form>
                                                        </div>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
<!------------------------------------------------------------------------------------------------------------------------------------------->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Bus Search Areas -->
    <section id="explore_area" class="section_padding">
        <div class="container">
            <!-- Section Heading -->
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-12">
                    <div class="section_heading_center">
                        <h2>38 Bus found</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-3">
                    <div class="left_side_search_area">
                        <div class="left_side_search_boxed">
                            <div class="item_searc_map_area">
                                <iframe
                                    src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3677.6962663570607!2d89.56355961427838!3d22.813715829827952!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39ff901efac79b59%3A0x5be01a1bc0dc7eba!2sAnd+IT!5e0!3m2!1sen!2sbd!4v1557901943656!5m2!1sen!2sbd"></iframe>
                            </div>
                        </div>
                        <div class="left_side_search_boxed">
                            <div class="left_side_search_heading">
                                <h5>Search by name</h5>
                            </div>
                            <div class="name_search_form">
                                <input type="text" class="form-control" placeholder="e.g Deluxe bus">
                                <i class="fas fa-search"></i>
                            </div>
                        </div>
                        <div class="left_side_search_boxed">
                            <div class="left_side_search_heading">
                                <h5>Filter by price</h5>
                            </div>
                            <div class="filter-price">
                                <div id="price-slider"></div>
                            </div>
                            <button class="apply" type="button">Apply</button>
                        </div>
                        <div class="left_side_search_boxed">
                            <div class="left_side_search_heading">
                                <h5>Number of stops</h5>
                            </div>
                            <div class="tour_search_type">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultf1">
                                    <label class="form-check-label" for="flexCheckDefaultf1">
                                        <span class="area_flex_one">
                                            <span>1 stop</span>
                                            <span>20</span>
                                        </span>
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultf2">
                                    <label class="form-check-label" for="flexCheckDefaultf2">
                                        <span class="area_flex_one">
                                            <span>2 stop</span>
                                            <span>16</span>
                                        </span>
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultf3">
                                    <label class="form-check-label" for="flexCheckDefaultf3">
                                        <span class="area_flex_one">
                                            <span>3 stop</span>
                                            <span>30</span>
                                        </span>
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultf4">
                                    <label class="form-check-label" for="flexCheckDefaultf4">
                                        <span class="area_flex_one">
                                            <span>Non-stop</span>
                                            <span>22</span>
                                        </span>
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="left_side_search_boxed">
                            <div class="left_side_search_heading">
                                <h5>Flight class</h5>
                            </div>
                            <div class="tour_search_type">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultt1">
                                    <label class="form-check-label" for="flexCheckDefaultt1">
                                        <span class="area_flex_one">
                                            <span>Economy</span>
                                            <span>20</span>
                                        </span>
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultt2">
                                    <label class="form-check-label" for="flexCheckDefaultt2">
                                        <span class="area_flex_one">
                                            <span>Business</span>
                                            <span>26</span>
                                        </span>
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="left_side_search_boxed">
                            <div class="left_side_search_heading">
                                <h5>Airlines</h5>
                            </div>
                            <div class="tour_search_type">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaults1">
                                    <label class="form-check-label" for="flexCheckDefaults1">
                                        <span class="area_flex_one">
                                            <span>Quatar Airways</span>
                                            <span>17</span>
                                        </span>
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaults2">
                                    <label class="form-check-label" for="flexCheckDefaults2">
                                        <span class="area_flex_one">
                                            <span>Fly Amirates </span>
                                            <span>14</span>
                                        </span>
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaults3">
                                    <label class="form-check-label" for="flexCheckDefaults3">
                                        <span class="area_flex_one">
                                            <span>Novo Air </span>
                                            <span>62</span>
                                        </span>
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaults4">
                                    <label class="form-check-label" for="flexCheckDefaults4">
                                        <span class="area_flex_one">
                                            <span>Air Asia </span>
                                            <span>08</span>
                                        </span>
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaults5">
                                    <label class="form-check-label" for="flexCheckDefaults5">
                                        <span class="area_flex_one">
                                            <span>Singapore Airlines </span>
                                            <span>12</span>
                                        </span>
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="left_side_search_boxed">
                            <div class="left_side_search_heading">
                                <h5>Refundable</h5>
                            </div>
                            <div class="tour_search_type">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultp1">
                                    <label class="form-check-label" for="flexCheckDefaultp1">
                                        <span class="area_flex_one">
                                            <span>Yes</span>
                                            <span>17</span>
                                        </span>
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultp2">
                                    <label class="form-check-label" for="flexCheckDefaultp2">
                                        <span class="area_flex_one">
                                            <span>No</span>
                                            <span>14</span>
                                        </span>
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultp3">
                                    <label class="form-check-label" for="flexCheckDefaultp3">
                                        <span class="area_flex_one">
                                            <span>As per rules</span>
                                            <span>62</span>
                                        </span>
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

<!----------------------------------------------------------------------------------------------------------------->
                <div class="col-lg-9">
                    <div class="row">
                        <?php   
                                        $sql = "SELECT * from tbl_bus";
                                        $query = $dbh->prepare($sql);
                                        $query->execute();
                                        $results=$query->fetchAll(PDO::FETCH_OBJ);
                                        $cnt=1;
                                        if($query->rowCount() > 0)
                                        {
                                        foreach($results as $result)
                                        {	?>

                        <div class="col-lg-12">
                            <div class="flight_search_result_wrapper">
                                <div class="flight_search_item_wrappper">
                                    <div class="flight_search_items">
                                        <div class="multi_city_flight_lists">
                                            <div class="flight_multis_area_wrapper">
                                                <div class="flight_search_left">
                                                    <div class="flight_logo">
                                                        <img src="admin/busimages/<?php echo htmlentities($result->BusImage);?>" alt="img">
                                                    </div>
                                                    <div class="flight_search_destination">
                                                        <p>From</p>
                                                        <h3><?php echo htmlentities($result->BusFrom);?></h3>
                                                        <h6>Departure time: 10:00am</h6>
                                                    </div>
                                                </div>
                                                <div class="flight_search_middel">
                                                    <div class="flight_right_arrow">
                                                        <img src="assets/img/icon/right_arrow.png" alt="icon">
                                                        <h6><?php echo htmlentities($result->BusName);?></h6>
                                                        <p>01h 05minute <?php echo htmlentities($result->BusDuration);?> </p>
                                                    </div>
                                                    <div class="flight_search_destination">
                                                        <p>To</p>
                                                        <h3><?php echo htmlentities($result->BusTo);?> </h3>
                                                        <h6>Arrival time: <?php echo htmlentities($result->BusArrival);?>pm</h6>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="flight_search_right">
                                            
                                            <h2>$<?php echo htmlentities($result->BusPrice);?><sup>*20% OFF</sup></h2>
                                            <a href="bus-details.php?bid=<?php echo htmlentities($result->BusId);?>" class="btn btn_theme btn_sm"  data-bs-toggle="modal" data-bs-target="#staticBackdrop">Book now</a>
                                            <p>*Discount applicable on some conditions</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    
                                <?php }} ?> 
                            </div>
                            <div class="load_more_flight">
                                <button class="btn btn_md"><i class="fas fa-spinner"></i> Load more..</button>
                            </div>
                        </div>        
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Cta Area -->
    

    <!-- Footer  -->
    <!--<footer id="footer_area">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                    <div class="footer_heading_area">
                        <h5>Need any help?</h5>
                    </div>
                    <div class="footer_first_area">
                        <div class="footer_inquery_area">
                            <h5>Call 24/7 for any help</h5>
                            <h3> <a href="tel:+00-123-456-789">+00 123 456 789</a></h3>
                        </div>
                        <div class="footer_inquery_area">
                            <h5>Mail to our support team</h5>
                            <h3> <a href="mailto:support@domain.com">support@domain.com</a></h3>
                        </div>
                        <div class="footer_inquery_area">
                            <h5>Follow us on</h5>
                            <ul class="soical_icon_footer">
                                <li><a href="#!"><i class="fab fa-facebook"></i></a></li>
                                <li><a href="#!"><i class="fab fa-twitter-square"></i></a></li>
                                <li><a href="#!"><i class="fab fa-instagram"></i></a></li>
                                <li><a href="#!"><i class="fab fa-linkedin"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2 offset-lg-1 col-md-6 col-sm-6 col-12">
                    <div class="footer_heading_area">
                        <h5>Company</h5>
                    </div>
                    <div class="footer_link_area">
                        <ul>
                            <li><a href="about.html">About Us</a></li>
                            <li><a href="testimonials.html">Testimonials</a></li>
                            <li><a href="faqs.html">Rewards</a></li>
                            <li><a href="terms-service.html">Work with Us</a></li>
                            <li><a href="tour-guides.html">Meet the Team </a></li>
                            <li><a href="news.html">Blog</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-2 col-md-4 col-sm-6 col-12">
                    <div class="footer_heading_area">
                        <h5>Support</h5>
                    </div>
                    <div class="footer_link_area">
                        <ul>
                            <li><a href="dashboard.html">Account</a></li>
                            <li><a href="faq.html">Faq</a></li>
                            <li><a href="testimonials.html">Legal</a></li>
                            <li><a href="contact.html">Contact</a></li>
                            <li><a href="top-destinations.html"> Affiliate Program</a></li>
                            <li><a href="privacy-policy.html">Privacy Policy</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-2 col-md-4 col-sm-6 col-12">
                    <div class="footer_heading_area">
                        <h5>Other Services</h5>
                    </div>
                    <div class="footer_link_area">
                        <ul>
                            <li><a href="top-destinations-details.html">Community program</a></li>
                            <li><a href="top-destinations-details.html">Investor Relations</a></li>
                            <li><a href="flight-search-result.html">Rewards Program</a></li>
                            <li><a href="room-booking.html">PointsPLUS</a></li>
                            <li><a href="testimonials.html">Partners</a></li>
                            <li><a href="hotel-search.html">List My Hotel</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-2 col-md-4 col-sm-6 col-12">
                    <div class="footer_heading_area">
                        <h5>Top cities</h5>
                    </div>
                    <div class="footer_link_area">
                        <ul>
                            <li><a href="room-details.html">Chicago</a></li>
                            <li><a href="hotel-details.html">New York</a></li>
                            <li><a href="hotel-booking.html">San Francisco</a></li>
                            <li><a href="tour-search.html">California</a></li>
                            <li><a href="tour-booking.html">Ohio </a></li>
                            <li><a href="tour-guides.html">Alaska</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </footer>-->
    <div class="copyright_area">
        <div class="container">
            <div class="row align-items-center">
                <div class="co-lg-6 col-md-6 col-sm-12 col-12">
                    <div class="copyright_left">
                        <p>Copyright © 2022 All Rights Reserved</p>
                    </div>
                </div>
                <div class="co-lg-6 col-md-6 col-sm-12 col-12">
                    <div class="copyright_right">
                        <img src="assets/img/common/cards.png" alt="img">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="go-top">
        <i class="fas fa-chevron-up"></i>
        <i class="fas fa-chevron-up"></i>
    </div>

        <!-- Map Modal -->
        <div class="modal fade" id="staticBackdrop" tabindex="-1" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered  modal-lg">
                <div class="modal-content">
                    <div class="btn_modal_closed btn_modal_bus">
                        <button type="button" data-bs-dismiss="modal" aria-label="Close"><i
                            class="fas fa-times"></i></button>
                    </div>
                    <div class="modal-body bus_set_modal_content">
                        <div class="bus_modal_heading">
                            <h3>Choose your seat</h3>
                        </div>
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="bus_seat_left_side">
                                    <h6>Hold the cursor on seats for seat numbers, click to select or deselect.</h6>
                                    <img src="assets/img/common/bus_seat.png" alt="img">
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="bus_seat_right_side">
                                  <div class="seat_avelabel_area">
                                    <div class="seat_avelabel_item">
                                        <img src="assets/img/icon/seat-1.png" alt="img">
                                        <h4>Available seat</h4>
                                    </div>
                                    <div class="seat_avelabel_item">
                                        <img src="assets/img/icon/seat-2.png" alt="img">
                                        <h4>Booked seat</h4>
                                    </div>
                                    <div class="seat_avelabel_item">
                                        <img src="assets/img/icon/seat-3.png" alt="img">
                                        <h4>Selected seat</h4>
                                    </div>
                                  </div>
                                  <div class="bus_ticket_tabel">
                                        <table class="tabel">
                                            <thead>
                                                <tr>
                                                    <th>Seat</th>
                                                    <th>Fare</th>
                                                    <th>Class</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                              <tr>
                                                <td>A3</td>
                                                <td>$120.00</td>
                                                <td>Business</td>
                                              </tr>
                                              <tr>
                                                <td>A3</td>
                                                <td>$120.00</td>
                                                <td>Business</td>
                                              </tr>
                                              <tr>
                                                <td>A3</td>
                                                <td>$120.00</td>
                                                <td>Business</td>
                                              </tr>
                                            </tbody>
                                        </table>
                                  </div>
                                  <div class="bus_price_total">
                                    <h5>Total: <span>$120.00</span></h5>
                                  </div>
                                  <div class="bus_ticket_continue">
                                     <a href="bus-booking.php" class="btn btn_theme btn_sm">Continue</a>
                                  </div>
                                </div>
                            </div>
                        </div>
                       
                    </div>
                </div>
            </div>
        </div>

    <script src="assets/js/jquery-3.6.0.min.js"></script>
    <!-- Bootstrap js -->
    <script src="assets/js/bootstrap.bundle.js"></script>
    <!-- Meanu js -->
    <script src="assets/js/jquery.meanmenu.js"></script>
    <!-- Range js -->
    <script src="assets/js/nouislider.min.js"></script>
    <script src="assets/js/wNumb.js"></script>
    <!-- owl carousel js -->
    <script src="assets/js/owl.carousel.min.js"></script>
    <!-- wow.js -->
    <script src="assets/js/wow.min.js"></script>
    <!-- Custom js -->
    <script src="assets/js/custom.js"></script>
    <script src="assets/js/add-form.js"></script>
    <script src="assets/js/form-dropdown.js"></script>

</body>

</html>