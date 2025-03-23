<?php
	include('dbcon.php');
	session_start(); 

?>
<!DOCTYPE html>
<html>
<head>
	<title>Forgot</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	
	<div class="container">
		<form method="post" enctype="multipart/form/data">
			<div class="form-group">
				<div class="col-xs-4">
    				<label for="ex3">Email</label>
    				<input type="text" class="form-control" name="email">
    			</div>
  			</div>
  			
  			<div><button class="btn btn-info" name="submit">Submit</button></div>
  		</form>
	</div>
<?php
		if(isset($_POST['submit']))
		{
			$email = $_POST['email'];

			$_SESSION['email_otp'] = $email;

			$query = "SELECT * from registration where email ='$email'";
			$result = mysqli_query($db,$query);
			if(mysqli_num_rows($result) > 0)
			{
				
				$otp = rand(100000,999999);
				// Send OTP
				require_once("mail_function.php");
				$mail_status = sendOTP($_POST["email"],$otp);
				
				if($mail_status == 1) {
				 $result = mysqli_query($db,"INSERT INTO `otp_expiry`(`otp`, `email`) VALUES ( '$otp','$email')");
				  $current_id = mysqli_insert_id($db);

				  echo $current_id;
				 
				  if(!empty($current_id)) {
					$success=1;
					echo '<script>window.location = "enterotp.php";</script>'; 
				  }
				 echo '<script>alert("Mail Has Bees Sent..");</script>'; 
				}

			}
			else
			{
				echo '<script>alert("Email not found..");</script>';
			}
		}
	
?>
</body>
</html>