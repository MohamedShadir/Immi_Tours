<?php
if ($_SERVER['REQUEST_METHOD'] == 'POST') {

    // Retrieve parameters from the form or any other source
    $type = $_REQUEST['type'] ?? 'RT';
    $origin = $_REQUEST['origin'] ?? '';
    $destination = $_REQUEST['destination'] ?? '';
    $departDate = $_REQUEST['aepartDate'] ?? '';
    $arrivalDate = $_REQUEST['arrivalDate'] ?? '';
    $class = $_REQUEST['class'] ?? 'economy';
    $adults = $_REQUEST['adults'] ?? '1';
    $children = $_REQUEST['children'] ?? '0';

    // ... (retrieve other parameters as needed)

    // Validate the parameters if necessary

    // Continue with the rest of your code
    $url = 'https://api.brightsun.co.uk/api/BSFlight/flightsearch/';
    $username = 'BS8270';
    $password = 'FareForYouBS@Test8270';

    $requestParameters = [
        'TripType' =>$type,
        'Origin' => $origin,
        'Destination' => $destination,
        'AirlineCode' => '',
        'DepartDate' => $departDate,
        'ArrivalDate' => $arrivalDate,
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
    ];

    $ch = curl_init($url);
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
        echo 400;
    } else {
        // Store the response data in a session
        session_start();
        $_SESSION['flight_search_response'] = $data;
        echo 200;
        exit();
    }
}
