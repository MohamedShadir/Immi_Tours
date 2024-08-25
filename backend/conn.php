<?php
// error_reporting(0);
// date_default_timezone_set('Asia/Dubai');

session_start();

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "db_fareforyou";


// $servername = "localhost";
// $username = "posfkpop_db_fareforyou_admin";
// $password = "wv-mD!AZ7ImY";
// $dbname = "posfkpop_db_fareforyou";

$current_date_time = date('Y/m/d H:i:s');

$conn = new mysqli($servername,$username,$password,$dbname);
// $conn_loc = new mysqli($servername,$username1,$password1,$dbname1);
//
// if(isset($_SESSION['uid'])){
//   $u_id = $_SESSION['uid'];
// }

function getUserProgressCount($conn,$u_id,$qst){
  $sql = "SELECT * FROM tbl_quote WHERE u_id='$u_id' AND q_status='$qst'";
  $rs=$conn->query($sql);

  return $rs->num_rows;
}

function customRound($value) {
    // Multiply by 2, round up to the nearest integer, and then divide by 2
    $roundedValue = ceil($value * 2) / 2;
    // Format the rounded value with two decimal places
    $formattedValue = number_format($roundedValue, 2);
    return $formattedValue;
}

$prime_services =array(
   '1' => 'Shipping-> Air',
   '2' => 'Shipping-> Sea',
   '3' => 'Shipping-> Land',
   '4' => 'Warehousing',
   '5' => 'Brokerage-> Air',
   '6' => 'Brokerage-> Sea',
   '7' => 'Brokerage-> Land'
);



function getServiceType($s_type){
  if($s_type == 1){
    return "Shipping-> Air";
  }
  else if($s_type == 2){
    return "Shipping-> Sea";
  }
  else if($s_type == 3){
    return "Shipping-> Land";
  }
  else if($s_type == 5){
    return "Brokerage-> Air";
  }
  else if($s_type == 6){
    return "Brokerage-> Sea";
  }
  else if($s_type == 7){
    return "Brokerage-> Land";
  }
  else if($s_type == 4){
    return "Warehousing";
  }
  else {
    return "Something Went Wrong";
  }
}

function getQuoteStatusNumber($conn,$st){
  $sql_list = "SELECT * FROM tbl_quote WHERE q_status=$st ORDER BY `tbl_quote`.`q_id` DESC";
  $rs_list = $conn->query($sql_list);
  return $rs_list->num_rows;
}
function getQuoteStatusText($status){
    if($status == 0){
        return "Pending";
      }
      elseif ($status == 2) {
        return "Quote Sent To Customer";
      }
      elseif ($status == 3) {
        return "Quote Accepted By Customer";
      }
      elseif ($status == 4) {
        return "On Process By Staff";
      }
      else {
        return "Something Went Wrong";
      }
}
function getQuoteStatus($status){
  if($status == 0){
    return "<div class='alert alert-warning'>
    									Pending
    								</div>";
  }
  elseif ($status == 2) {
    return "<div class='alert alert-primary'>
                      Quote Sent To Customer
                    </div>";
  }
  elseif ($status == 3) {
    return "<div class='alert alert-success'>
                      Quote Accepted By Customer
                    </div>";
  }
  elseif ($status == 4) {
    return "<div class='alert alert-secondary'>
                      On Process By Staff
                    </div>";
  }
  else {
    return "<div class='alert alert-danger'>
                      Something Went Wrong
                    </div>";
  }
}

function getUom($uom){
  if($uom == 1){
    return "Per Shipment";
  }
  elseif ($uom == 2) {
    return "Per Kg";
  }
  elseif ($uom == 3) {
    return "Per Label";
  }
  elseif ($uom == 4) {
    return "Per B/L";
  }
  elseif ($uom == 5) {
    return "Per W/M";
  }
  elseif ($uom == 6) {
    return "Per Container";
  }
  elseif ($uom == 7) {
    return "Per Truck";
  }
  else {
    return "Something Wrong";
  }
}

function getService($service){
  if($service == 1){
    return "FCL";
  }
  elseif ($service == 2) {
    return "LCL";
  }
  else {
    return "Something Wrong";
  }
}

function getServiceLand($service){
  if($service == 1){
    return "FTL";
  }
  elseif ($service == 2) {
    return "LTL";
  }
  else {
    return "Something Wrong";
  }
}

function getCurrency($currency){
  if($currency == 1){
    return "AED";
  }
  elseif ($currency == 2) {
    return "USD";
  }
  elseif ($currency == 3) {
    return "SAR";
  }
  else {
    return "Something Wrong";
  }
}

function getDataBack($conn,$table,$col_id,$id,$coulmn){
  $sql = "SELECT * FROM $table WHERE $col_id = '$id'";
  $rs = $conn->query($sql);

  if ($rs->num_rows > 0) {
    $row = $rs->fetch_assoc();

    return $row[$coulmn];
  }
}


function uploadImage($fileName,$filePath,$allowedList,$errorLocation){

  $img = $_FILES[$fileName];
  $imgName =$_FILES[$fileName]['name'];
  $imgTempName = $_FILES[$fileName]['tmp_name'];
  $imgSize = $_FILES[$fileName]['size'];
  $imgError= $_FILES[$fileName]['error'];

  $fileExt = explode(".",$imgName);
  $fileActualExt = strtolower(end($fileExt));

  $allowed = $allowedList;

  if(in_array($fileActualExt, $allowed)){
    if($imgError == 0){
      $GLOBALS['fileNameNew']='prime'.uniqid('',true).".".$fileActualExt;
        $fileDestination = $filePath.$GLOBALS['fileNameNew'];

        $resultsImage = move_uploaded_file($imgTempName,$fileDestination);

      }
      else{
        header('location:'.$errorLocation.'?imgerror');
        exit();
      }
  }
  else{
    header('location:'.$errorLocation.'?extensionError&'.$fileActualExt);
    exit();
  }
}

function time_elapsed_string($datetime, $full = false) {
    $now = new DateTime;
    $ago = new DateTime($datetime);
    $diff = $now->diff($ago);

    $diff->w = floor($diff->d / 7);
    $diff->d -= $diff->w * 7;

    $string = array(
        'y' => 'year',
        'm' => 'month',
        'w' => 'week',
        'd' => 'day',
        'h' => 'hour',
        'i' => 'minute',
        's' => 'second',
    );
    foreach ($string as $k => &$v) {
        if ($diff->$k) {
            $v = $diff->$k . ' ' . $v . ($diff->$k > 1 ? 's' : '');
        } else {
            unset($string[$k]);
        }
    }

    if (!$full) $string = array_slice($string, 0, 1);
    return $string ? implode(', ', $string) . ' ago' : 'just now';
}

function formatTimeDifference($date_time) {
    $date_time_now = date('Y-m-d H:i:s');

    // Convert string dates to DateTime objects
    $datetime1 = new DateTime($date_time);
    $datetime2 = new DateTime($date_time_now);

    // Calculate the difference between two dates
    $interval = $datetime1->diff($datetime2);

    // Format the result
    if ($interval->days == 0) {
        // Within the same day
        if ($interval->h > 0) {
            return $interval->h . ' hour' . ($interval->h > 1 ? 's' : '') . ' ago';
        } elseif ($interval->i > 0) {
            return $interval->i . ' minute' . ($interval->i > 1 ? 's' : '') . ' ago';
        } else {
            return 'Just now';
        }
    } else {
        // More than 24 hours ago, show the original date and time
        return $datetime1->format('Y-m-d H:i:s');
    }
}
?>
