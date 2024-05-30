<pre><?php
if(isset($_POST["sub"])){
  print_r($_FILES);
  
  $img = $_FILES['photo'];
  print_r($img);
  
  $c = $_FILES['photo']['tmp_name'];
  echo $c;

   $check = getimagesize($_FILES["photo"]["tmp_name"]);
   print_r($check);

// die;
echo "<hr>";
}
$dir = "uploads/";

// upload method 1
/*
1 => GIF
2 => JPG
3 => PNG
4 => SVG
5 => PSD

if(!empty($_FILES["photo"]["tmp_name"])){
   $temp_name =  $_FILES["photo"]["tmp_name"];
   $ext = explode(".", $_FILES["photo"]["name"]);
   $name = time(). '.' . end($ext);
    move_uploaded_file($temp_name, "$dir$name");
}else{
    $name="";
}
*/

//upload method 2 with max attribtutes and validiations

if($_SERVER['REQUEST_METHOD'] == 'POST'){
$file = $dir. basename($_FILES["photo"]["name"]);
$ok = 1;
$ext = strtolower(pathinfo($file, PATHINFO_EXTENSION));

if(isset($_POST["sub"])){
  $check = getimagesize($_FILES["photo"]["tmp_name"]);
  if($check !== false){
    echo "Image type: " . $check["mime"]."<br />";
    $filecheck = 1;
  }else{
    echo "File is not an Image.<br />";
    $filecheck = 0;
  }


if(file_exists($file)){
  echo "Already Exist";
  $exist = 0;
}else{
  $exist = 1;
}

if($_FILES["photo"]["size"] > 100000){
  echo "Size is larger than 1 MB";
  $size = 0;
}else{
  $size = 1;
}


if($ext != "jpg" && $ext !="jpeg" && $ext != "png"){
  echo "Only jpg, jpeg, png file can be upload!";
  $ext = 0;
}else{
$ext =1;
}

if($filecheck == 1 AND $exist == 1 AND $size==1 AND $ext == 1){
  if(move_uploaded_file($_FILES["photo"]["tmp_name"], $file)){
  echo "File uploaded: ". htmlspecialchars(basename($_FILES["photo"]["name"]));
  }else{
    echo "Issue with uploading your file.";

  }
    }else{
      echo " Issue with file";
    }


}
}
?>
  <form action="" enctype="multipart/form-data" method="post">
<input type="file" name="photo">
<input type="submit" name="sub">
  </form>