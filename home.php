    <?php
        include('db.php');
        include('function.php');
    ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>First Project</title>
    
</head>

<body>
   


    
    <!-- Navbar content 
</nav>-->
<div class = 'container'>
  
    <div class = 'row mt-5'>
        <div class = 'col'>
<table class="table table-hover">
  <tr>
    <th>ID</th>
    <th>NAME</th>
    <th>DOB</th>
    <th>COURSE ID</th>
    <th>BATCH ID</th>
    <th>ROLL NO</th>
    <th>ADDRESS</th>
  </tr>
  <?php
    
    $g = get('student_profile');
   
    // $sql = "SELECT * FROM stu_profile";
    // $row = mysqli_query($conn, $sql);
    foreach($g as $value)
    {
     
      
    ?>
  <tr>
    <td><?= $value['id'] ?></td>
    <td><?= $value['name'] ?></td>
    <td><?= $value['dob'] ?></td>
    <td><?= $value['course_id'] ?></td>
    <td><?= $value['batch_id'] ?></td>
    <td><?= $value['roll_no'] ?></td>
    <td><?= $value['address'] ?></td>
  </tr>
  <?php } ?>
</table>
</div>
</div>
</div>


    
</body>

</html>
<?php mysqli_close($conn) ?>