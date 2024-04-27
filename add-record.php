<?php 
include('includes/function.php');

if(isset($_POST['submit'])){
    if($_POST['status']){
        $status = '1';
    }else{
        $status='0';
    }
    
$data = array(
    'roll_no'=>$_POST['roll_no'], 
    'course_id'=>$_POST['course'], 
    'batch_id'=>$_POST['batch'], 
    'name'=>$_POST['name'], 
    'dob'=>$_POST['dob'], 
    'father'=>$_POST['father'], 
    'email'=>$_POST['email'], 
    'sex'=>$_POST['gender'], 
    'address'=>$_POST['address'], 
    'status'=>$status
);
insert('student_profile', $data);
    //$sql = "insert into student_profile (roll_no, course_id, batch_id, name, dob, father, email, sex, address, status) VALUES ('$_POST[roll_no]', '$_POST[course]', '$_POST[batch]', '$_POST[name]', '$_POST[dob]', '$_POST[father]', '$_POST[email]', '$_POST[gender]', '$_POST[address]', '$status')";
//     if(mysqli_query($conn, $sql)){ 
// echo '<div class="alert alert-success" role="alert">
// Record Added Successfully for: '.$_POST['name'].'</div>';
//     }else{
//         echo '<div class="alert alert-danger" role="alert">
//         Something went Wrong! No record Added.</div>';
//     }
}
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
    <title>Hello, world!</title>
</head>

<body>

    <div class="container">
    <?php 
    include("nav.php");
    ?>
        <div class="row">
            <div class="col-sm-6 mt-2">
                <h2>Add Student Record</h2>
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
                <input type="text" required="required" name="roll_no" id="roll_no" class="form-control">
            </div>

        <label for="course" class="col-sm-3 col-form-label">Course*</label>
            <div class="col-sm-9 mt-1">
                <select name="course" required class="form-control">
                    <option value="">--SELECT COURSE--</option>
            <?php 
      $sql = "SELECT * FROM course";
      $data = mysqli_query($conn, $sql);
      //$row = mysqli_fetch_assoc($data);
      $i=1;
    foreach($data as $v){ ?>
<option value="<?= $v['id'] ?>"><?= $v['course_name'];?> | <?= $v['course_fee'];?></option>
    <?php } ?>
                </select>
            </div>


        <label for="batch" class="col-sm-3 col-form-label">Batch*</label>
            <div class="col-sm-9 mt-1">
                <select required name="batch" class="form-control">
                <option value="">--SELECT BATCH--</option>
            <?php 
      $sql = "SELECT * FROM batch";
      $data = mysqli_query($conn, $sql);
      //$row = mysqli_fetch_assoc($data);
      $i=1;
    foreach($data as $v){ ?>
<option <?php if($v['status']=='in-active'){ echo "disabled"; } ?> value="<?= $v['id'] ?>"><?= $v['batch_name'];?> | <?= $v['batch_time'];?></option>
    <?php } ?>
                </select>
            </div>



            <label for="name" class="col-sm-3 col-form-label">Name*</label>
            <div class="col-sm-9 mt-1">
                <input type="text" name="name" required id="name" class="form-control">
            </div>
            <label for="dob" class="col-sm-3 col-form-label">DOB</label>
            <div class="col-sm-9 mt-1">
                <input type="date" name="dob" id="dob" class="form-control">
            </div>

            <label for="father" class="col-sm-3 col-form-label">Father</label>
            <div class="col-sm-9 mt-1">
                <input type="text" name="father" id="father" class="form-control">
            </div>

            <label for="email" class="col-sm-3 col-form-label">Email</label>
            <div class="col-sm-9 mt-1">
                <input type="text" name="email" id="email" class="form-control">
            </div>

            <label for="gender" class="col-sm-3 col-form-label">Gender</label>
            <div class="col-sm-9 mt-1">
                <input type="text" name="gender" id="gender" class="form-control">
            </div>

            <label for="address" class="col-sm-3 col-form-label">Address</label>
            <div class="col-sm-9 mt-1">
                <textarea class="form-control" name="address"></textarea>
            </div>

            <label for="status" class="col-sm-3 form-check-label">Status</label>
            <div class="col-sm-9 mt-1">
                <input type="checkbox" class="form-check-input" name="status">
                Please tick the check box to set status as Active.
            </div>

            <div class="col-sm-12 mt-1 text-end">
                <input type="submit" class="btn btn-primary" name="submit" value="Add Record">
            </div>


            </div>
        </form>
</div>
    </div>

</body>

</html>