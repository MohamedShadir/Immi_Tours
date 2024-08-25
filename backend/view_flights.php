<?php 
include 'conn.php';

$country_id=$_REQUEST['countryId'];

?>

<div >
    <?php 
       

        $sqlFlights="SELECT * FROM tbl_flights WHERE country_id LIKE $country_id";
        $rsFlights=$conn->query($sqlFlights);
    ?>
                            <div class="row">

                            <?php
                                if($rsFlights->num_rows>0){
                                    while($rowsFlights=$rsFlights->fetch_assoc()){
                                        $continentId=$rowsFlights['continent_id'];

                                        ?>
                               <div class="col-lg-4 col-md-6 col-sm-6 col-12">
                                    <div class="theme_common_box_two">
                                        <div class="container-fluid">
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <div class="row">
                                                        <div class="col-lg-6">
                                                            <div class="theme_two_box_img">
                                                                <a href="hotel-details.php">
                                                                    <img src="../crm_fareforyou/backend/website/<?= $rowsFlights['flight_image'] ?>" alt="img">
                                                                </a>
                                                                <!-- <p><i class="fas fa-map-marker-alt"></i>New beach, Thailand</p> -->
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-6">
                                                            <?php 
                                                               

                                                                    $sqlContinent="SELECT * FROM tbl_continent WHERE continent_id LIKE $continentId";
                                                                   $rsContinent=$conn->query($sqlContinent);
                                                                   
                                                                   if($rsContinent->num_rows>0){
                                                                    $rowContinent=$rsContinent->fetch_assoc();

                                                                    $sqlCountry="SELECT * FROM tbl_country WHERE country_id LIKE $country_id";
                                                                    $rsCountry=$conn->query($sqlCountry);
                                                                    $rowsCountry=$rsCountry->fetch_assoc()
                                                                    ?>
                                                            
                                                            <h4>Continent:<?= $rowContinent['continent_name'] ?></h4>
                                                            <h4>Country: <?= $rowsCountry['country_name'] ?></h4>
                                                                    <?php
                                                                   }
                                                            ?>
                                                           
                                                            <!-- Add your content here -->
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="theme_two_box_content">
                                            
                                            <!-- <p><span class="review_rating">4.8/5 Excellent</span> <span class="review_count">(1214 reviews)</span></p> -->
                                            <h5> <?= $rowsFlights['flight_description'] ?></h5>

                                            <button type="button" class="btn btn-danger">Enquire Now</button>
                                        </div>
                                    </div>
                                    
                                </div>


                                        <?php
                                    }
                                }
                            ?>

                              

                            </div>
                        </div>