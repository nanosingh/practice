<?php 
include('includes/db.php');
include('includes/function.php');
$del_id = $_GET['delete'];
delete('student_profile', $del_id);
?>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="vendor/twbs/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
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
      <h2>All Student List</h2>
    </div>
  
    <div class="col-sm-6 text-end">
      <a href="add-record.php" class="btn btn-dark">Add Record</a>
    </div>
  </div>
  <div class="row">
    <div class="col-sm-12 mt-3">
    <div class="table-responsive">
    <table class="table table-striped">
      <tr>
        <th>Sr. No</th>
        <th>Roll. No</th>
        <th>Couse ID</th>
        <th>Batch ID</th>
        <th>Name</th>
        <th>DOB</th>
        <th>Father</th>
        <th>Email</th>
        <th>Gender</th>
        <th>Address</th>
        <th>Status</th>
        <th width="120px">Action</th>
    </tr>
      <?php 
      $sql = "SELECT * FROM student_profile";
      $data = mysqli_query($conn, $sql);
      //$row = mysqli_fetch_assoc($data);
      $i=1;
    foreach($data as $v){
      ?>
      <tr>
        <td><?= $i; ?></td>
        <td><?= $v['roll_no']; ?></td>
        <td><?= $v['course_id']; ?></td>
        <td><?= $v['batch_id']; ?></td>
        <td><?= $v['name']; ?></td>
        <td><?= $v['dob']; ?></td>
        <td><?= $v['father']; ?></td>
        <td><?= $v['email']; ?></td>
        <td><?= $v['sex']; ?></td>
        <td><?= $v['address']; ?></td>
        <td><?= $v['status']; ?></td>
        <td><a href="update-record.php?id=<?= $v['id']; ?>" class="btn btn-success btn-sm"><i class="bi bi-pencil"></i></a>  
        <a class="btn btn-danger btn-sm" href="?delete=<?= $v['id']; ?>"><i class="bi bi-trash"></a></td>
        
      </tr>

      <?php $i++; }?>
</table>
    </div>
  </div>
  </div>
</div>
    
  </body>
</html>