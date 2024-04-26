<?php 
include('db.php');
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Student</title>
</head>

<body>
    <?php
    if(isset($_GET['submit'])){
    //$name = $_GET['name'];
    
    
    $sql1 = "INSERT INTO result (name,student_id,sem,max_marks,obtain_marks) 
    VALUES ('$_GET[name]' ,'$_GET[student_id]' ,'$_GET[sem]','$_GET[max_marks]' ,'$_GET[obtain_marks]')";
    if(mysqli_query($conn, $sql1)){ 
        echo '<div class="alert alert-success" role="alert">
        Record Added Successfully for: '.$_GET['name'].'</div>';
            }else{
                echo '<div class="alert alert-danger" role="alert">
                Something went Wrong! No record Added.</div>';
            }
    }
    ?>
   
        <div class='container'>
            <div class='row col-sm-6'>
<?php
if (isset ($_GET['name'])){
    $std_id = $_GET['name'];
}else{
    $std_id ='';
}
?>
 <form action='' method='GET'>
                <div class="mb-1">
                    <label for="name" class="form-label">Name</label>
                    <select onchange="this.form.submit()" name="name" class="form-control" required>
                        <option value=""> --SELECT STUDENT-- </option>
                        <?php $student = "select id, name from stu_profile";
                        $std = mysqli_query($conn, $student);
                        
                        foreach ($std as $r){
?>
                            <option <?php if ($r['id']==$std_id){ echo "selected"; } ?> value="<?= $r['id']; ?>"> <?= $r['id']; ?> | <?= $r['name']; ?></option>
  <?php                      } ?>
                    </select>
                </div>
 </form>

 <form action='' method='GET'>

 <?php if (isset ($_GET['name'])){ ?>
                <div class="mb-1">
                    <label for="student_id" class="form-label">Course Name</label>
                    <?php $stu = "select * from stu_profile inner join course on stu_profile.course_id = course.id where stu_profile.id='$std_id'"; 
                    $stu = mysqli_query($conn, $stu);
                    $s = mysqli_fetch_assoc($stu);

                    //print_r($s);
                    ?>
                    <label for="student_id" class="form-label"></label>
                    <input type="text" readonly value="<?= $s['course_name'];?>" class="form-control" name="student_id">
                </div>


                <div class="mb-1">
                    <label for="sem" class="form-label">Semester</label>
                    <input type="text" class="form-control" name="sem">
                </div>
                <div class="mb-1">
                    <label for="max_marks" class="form-label">Maximum Marks</label>
                    <input type="text" class="form-control" name="max_marks">
                </div>
                <div class="mb-1">
                    <label for="obtain_marks" class="form-label">Obtain Marks</label>
                    <input type="text" class="form-control" name="obtain_marks">
                </div>
                <?php } ?>
                <div class="mb-3">

                    <input type='submit' class='form-control btn btn-primary' name='submit'>
                </div>
            </div>
        </div>
    </form>


</html>