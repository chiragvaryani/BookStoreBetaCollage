<?php	
	function sendOTP($email,$otp)
{
	require('PHPMailer/PHPMailerAutoload.php');
		$message_body = "<div style='width:500px;height:400px;background-color:lightgray;'>
			One Time Password for Shopping login authentication is:". $otp."<br/><br/></div>";
		//$message_body = "One Time Password for Maxgen login authentication is:<br/><br/>" . $otp;
		$mail = new PHPMailer();
		$mail->IsSMTP();
		$mail->SMTPOptions = array(
			'ssl' => array(
				'verify_peer' => false,
				'verify_peer_name' => false,
				'allow_self_signed' => true
			)
			);
		$mail->SMTPDeug = 4;
	 	$mail->SMTPAuth = TRUE;
		$mail->SMTPSecure = 'tls'; // tls or ssl
		$mail->Port     = "587";
		$mail->Username = "easyshoppingshopping@gmail.com";
		$mail->Password = "easyshopping@1";
		$mail->Host     = "smtp.gmail.com";
		$mail->Mailer   = "smtp";
		$mail->SetFrom("easyshoppingshopping@gmail.com", "EasyShopping");
		$mail->AddAddress($email);
		$mail->Subject = "OTP to Login";
		$mail->MsgHTML($message_body);
		$mail->IsHTML(true);		
		$result = $mail->Send();
		
		return $result;
	}
?>