<?php 
function insert($table, $data){

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



   $data = array_filter($data);
   //echo $table;
// echo "<pre>";
// print_r($data);
// //die; insert into table(column1, column2, column3) values ('column1', 'column2', 'column3');

$key = array_keys($data);
$key = implode(", ",$key);
$values="";
foreach($data as $value){
    $values .= $value."','";
}
 $values = trim($values, ",'");

$sql = "INSERT INTO $table ($key) VALUES ('$values')";

if(mysqli_query($conn, $sql)){ 
    echo '<div class="alert alert-success" role="alert">
    Record Added Successfully </div>';
        }else{
            echo '<div class="alert alert-danger" role="alert">
            Something went Wrong! No record Added.</div>';
        }

}

?>