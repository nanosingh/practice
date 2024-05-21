<?php 
include('db.php');

define ('BASE_URL', 'http://localhost/practice/');

function sanitize($data){
    $conn = db();
    //$data = filter_var($data, FILTER_SANITIZE_NUMBER_INT);
    // $data = htmlspecialchars($data);
    // $data = mysqli_real_escape_string($conn, $data);
    return $data;

    /*
filter_var($data, FILTER_SANITIZE_URL); filter url
filter_var($data, FILTER_SANITIZE_NUMBER_INT); filter Integet
filter_var($data, FILTER_SANITIZE_NUMBER_FLOAT); filter Flot
filter_var($data, FILTER_SANITIZE_EMAIL); filter email
filter_var($data, FILTER_SANITIZE_FULL_SPECIAL_CHARS); filter Special Char
    */
    
}


function insert($table, $data){
$conn = db();
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
//$sd = sanitize($values);
$sql = "INSERT INTO $table ($key) VALUES ('$values')";
// echo $sql;
// die;
if(mysqli_query($conn, $sql)){ 
    echo '<div class="alert alert-success" role="alert">
    Record Added Successfully </div>';
        }else{
            echo '<div class="alert alert-danger" role="alert">
            Something went Wrong! No record Added.'. mysqli_error($conn) .'</div>';
        }

}





function update($table, $data, $where){

    $conn = db();


   //$data = array_filter($data);

$key = array_keys($data);

$trail ="";
$i=0;
foreach($data as $value){
 $trail .= $key[$i] . "=" . "'". $value . "', "; 
 $i++;
}
$values = trim($trail, ", ");
//UPDATE table SET column = 'value' where column = 'value'
  $sql = "UPDATE $table SET $values WHERE $where";
if(mysqli_query($conn, $sql)){ 
    echo '<div class="alert alert-success" role="alert">
    Record Updated Successfully </div>';
        }else{
            echo '<div class="alert alert-danger" role="alert">
            Something went Wrong! No record Updated.</div>';
        }

}



function delete($table, $id){
    $conn = db();

  $sql = "DELETE FROM $table WHERE id = $id";
if(mysqli_query($conn, $sql)){ 
    echo '<div class="alert alert-success" role="alert">
    Record Deleted Successfully </div>';
        }else{
            echo '<div class="alert alert-danger" role="alert">
            Something went Wrong! No record Deleted.</div>';
        }

}

function get($table){
    $conn = db();

    $sql = "select * from $table";
    if (mysqli_query($conn, $sql)){
        $data = mysqli_query($conn, $sql);
return $data;
    }

}

function getuser(){
    $conn = db();
    session_start();
    $id = $_SESSION['id'];
    $sql = "select * from users where id = '$id'";
    if (mysqli_query($conn, $sql)){
        $data = mysqli_query($conn, $sql);
        $obj = $data->fetch_object();
    
return $obj;
    }
}

function getid($table,$id){
    $conn = db();

    $sql = "select * from $table where id = '$id'";
    if (mysqli_query($conn, $sql)){
        $data = mysqli_query($conn, $sql);
        $obj = $data->fetch_object();
return $obj;
    }

}


function autoinsert(){
// print_r($_POST);
// die;
foreach($_POST as $key => $value){
    if($key & $value){
        $post[$key] = $value;
        if(array_key_exists('table', $post)){
            // nothing to do
        }else{
            $array[$key] = $value;
        }
    }
}
$table = $_POST['table'];
insert($table, $array);
}


if(isset($_POST['insert'])){
    autoinsert();
}



function logout(){
    session_start();
    session_destroy();
    
    header("location: index.php");
    die();
}

function check_session(){
@session_start();
if($_SESSION['admin'] ==''){
    session_destroy();
$login_url = BASE_URL. "login/";
    header("location: $login_url");
    die();
}
}

$user = getuser();

if(isset($_GET['logout']))
{
    logout();
}


if(@$page !== 'login.php' AND @$page !== 'registration.php'){
    check_session();
}


function isAdmin(){
    @session_start();
if($_SESSION['type']!=='admin'){
echo "You are not authorized";
die;
}


function csrf_token(){
    
        $token = md5(uniqid(mt_rand(), true));
        
    
    return $token;
}


}

?>