<?php
include 'conn.php';


$date =$_REQUEST['date'];
$nights =$_REQUEST['nights'];
$email =$_REQUEST['email'];
$phone =$_REQUEST['phone'];
$note =$_REQUEST['note'];
$adult =$_REQUEST['adult'];
$children =$_REQUEST['children'];
$infant =$_REQUEST['infant'];

// $uploadDir = 'package_images/';
// $uploadPath = $uploadDir . basename($_FILES['pack_image']['name']);
//
// $imagePath = '';
//
// if (move_uploaded_file($_FILES['pack_image']['tmp_name'], $uploadPath)) {
//   $imagePath = $uploadPath;
//   $sqlAdd = "INSERT INTO tbl_packages (pack_title,pack_overview,duration,price,image) VALUES ('$pack_title','$pack_overview','$pack_duration','$pack_price','$imagePath')";
//   $rsAdd = $conn->query($sqlAdd);
//   if($rsAdd > 0){
//     $lastInsertedId = mysqli_insert_id($conn);
//     $_SESSION['pack_insert_id'] = $lastInsertedId;
//     echo 200;
//
//   }else{
//     echo 400;
//
//   }
// }else {
//   $sqlAdd = "INSERT INTO tbl_packages (pack_title,pack_overview,duration,price) VALUES ('$pack_title','$pack_overview','$pack_duration','$pack_price')";
//   $rsAdd = $conn->query($sqlAdd);
//   if($rsAdd > 0){
//     $lastInsertedId = mysqli_insert_id($conn);
//     $_SESSION['pack_insert_id'] = $lastInsertedId;
//     echo 200;
//
//   }else{
//     echo 400;
//
//   }
// }

$sqlAdd = "INSERT INTO tbl_enquiry (email,phone,nights,adult,children,infant,note, travel_date) VALUES ('$email','$phone','$nights','$adult','$children','$infant','$note','$date')";
$rsAdd = $conn->query($sqlAdd);
if($rsAdd > 0){
  echo 200;

}else{
  echo 400;

}









 ?>
