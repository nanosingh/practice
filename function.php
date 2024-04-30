<?php 
include('db.php');

define ('BASE_URL', 'http://localhost/practice/');


function insert($table,$data){
    $conn = db();
    $data = array_filter($data);
    // array filter is use to if key is exits for values then insert is array otherwise exit both key and values
   //echo $table;
// echo "<pre>";
// print_r($data);
// //die; insert into table(column1, column2, column3) values ('column1', 'column2', 'column3');

$key = array_keys($data);
//print_r($key);
//echo "<br>";
$key = implode(", ",$key);
//print_r($key);
//die;
$values="";
foreach($data as $value){
    $values .= $value."','";
}
 $values = trim($values, ",'");

$sql = "INSERT INTO $table ($key) VALUES ('$values')";
 //echo $sql;
 //die;


if(mysqli_query($conn, $sql)){ 
    echo '<div class="alert alert-success" role="alert">
    Record Added Successfully </div>';
        }else{
            echo '<div class="alert alert-danger" role="alert">
            Something went Wrong! No record Added.</div>';
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
 //echo "<pre>";
 //print_r($trail). "<br>";
 //print_r($value). "<br>";
 
 //echo "</pre>";
}
//print_r($trail). "<br>";
//echo "<br>";
$values = trim($trail, ", ");
//print_r($values). "<br>";

//UPDATE table SET column = 'value' where column = 'value'
//echo "<pre>";
//print_r($values);
//echo "</pre>";
//die;
  $sql1 = "UPDATE $table SET $values WHERE id = $where";
    // echo $table;
    // echo $sql1;
    // die;
if(mysqli_query($conn, $sql1)){ 
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


function autoinsert(){
//     <form action method=POST>
//     <input type ="text" name="course">
//     Fee <input type ="text" name="course1">
//    </form>
//    $a = array(
//     'course_name' => $_POST['course']
//     'fee' => $_POST['course1']
//    );
foreach($_POST as $key => $value){
    
    if($key & $value){

        // print_r($key);
        // echo "<br>";
        // print_r($value);
        // die;
        $post[$key] = $value;
        //print_r($post[$key]);
        
        if(array_key_exists('table', $post)){
            // nothing to do
        }else{
            $array[$key] = $value;
            // print_r($array);
            // print_r($array[$key]);
            // die;
        }
    }
}
$table = $_POST['table'];
// echo $table;
// die;
insert($table, $array);
}


if(isset($_POST['insert'])){
    autoinsert();
}















function autoupdate(){
    $where = $_GET['id'];
    //update('student_profile', $data, $where);  
      //echo $where;

    //function update($table, $data, $where){
    //     <form action method=POST>
    //     <input type ="text" name="course">
    //     Fee <input type ="text" name="course1">
    //    </form>
    //    $a = array(
    //     'course_name' => $_POST['course']
    //     'fee' => $_POST['course1']
    //    );
    //echo "Hello";
    
    foreach($_POST as $key => $value){
        
        if($key & $value){
    
            //print_r($key);
            //print_r($value);
            $post[$key] = $value;
            //print_r($post[$key]);
            
            if(array_key_exists('table', $post)){
                // nothing to do
            }else{
                $array[$key] = $value;
                //print_r($array);
                //print_r($array[$key]);
                //die;
            }
        }
    }
    $table = $_POST['table'];
    // echo $table;
    // die;
    update($table, $array, $where);
    }
    if(isset($_POST['update'])){
        autoupdate();
    } 
?>