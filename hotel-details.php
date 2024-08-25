<?php
  include 'layout/header.php';
 ?>
   <?php

    error_reporting(0);
    include('conf/config.php');
    ?>
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
                        <h2>Hotel details</h2>
                        <ul>
                            <li><a href="index.php">Home</a></li>
                            <li><span><i class="fas fa-circle"></i></span>
                            <a href="hotel-search.php">Hotel</a></li>
                            <li><span><i class="fas fa-circle"></i></span> Hotel Details</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <!-- Hotel Search Areas -->
    <?php
        error_reporting(0);
        include('conf/config.php');

        $hotelid = $_GET['HotelId'];

        // Prepare the query
            $query = "SELECT * FROM tbl_hotel WHERE HotelId = :hotelid";
        //debud
            try {
                $stmt = $dbh->prepare($query);
                $stmt->bindParam(':hotelid', $hotelid, PDO::PARAM_INT);
                $stmt->execute();

                $row = $stmt->fetch(PDO::FETCH_ASSOC);
                
                // Check if row is fetched
                if ($row) {
                    // Do something with the data, for example:
                    echo 'Hotel Name: ' . htmlspecialchars($row['HotelName']);
                    // Add more fields as needed
                } else {
                    echo 'No hotel found with the provided ID.';
                }
            } catch (PDOException $e) {
                echo 'Database error: ' . $e->getMessage();
            }
        //debug end
    ?>

    <section id="tour_details_main" class="section_padding">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="tour_details_leftside_wrapper">
                        <div class="tour_details_heading_wrapper">
                            <div class="tour_details_top_heading">
                                <h2><?php echo $row['HotelName']; ?></h2>
                                <h5><i class="fas fa-map-marker-alt"></i><?php echo $row['HotelLocation']; ?></h5>
                            </div>
                            <div class="tour_details_top_heading_right">
                                <h4>Excellent</h4>
                                <h6><?php echo $row['HotelRating']; ?>/5</h6>
                                <p>(1214 reviewes)</p>
                            </div>
                        </div>
                        <div class="tour_details_top_bottom">
                            <div class="toru_details_top_bottom_item">
                                <div class="tour_details_top_bottom_icon">
                                    <img src="assets/img/icon/ac.png" alt="icon">
                                </div>
                                <div class="tour_details_top_bottom_text">
                                    <p>Air condition</p>
                                </div>
                            </div>
                            <div class="toru_details_top_bottom_item">
                                <div class="tour_details_top_bottom_icon">
                                    <img src="assets/img/icon/tv.png" alt="icon">
                                </div>
                                <div class="tour_details_top_bottom_text">
                                    <p>Flat television</p>
                                </div>
                            </div>
                            <div class="toru_details_top_bottom_item">
                                <div class="tour_details_top_bottom_icon">
                                    <img src="assets/img/icon/gym.png" alt="icon">
                                </div>
                                <div class="tour_details_top_bottom_text">
                                    <p>Fitness center</p>
                                </div>
                            </div>
                            <div class="toru_details_top_bottom_item">
                                <div class="tour_details_top_bottom_icon">
                                    <img src="assets/img/icon/wifi.png" alt="icon">
                                </div>
                                <div class="tour_details_top_bottom_text">
                                    <p>Free Wi-fi</p>
                                </div>
                            </div>
                        </div>
                        <div class="tour_details_img_wrapper">
                            <div class="slider slider-for">
                                <div>
                                    <img src="admin/hotelimages/<?php echo $row['HotelImage']; ?>" alt="img">
                                </div>
                            </div>
                            
                        </div>
                        <div class="tour_details_boxed">
                            <h3 class="heading_theme">Overview</h3>
                            <div class="tour_details_boxed_inner">
                                <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod
                                    tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero
                                    eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea
                                    takimata sanctus est.
                                </p>
                                <p>
                                    Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.
                                    Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod.
                                </p>
                                <ul>
                                    <li><i class="fas fa-circle"></i>Buffet breakfast as per the Itinerary</li>
                                    <li><i class="fas fa-circle"></i>Visit eight villages showcasing Polynesian culture
                                    </li>
                                    <li><i class="fas fa-circle"></i>Complimentary Camel safari, Bonfire, and Cultural
                                        Dance at Camp</li>
                                    <li><i class="fas fa-circle"></i>All toll tax, parking, fuel, and driver allowances
                                    </li>
                                    <li><i class="fas fa-circle"></i>Comfortable and hygienic vehicle (SUV/Sedan) for
                                        sightseeing on all days as per the itinerary.</li>
                                </ul>
                            </div>
                        </div>
                        <div class="tour_details_boxed">
                            <h3 class="heading_theme">Select your room</h3>
                            <div class="room_select_area">
                                <ul class="nav nav-tabs" id="myTab" role="tablist">
                                    <li class="nav-item" role="presentation">
                                        <button class="nav-link active" id="home-tab" data-bs-toggle="tab"
                                            data-bs-target="#home" type="button" role="tab" aria-controls="home"
                                            aria-selected="true">Book</button>
                                    </li>
                                </ul>
                                <div class="tab-content" id="myTabContent">
                                    <div class="tab-pane fade show active" id="home" role="tabpanel"
                                        aria-labelledby="home-tab">
                                        <div class="room_booking_area">
                                            <div class="tour_search_form">
                                                <form action="!#">
                                                    <div class="row">
                                                        <div class="col-lg-8 col-md-6 col-sm-12 col-12">
                                                            <div class="form_search_date">
                                                                <div class="flight_Search_boxed date_flex_area">
                                                                    <div class="Journey_date">
                                                                        <p>Check In date</p>
                                                                        <input type="date" value="2022-05-03">
                                                                        <span>Thursday</span>
                                                                    </div>
                                                                    <div class="Journey_date">
                                                                        <p>Check Out date</p>
                                                                        <input type="date" value="2022-05-05">
                                                                        <span>Thursday</span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-4 col-md-6 col-sm-12 col-12">
                                                            <div class="flight_Search_boxed dropdown_passenger_area">
                                                                <p>Guests</p>
                                                                <div class="dropdown">
                                                                    <button class="dropdown-toggle"
                                                                        data-toggle="dropdown" type="button"
                                                                        id="dropdownMenuButton1"
                                                                        data-bs-toggle="dropdown" aria-expanded="false">
                                                                        1 Guests
                                                                    </button>
                                                                    <div class="dropdown-menu dropdown_passenger_info"
                                                                        aria-labelledby="dropdownMenuButton1">
                                                                        <div class="traveller-calulate-persons">
                                                                            <div class="passengers">
                                                                                <h6>Passengers</h6>
                                                                                <div class="passengers-types">
                                                                                    <div class="passengers-type">
                                                                                        <div class="text"><span
                                                                                                class="count">2</span>
                                                                                            <div class="type-label">
                                                                                                <p>Adult</p>
                                                                                                <span>12+
                                                                                                    yrs</span>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="button-set">
                                                                                            <button type="button">
                                                                                                <i
                                                                                                    class="fas fa-plus"></i>
                                                                                            </button>
                                                                                            <button type="button">
                                                                                                <i
                                                                                                    class="fas fa-minus"></i>
                                                                                            </button>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="passengers-type">
                                                                                        <div class="text"><span
                                                                                                class="count">0</span>
                                                                                            <div class="type-label">
                                                                                                <p class="fz14 mb-xs-0">
                                                                                                    Children
                                                                                                </p><span>2
                                                                                                    - Less than 12
                                                                                                    yrs</span>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="button-set">
                                                                                            <button type="button">
                                                                                                <i
                                                                                                    class="fas fa-plus"></i>
                                                                                            </button>
                                                                                            <button type="button">
                                                                                                <i
                                                                                                    class="fas fa-minus"></i>
                                                                                            </button>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="passengers-type">
                                                                                        <div class="text"><span
                                                                                                class="count">0</span>
                                                                                            <div class="type-label">
                                                                                                <p class="fz14 mb-xs-0">
                                                                                                    Infant
                                                                                                </p><span>Less
                                                                                                    than 2
                                                                                                    yrs</span>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="button-set">
                                                                                            <button type="button">
                                                                                                <i
                                                                                                    class="fas fa-plus"></i>
                                                                                            </button>
                                                                                            <button type="button">
                                                                                                <i
                                                                                                    class="fas fa-minus"></i>
                                                                                            </button>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <span>Adult</span>

                                                            </div>
                                                        </div>
                                                        <div class="top_form_search_button text-center">
                                                            <button class="btn btn_theme btn_md" type="button" onclick="document.location='hotel-booking.php'">Book
                                                                </button>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                            <!---------------------------------------------- Room start ----------------------------------------------------------------> 
                                            
                                                <?php $sql = "SELECT * from tbl_room";
                                                    $query = $dbh->prepare($sql);
                                                    $query->execute();
                                                    $results=$query->fetchAll(PDO::FETCH_OBJ);
                                                    $cnt=1;
                                                    if($query->rowCount() > 0)
                                                    {
                                                    foreach($results as $result)
                                                    {	?>
                                            <div class="room_book_item">
                                                <div class="room_book_img">
                                                    <img src="admin/roomimages/<?php echo htmlentities($result->RoomImage);?>" alt="img">
                                                </div>
                                                <div class="room_booking_right_side">
                                                    <div class="room_booking_heading">
                                                        <h3><a href="room-booking.php?RoomId=<?php echo htmlentities($result->RoomId);?>"><?php echo htmlentities($result->RoomName);?></a></h3>
                                                        <div class="room_fasa_area">
                                                            <ul>
                                                                <li><img src="assets/img/icon/ac.png" alt="icon">Air
                                                                    condition</li>
                                                                <li><img src="assets/img/icon/gym.png"
                                                                        alt="icon">Fitness
                                                                    center</li>
                                                            </ul>
                                                            <ul>
                                                                <li><img src="assets/img/icon/tv.png" alt="icon">Flat
                                                                    television</li>
                                                                <li><img src="assets/img/icon/wifi.png" alt="icon">Free
                                                                    Wi-fi</li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <div class="room_person_select">
                                                        <h3>$<?php echo htmlentities($result->RoomPrice);?>.00/ <sub>Per night</sub></h3>
                                                        <select class="form-select" aria-label="Default select example">
                                                            <option selected>1</option>
                                                            <option value="2">2</option>
                                                            <option value="3">3</option>
                                                            <option value="4">4</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                
                                            </div>
                                            <?php }} ?>
                                            <!---------------------------------------------- Room end ---------------------------------------------------------------->   
                                        </div>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                        <div class="tour_details_boxed">
                            <h3 class="heading_theme">Included/Excluded</h3>
                            <div class="tour_details_boxed_inner">
                                <p>
                                    Stet clitaStet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor
                                    sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy
                                    eirmod.
                                </p>
                                <ul>
                                    <li><i class="fas fa-circle"></i>Buffet breakfast as per the Itinerary</li>
                                    <li><i class="fas fa-circle"></i>Visit eight villages showcasing Polynesian culture
                                    </li>
                                    <li><i class="fas fa-circle"></i>Complimentary Camel safari, Bonfire, and Cultural
                                        Dance at Camp</li>
                                    <li><i class="fas fa-circle"></i>All toll tax, parking, fuel, and driver allowances
                                    </li>
                                    <li><i class="fas fa-circle"></i>Comfortable and hygienic vehicle (SUV/Sedan) for
                                        sightseeing on all days as per the itinerary.</li>
                                </ul>
                            </div>
                        </div>
                        <div class="tour_details_boxed">
                            <h3 class="heading_theme">Hotel location</h3>
                            <div class="map_area">
                                <iframe
                                    src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3677.6962663570607!2d89.56355961427838!3d22.813715829827952!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39ff901efac79b59%3A0x5be01a1bc0dc7eba!2sAnd+IT!5e0!3m2!1sen!2sbd!4v1557901943656!5m2!1sen!2sbd"></iframe>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="tour_details_right_sidebar_wrapper">
                        <div class="tour_detail_right_sidebar">
                            <div class="tour_details_right_boxed">
                                <div class="tour_details_right_box_heading">
                                    <h3>Price</h3>
                                </div>
                                <div class="tour_package_bar_price">
                                    
                                    <h3>$ <?php echo $row['HotelPrice']; ?> <sub>/Per serson</sub> </h3>
                                </div>

                                <div class="tour_package_details_bar_list">
                                    <h5>Hotel facilities</h5>
                                    <ul>
                                        <li><i class="fas fa-circle"></i>Buffet breakfast as per the Itinerary</li>
                                        <li><i class="fas fa-circle"></i>Visit eight villages showcasing Polynesian
                                            culture
                                        </li>
                                        <li><i class="fas fa-circle"></i>Complimentary Camel safari, Bonfire,</li>
                                        <li><i class="fas fa-circle"></i>All toll tax, parking, fuel, and driver
                                            allowances
                                        </li>
                                        <li><i class="fas fa-circle"></i>Comfortable and hygienic vehicle</li>
                                    </ul>
                                </div>

                            </div>
                        </div>
                        <div class="tour_detail_right_sidebar">
                            <div class="tour_details_right_boxed">
                                <div class="tour_details_right_box_heading">
                                    <h3>Why choose us</h3>
                                </div>

                                <div class="tour_package_details_bar_list first_child_padding_none">
                                    <ul>
                                        <li><i class="fas fa-circle"></i>Buffet breakfast as per the Itinerary</li>
                                        <li><i class="fas fa-circle"></i>Visit eight villages showcasing Polynesian
                                            culture
                                        </li>
                                        <li><i class="fas fa-circle"></i>Complimentary Camel safari, Bonfire,</li>
                                        <li><i class="fas fa-circle"></i>All toll tax, parking, fuel, and driver
                                            allowances
                                        </li>
                                        <li><i class="fas fa-circle"></i>Comfortable and hygienic vehicle</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    
                </div>
            </div>

        </div>
    </section>

    <!--Related tour packages Area -->
    <section id="related_tour_packages" class="section_padding_bottom">
        <div class="container">
            <!-- Section Heading -->
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-12">
                    <div class="section_heading_center">
                        <h2>Related hotel</h2>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-12">
                    <div class="promotional_tour_slider owl-theme owl-carousel dot_style">
                        <?php $sql = "SELECT * from tbl_hotel";
                            $query = $dbh->prepare($sql);
                            $query->execute();
                            $results=$query->fetchAll(PDO::FETCH_OBJ);
                            $cnt=1;
                            if($query->rowCount() > 0)
                            {
                            foreach($results as $result)
                            {	?> 
                                <div class="theme_common_box_two img_hover">
                                    <div class="theme_two_box_img">
                                        <a href="hotel-details.php?HotelId=<?php echo htmlentities($result->HotelId);?>"><img src="admin/hotelimages/<?php echo htmlentities($result->HotelImage);?>" alt="img"></a>
                                        <p><i class="fas fa-map-marker-alt"></i><?php echo htmlentities($result->HotelLocation);?></p>
                                    </div>
                                    <div class="theme_two_box_content">
                                        <h4><a href="hotel-details.php?HotelId=<?php echo htmlentities($result->HotelId);?>"><?php echo htmlentities($result->HotelName);?></a></h4>
                                        <p><span class="review_rating"><?php echo htmlentities($result->HotelRating);?>/5 Excellent</span> <span class="review_count">(1214
                                                reviewes)</span></p>
                                        <h3>$<?php echo htmlentities($result->HotelPrice);?>.00 <span>Price starts from</span></h3>
                                    </div>
                                </div>
                        <?php }} ?>
                    </div>
                </div>
            </div>

        </div>
    </section>

    <!-- Cta Area -->

    <!-- Footer  -->
    <?php
      include 'layout/footer.php';
     ?>
    </div>
    <div class="go-top">
        <i class="fas fa-chevron-up"></i>
        <i class="fas fa-chevron-up"></i>
    </div>

    

</body>

</html>
