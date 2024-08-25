<?php 
include 'conn.php';

$continentId=$_REQUEST['continent_id'];
?>

<section id="explore_area" class="section_padding_top">
        <div class="container">
           
                    <div class="">
                        <div class="">
                            <div class="nav nav-tabs" id="nav-tab1" role="tablist">

                          
                           
                          
                            <?php 
                            $sqlCountry="SELECT * FROM tbl_country WHERE continent_id LIKE $continentId";
                            $rsCountry=$conn->query($sqlCountry);

                            if($rsCountry->num_rows>0){
                                while($rowCountry=$rsCountry->fetch_assoc()){

                                    ?>

                                    <div class="rows">
                                        <div class="container-fluid">
                                        <!-- <input type="hidden" name="selected_continent" id="selected_continent" value=""> -->
                   
                                        <div class="col-lg-12">
                                            <div class="col-lg-2">
                                            <a href="#" id="selected_country" onClick="veiwFlights(<?= $rowCountry['country_id'] ?>)" ><?= $rowCountry['country_name'] ?></a>
                                            </div>

                                        </div>
                                        <div id="page">

                                        </div>
                                        </div>

                                    </div>
                                    <?php
                                }
                            }
                             ?>

                                <!-- <button class="nav-link active" id="nav-hotels-tab" data-bs-toggle="tab"
                                    data-bs-target="#nav-hotels" type="button" role="tab" aria-controls="nav-hotels"
                                    aria-selected="true">Holidays</button>
                                <button class="nav-link" id="nav-tours-tab" data-bs-toggle="tab"
                                    data-bs-target="#nav-tours" type="button" role="tab" aria-controls="nav-tours"
                                    aria-selected="false">Flights</button> -->
                            </div>

                            <div id="flight_page">

</div>

                        </div>
                    </div>
                
           
        </div>
    </section>

    <script type="text/javascript">


function veiwFlights(countryId){

    
    document.getElementById('selected_country').value = countryId;
    var countryId=countryId
    // alert(countryId);

    $('#flight_page').load('backend/view_flights.php',{
        countryId:countryId
    });
   
    // $.ajax({
    //     type: 'POST',
    //     url: 'view_countries.php',
    //     data: { continent_id:continent_id }, 
    //     success: function(resp) {
            
    //         if (resp == 200) {
                
    //             $('#page').load('view_countries.php');
    //         } else {
    //             console.log(resp);
                
    //             $('#page').load('view_countries.php');
    //         }
    //     }
    // });
    

}

</script>