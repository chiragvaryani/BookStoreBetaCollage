+<?php

include('header.php');
include('database.php');

if(isset($_POST['login'])){

  $email = $_POST['email'];
  $password = $_POST['password'];

  $query = mysqli_query($conn, "SELECT * FROM registration WHERE email = '$email' AND password = '$password'");
    
  if($row = mysqli_fetch_array($query)){

    $_SESSION['email'] = $email;
    echo "<script>alert('Welcome to Page Paradise');document.location='index.php';</script>";
  }
  else{
    echo "<script>alert('invalid email id or password')</script>";
  }
}

?>

<!--content-->
    <div class="content">
        <!--login-->
      <div class="login">
        <div class="main-agileits">
          <div class="form-w3agile">
            <h3>Login To Page Paradise</h3>
            <form action="" method="post">
              <div class="key">
                <i class="fa fa-envelope" aria-hidden="true"></i>
                <input  type="text" placeholder="Email" name="email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}" required="">
                <div class="clearfix"></div>
              </div>
              <div class="key">
                <i class="fa fa-lock" aria-hidden="true"></i>
                <input  type="password" placeholder="Password" name="password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}" required="">
                <div class="clearfix"></div>
              </div>
              <input type="submit" value="Login" name="login">
            </form>
          </div>
          <div class="forg">
            <a href="forgot.php" class="forg-left">Forgot Password</a>
            <a href="registered.php" class="forg-right">Register</a>
          <div class="clearfix"></div>
          </div>
        </div>
      </div>
        <!--login-->
    </div>
    <!--content-->

<?php

include('footer.php');

?>