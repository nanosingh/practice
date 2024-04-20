<?php 
include('includes/db.php');
include('includes/function.php');


$data = array(
    'roll_no'=>'18654',
    'Name'=>'Anurag',
    'course_id'=>'2',
    'batch_id'=>'33',
    'father'=>'Father',
    'email'=>'mail@anurag.com',
    'sex'=> 'M'
);


insert('student_profile', $data);
?>

