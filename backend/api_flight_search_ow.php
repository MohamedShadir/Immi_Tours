<?php
include 'conn.php';
if ($_SERVER['REQUEST_METHOD'] == 'POST') {


    $from = $_REQUEST['from'] ?? '';
    $to = $_REQUEST['to'] ?? '';
    $departDate = $_REQUEST['date'] ?? '';
    $class = $_REQUEST['class_type'] ?? 'Economy';
    $adults = $_REQUEST['adult'] ?? '1';
    $children = $_REQUEST['children'] ?? '0';


    $origin ='';
    $destination = '';

    if (preg_match('/\[(\w{3})\]/', $from, $matches)) {
      $origin = $matches[1];
    } else {
        echo 'No match for origin';
    }
    if (preg_match('/\[(\w{3})\]/', $to, $matches)) {
      $destination = $matches[1];
    } else {
        echo 'no match for destination';
    }



    // ... (retrieve other parameters as needed)

    // Validate the parameters if necessary

    // Continue with the rest of your code
    $url = 'https://api.brightsun.co.uk/api/BSFlight/flightsearch/';
    $username = 'BS8270';
    $password = 'FareForYouBS@Test8270';

    $requestParameters = array(
        'TripType' => 'OW',
        'Origin' => $origin,
        'Destination' => $destination,
        'AirlineCode' => '',
        'DepartDate' => $departDate,
        'Class' => $class,
        'IsFlexibleDate' => false,
        'IsDirectFlight' => false,
        'NoOfAdultPax' => $adults,
        'NoOfInfantPax' => 0,
        'NoOfChildPax' => $children,
        'NoOfYouthPax' => '0',
        'CompanyCode' => 'BS8270',
        'WebsiteName' => 'fareforyou.com',
        'ApplicationAccessMode' => 'TEST'
    );

    $jsondata = json_encode($requestParameters);

    // Initialize cURL session
    $ch = curl_init();

    // Set cURL options
    curl_setopt($ch, CURLOPT_URL, $url);
    curl_setopt($ch, CURLOPT_POST, 1);
    curl_setopt($ch, CURLOPT_POSTFIELDS, $jsondata);
    curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-Type: application/json'));
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    curl_setopt($ch, CURLOPT_HTTPAUTH, CURLAUTH_BASIC);
    curl_setopt($ch, CURLOPT_USERPWD, "$username:$password");
    // curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($requestParameters)); // Encode as JSON
    // curl_setopt($ch, CURLOPT_HTTPHEADER, ['Content-Type: application/json']); // Set content type header

    $response = curl_exec($ch);

    if (curl_errno($ch)) {
        echo 'Error: ' . curl_error($ch);
    }

    curl_close($ch);
    $data = json_decode($response, true);

    if ($data === null) {
        echo 'No data';
    } else {
        $_SESSION['flight_search_response'] = $response;
        echo 200;
        exit();
    }
}
