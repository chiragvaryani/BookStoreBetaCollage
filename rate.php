<?php 
if(isset($_POST)){
  $conn = mysqli_connect('localhost','root','','shopping');
  if(mysqli_query($conn,"INSERT INTO rating VALUES('','".$_POST['v1']."','".$_POST['v2']."','".$_POST['v3']."')")){
    echo "1";   
  }else{
    echo "2";
  }
}
?>