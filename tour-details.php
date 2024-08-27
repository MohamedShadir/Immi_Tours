
<?php
  include 'layout/header.php';
 ?>
    <?php

        error_reporting(0);
        include('conf/config.php');
    ?>


 <!-- owl.carousel css -->

 <link rel="stylesheet" type="text/css" href="assets/css/slick.min.css" />
 <!--slick-theme.css-->
 <link rel="stylesheet" type="text/css" href="assets/css/slick-theme.css" />

 


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
                        <h2>Explore the evergreen forest</h2>
                        <ul>
                            <li><a href="home.php">Home</a></li>
                            <li><span><i class="fas fa-circle"></i></span><a href="tour-search.php">Tours</a></li>
                            <li><span><i class="fas fa-circle"></i></span> Tours Details</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section> 
<br><br><br>

    <!-- Tour Search Areas -->
    <?php
        error_reporting(0);
        include('conf/config.php');

        $tourid = $_GET['TourId'];

        // Prepare the query
            $query = "SELECT * FROM tbl_tour WHERE TourId = :tourid";
        //debud
            try {
                $stmt = $dbh->prepare($query);
                $stmt->bindParam(':tourid', $tourid, PDO::PARAM_INT);
                $stmt->execute();

                $row = $stmt->fetch(PDO::FETCH_ASSOC);
                
                // Check if row is fetched
                if ($row) {
                    // Do something with the data, for example:
                    echo 'Hotel Name: ' . htmlspecialchars($row['TourName']);
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
                                <h2><?php echo $row['TourName']; ?></h2>
                            </div>
                        </div>
                        <div class="tour_details_top_bottom">
                            <div class="toru_details_top_bottom_item">
                                <div class="tour_details_top_bottom_icon">
                                    <i class="fas fa-clock"></i>
                                </div>
                                <div class="tour_details_top_bottom_text">
                                    <h5>Duration</h5>
                                    <p>7 Nights<p>
                                </div>
                            </div>
                        </div>
                         <div class="tour_details_img_wrapper">
                            <div class="slider-for">
                                <div>
                                    <img src="admin/tourimages/<?php echo $row['TourImage']; ?>" alt="img">
                                </div>
                                
                            </div>
                            
                        </div>
                        <div class="tour_details_boxed">
                            <h3 class="heading_theme">Overview</h3>
                            <div class="tour_details_boxed_inner">
                                <p>
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
                            <h3 class="heading_theme">OPTIONAL EXTRAS</h3>

                            <div class="tour_details_boxed_inner">
                              <

                                <ul>
                                    <li><i class="fas fa-circle"></i></li>
                                     <li><i class="fas fa-circle"></i>Complimentary Camel safari, Bonfire, and Cultural
                                        Dance at Camp</li> 
                                </ul>

                               
                            </div>
                        </div>

                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="tour_details_right_sidebar_wrapper">
                        <div class="tour_detail_right_sidebar">
                            <div class="tour_details_right_boxed">
                                <div class="tour_details_right_box_heading">
                                    <h3>Standard package</h3>
                                </div>
                                <div class="valid_date_area">
                                    <div class="valid_date_area_one">
                                        <h5>Valid till</h5>
                                        <p>December 2024</p>
                                    </div>
                                </div>
                                <div class="tour_package_details_bar_list">
                                    <h5>Package details</h5>
                                    <ul>
                                      
                                        <li><i class="fas fa-circle"></i><?php echo $row['TourDescription']; ?></li>
                                      
                                    </ul>
                                </div>
                                <div class="tour_package_details_bar_price">
                                    <h5>Price</h5>
                                    <div class="tour_package_bar_price">
                                        <h3> <sub>$ <?php echo $row['TourPrice']; ?>/Per person</sub> </h3>
                                    </div>
                                </div>
                            </div>
                            <div class="tour_select_offer_bar_bottom">
                                <button class="btn btn_theme btn_md w-100" data-bs-toggle="offcanvas"
                                    data-bs-target="#offcanvasRight" aria-controls="offcanvasRight">Select
                                    offer</button>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>

    </section>


    <!--Related tour packages Area -->


    <!-- Cta Area -->


    <!-- Footer  -->
    <?php
  include 'layout/footer.php';
  ?>


    <!-- Offcanvas Area -->
    <div class="offcanvas select_offer_modal offcanvas-end" tabindex="-1" id="offcanvasRight"
        aria-labelledby="offcanvasRightLabel">
        <div class="offcanvas-header">
            <h5 id="offcanvasRightLabel">Book now</h5>
            <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
        </div>
        <div class="offcanvas-body">
            <div class="side_canvas_wrapper">
                <div class="travel_date_side">
                    <div class="form-group" id="date_div">
                        <label for="dates">Select your travel date</label>
                        <input type="date" id="dates" class="form-control">
                    </div> <br>
                    <div class="form-group">
                        <label for="dates">Number of Nights</label>
                        <input type="text" id="nights" value="" class="form-control">
                    </div> <br>
                    <div class="form-group">
                        <label for="dates">Email</label>
                        <input type="text" id="dates" value="" class="form-control" required>
                    </div> <br>
                    <div class="form-group">
                        <label for="dates">Phone</label>
                        <input type="text" id="dates" value="" class="form-control">
                    </div>
                </div>
                <div class="select_person_side">
                    <h3>Select person</h3>
                    <div class="select_person_item">
                        <div class="select_person_left">
                            <h6>Adult</h6>
                            <p>12y+</p>
                        </div>
                        <div class="select_person_right">
                            <div class="button-set">
                                <button type="button">
                                    <i class="fas fa-plus"></i>
                                </button>
                                <span class="count ccount">01</span>
                                <button type="button">
                                    <i class="fas fa-minus"></i>
                                </button>
                            </div>
                        </div>
                    </div>
                    <div class="select_person_item">
                        <div class="select_person_left">
                            <h6>Children</h6>
                            <p>2 - 12 years</p>
                        </div>
                        <div class="select_person_right">
                            <div class="button-set">
                                <button type="button">
                                    <i class="fas fa-plus"></i>
                                </button>
                                <span>01</span>
                                <button type="button">
                                    <i class="fas fa-minus"></i>
                                </button>
                            </div>
                        </div>
                    </div>
                    <div class="select_person_item">
                        <div class="select_person_left">
                            <h6>Infant</h6>
                            <p>Below 2 years</p>
                        </div>
                        <div class="select_person_right">
                            <div class="button-set">
                                <button type="button">
                                    <i class="fas fa-plus"></i>
                                </button>
                                <span>01</span>
                                <button type="button">
                                    <i class="fas fa-minus"></i>
                                </button>
                            </div>
                        </div>
                    </div>
                    <div class="write_spical_not">
                        <label for="textse">Write any special note</label>
                        <textarea rows="5" id="textse" class="form-control"
                            placeholder="Ex: Special Occasion like Birthday, honeymoon, wedding etc..."></textarea>
                    </div>
                    <div class="form-check write_spical_check">
                        <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultf1">
                        <label class="form-check-label" for="flexCheckDefaultf1">
                            <span class="main_spical_check">
                                <span>I read and accept all <a href="terms-service.php">Terms and conditios</a></span>
                            </span>
                        </label>
                    </div>
                </div>
            </div>
        </div>
        <div class="proceed_booking_btn ">
            <a href="tour-booking-submission.php?TourId=<?php echo $row['TourId']; ?>" class="btn btn_theme btn_md w-100">Enquire Now!</a>
        </div>
    </div>

    <script src="assets/js/jquery-3.6.0.min.js"></script>
    <!-- Bootstrap js -->
    <script src="assets/js/bootstrap.bundle.js"></script>
    <!-- Meanu js -->
    <script src="assets/js/jquery.meanmenu.js"></script>
    <!-- owl carousel js -->
    <script src="assets/js/owl.carousel.min.js"></script>
    <!-- Slick js -->
    <script src="assets/js/slick.min.js"></script>
    <script src="assets/js/slick-slider.js"></script>
    <!-- wow.js -->
    <script src="assets/js/wow.min.js"></script>
    <!-- Custom js -->
    <script src="assets/js/custom.js"></script>
    <script src="assets/js/add-form.js"></script>
    <script>
      // Get the input element
      var inputElement = document.getElementById('dates');

      // Get the form group element
      var formGroup = document.getElementById('date_div');

      // Add a click event listener to the form group
      formGroup.addEventListener('click', function() {
          // Trigger a click on the input element
          inputElement.click();
      });
  </script>

</body>

</html>
