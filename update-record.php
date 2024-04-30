<?php 
include('includes/function.php');
$id = $_GET['id'];
//if(isset($_POST['submit'])){
    //echo "Bingo!";
    if(isset($_POST['status'])){
        $status='1';
    }else{ $status = '0'; }
// $data = array(
//    'roll_no' => $_POST['roll_no'],
//    'course_id' =>  $_POST['course'],
//    'batch_id' =>  $_POST['batch'],
//    'name' =>  $_POST['name'],
//    'dob' =>  $_POST['dob'],
//    'father' =>  $_POST['father'],
//    'email' =>  $_POST['email'],
//    'sex' =>  $_POST['gender'],
//    'address' =>  $_POST['address'],
//    'status' =>  $status
// );

// $where = "id=".$_GET['id'];
// update('student_profile', $data, $where);
// }


$conn = db();
$sql = "SELECT * FROM student_profile where id = $id";
      $data = mysqli_query($conn, $sql);
      $row = mysqli_fetch_assoc($data);
     
?>


<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="vendor/twbs/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="vendor/twbs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <title>Update, Record!</title>
</head>

<body>

    <div class="container">
    <?php 
    include("nav.php");
    ?>
        <div class="row">
            <div class="col-sm-6 mt-2">
                <h2>Update Student Record</h2>
            </div>

            <div class="col-sm-6 text-end">
                <a href="index.php" class="btn btn-dark">All Record</a>
            </div>
        </div>

        <div class="col-sm-6">
        <form action="" method="post">
        <div class="row">
        <label for="roll_no" class="col-sm-3 col-form-label">Roll No.*</label>
            <div class="col-sm-9 mt-1">
                <input type="text" value="<?= $row['roll_no']; ?>" required="required" name="roll_no" id="roll_no" class="form-control">
            </div>

        <label for="course" class="col-sm-3 col-form-label">Course*</label>
            <div class="col-sm-9 mt-1">
                <select name="course_id" required class="form-control">
                    <option value="">--SELECT COURSE--</option>
            <?php 
      $sql = "SELECT * FROM course";
      $data = mysqli_query($conn, $sql);
      
      $i=1;
    foreach($data as $v){ ?>
<option value="<?= $v['id'] ?>" <?php if($row['course_id']==$v['id']){ echo "selected"; } ?> ><?= $v['course_name'];?> | <?= $v['course_fee'];?></option>
    <?php } ?>
                </select>
            </div>


        <label for="batch" class="col-sm-3 col-form-label">Batch*</label>
            <div class="col-sm-9 mt-1">
                <select required name="batch_id" class="form-control">
                <option value="">--SELECT BATCH--</option>
            <?php 
      $sql = "SELECT * FROM batch";
      $data = mysqli_query($conn, $sql);
      //$row = mysqli_fetch_assoc($data);
      $i=1;
    foreach($data as $v){ ?>
<option <?php if($v['id']==$row['batch_id']){ echo "selected"; } if($v['status']=='in-active'){ echo "disabled"; } ?> value="<?= $v['id'] ?>"><?= $v['batch_name'];?> | <?= $v['batch_time'];?></option>
    <?php } ?>
                </select>
            </div>



            <label for="name" class="col-sm-3 col-form-label">Name*</label>
            <div class="col-sm-9 mt-1">
                <input type="text" value="<?= $row['name']; ?>" name="name" required id="name" class="form-control">
            </div>
            <label for="dob" class="col-sm-3 col-form-label">DOB</label>
            <div class="col-sm-9 mt-1">
                <input type="date" value="<?= $row['dob']; ?>" name="dob" id="dob" class="form-control">
            </div>

            <label for="father" class="col-sm-3 col-form-label">Father</label>
            <div class="col-sm-9 mt-1">
                <input type="text" value="<?= $row['father']; ?>" name="father" id="father" class="form-control">
            </div>

            <label for="email" class="col-sm-3 col-form-label">Email</label>
            <div class="col-sm-9 mt-1">
                <input type="text" value="<?= $row['email']; ?>" name="email" id="email" class="form-control">
            </div>

            <label for="gender" class="col-sm-3 col-form-label">Gender</label>
            <div class="col-sm-9 mt-1">
                <input type="text" value="<?= $row['sex']; ?>" name="sex" id="gender" class="form-control">
            </div>

            <label for="address" class="col-sm-3 col-form-label">Address</label>
            <div class="col-sm-9 mt-1">
                <textarea class="form-control" name="address"><?= $row['address'];?></textarea>
            </div>

            <label for="status" class="col-sm-3 form-check-label">Status</label>
            <div class="col-sm-9 mt-1">
                <input type="checkbox" <?php if($row['status']==1){ echo "checked"; } ?> class="form-check-input" name="status">
                Please tick the check box to set status as Active.
            </div>

            <div class="col-sm-12 mt-1 text-end">
            <input type="hidden" name="table" value="student_profile">
            <button class="btn btn-primary" name="update">Update Record</button>
                
            </div>


            </div>
        </form>
</div>
    </div>

</body>

</html>