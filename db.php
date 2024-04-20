<?php 
$host = 'localhost';
$user = 'root';
$pass = '';
$db = 'student';

$conn = mysqli_connect($host, $user, $pass, $db);
if($conn){
	//echo 'Connected to db!';
}else{
	die('Connection Fail'. mysqli_connect_error());
}


?>