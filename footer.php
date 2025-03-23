<html>
<body>
<div class="footer-w3l">
						<div class="container">
							<div class="footer-grids">
								<div class="col-md-4 footer-grid">
									<h4>My Account</h4>
									<ul>
									<li>
										 <?php 
            				if(isset($_SESSION['email']))
            			{ ?>
            			<a href="checkout.php">Check Out</a>
            		<?php }else { ?>
            		<a href="login.php?redirect=checkout.php">Check Out</a>
            		<?php } ?>
        			</li>
										<li><a href="login.php">Login</a></li>
										<li><a href="registered.php"> Create Account </a></li>
									</ul>
								</div>
								<div class="col-md-4 footer-grid">
									<h4>Information</h4>
									<ul>
										<li><a href="index.php">Home</a></li>
										<li><a href="mail.php">About Us</a></li>
										<li><a href="rating.php">Reviews</a></li>
									</ul>
								</div>
								<div class="col-md-4 footer-grid foot">
									<h4 href="">Contact Us</h4>
									<ul>
										<li><i class="glyphicon glyphicon-map-marker" aria-hidden="true"></i><a href="#">Lokmanya college , Satelite , Ahmedabad</a></li>
										<li><i class="glyphicon glyphicon-earphone" aria-hidden="true"></i><a href="#"> +91 7862089632
											 </a></li>
										<li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i><a href="mailto:example@mail.com"> pageparadise@gmail.com</a></li>
										
									</ul>
								</div>
							<div class="clearfix"> </div>
							</div>
							
						</div>
					</div>
					<!---footer--->
					<!--copy-->
		
</body>
</html>