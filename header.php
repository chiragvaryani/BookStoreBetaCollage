<!DOCTYPE HTML>
<html>
<head>
<title>Page paradise</title>
<!--css-->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all"/>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/font-awesome.css" rel="stylesheet">
<!--css-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="New Shop Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<script src="js/jquery.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href='//fonts.googleapis.com/css?family=Cagliostro' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,800italic,800,700italic,700,600italic,600,400italic,300italic,300' rel='stylesheet' type='text/css'>
<!--search jQuery-->
	<script src="js/main.js"></script>
<!--search jQuery-->
<script src="js/responsiveslides.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
	$("#div1").hide();
    $("#toggle").click(function(){
        $("#div1").toggle();
    });
	
});
</script>
<script>
$(document).ready(function(){



 function load_data(query)
 {
  $.ajax({
   url:"fetch.php",
   method:"POST",
   data:{query:query},
   success:function(data)
   {
    $('#result').html(data);
   }
  });
 }

 $('#search_text').keyup(function(){
  var search = $(this).val();
  if(search != '')
  {
   load_data(search);
  }
  else
  {
   load_data();
  }
 });
});
</script>
<script>

    $(function () {
      $("#slider").responsiveSlides({
      	auto: true,
      	nav: true,
      	speed: 500,
        namespace: "callbacks",
        pager: true,
      });
    });
 </script>
 <!--mycart-->
<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
 <!-- cart -->
<script src="js/simpleCart.min.js"></script>
<!-- cart -->
  <!--start-rate-->
<script src="js/jstarbox.js"></script>
	<link rel="stylesheet" href="css/jstarbox.css" type="text/css" media="screen" charset="utf-8" />
		<script type="text/javascript">
			jQuery(function() {
			jQuery('.starbox').each(function() {
				var starbox = jQuery(this);
					starbox.starbox({
					average: starbox.attr('data-start-value'),
					changeable: starbox.hasClass('unchangeable') ? false : starbox.hasClass('clickonce') ? 'once' : true,
					ghosting: starbox.hasClass('ghosting'),
					autoUpdateAverage: starbox.hasClass('autoupdate'),
					buttons: starbox.hasClass('smooth') ? false : starbox.attr('data-button-count') || 5,
					stars: starbox.attr('data-star-count') || 5
					}).bind('starbox-value-changed', function(event, value) {
					if(starbox.hasClass('random')) {
					var val = Math.random();
					starbox.next().text(' '+val);
					return val;
					} 
				})
			});
		});
		</script>
<!--//End-rate-->
</head>
<body>
	<!--header-->
		<div class="header">
			<div class="header-top">
				<div class="container">
					 <div class="top-left">
						<a href="" style="color:white;"> Help  <i class="glyphicon glyphicon-phone" aria-hidden="true" ></i> +91 7862068396
					 </a>
					</div>
					<div class="top-right">
					<ul>
						<li><a href="checkout.php">Checkout</a></li>
						<?php

							session_start();
							if(@$_SESSION['email'] == true){

								echo "<li><a href='logout.php'>Logout</a></li>";
							}else{
								
								echo "<li><a href='login.php'>Login</a></li>";
							}

						?>
						
						<li><a href="registered.php"> Create Account </a></li>
					</ul>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
			<div class="heder-bottom">
				<div class="container">
					<div class="logo-nav">
						<div class="logo-nav-left">
							<h1> <a href="index.php">Page paradise </a> <br/> <span style="color:white; font-size:25px;">Read anywhere</span> </h1>
						</div>
						<div class="logo-nav-left1">
							<nav class="navbar navbar-default">
							<!-- Brand and toggle get grouped for better mobile display -->
							<div class="navbar-header nav_2">

								<button type="button" style="margin-left: 30px;" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
									<span class="sr-only">Toggle navigation</span>
									<span class="icon-bar"></span>
									<span class="icon-bar"></span>
									<span class="icon-bar"></span>
								</button>
							</div> 
							<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
								<ul class="nav navbar-nav">
									<li class="active"><a href="index.php" class="act">Home</a></li>	
									<!-- Mega Menu -->
									<!--<li class="dropdown">
										<a href="#" class="dropdown-toggle" data-toggle="dropdown">StudyBooks<b class="caret"></b></a>
										<ul class="dropdown-menu multi-column columns-3">
											<div class="row">
												<div class="col-sm-6  multi-gd-img">
													<ul class="multi-column-dropdown">
														<h6>College</h6>
														<li><a href="College.php?cat=StudyBooks&sub=BCA">BCA</a></li>
														<li><a href="College.php?cat=StudyBooks&sub=Bcom">Bcom</a></li>
														<li><a href="College.php?cat=StudyBooks&sub=BBA">BBA</a></li>
														<li><a href="College.php?cat=StudyBooks&sub=Arts">Arts</a></li>
													</ul>
												</div>
												<div class="col-sm-6  multi-gd-img">
													<ul class="multi-column-dropdown">
														<h6>School</h6>
														<li><a href="School.php?cat=StudyBooks&sub=General Knowledge">General Knowledge</a></li>
														<li><a href="School.php?cat=StudyBooks&sub=Computers">Computers</a></li>
														<li><a href="School.php?cat=StudyBooks&sub=Science">Science</a></li>
														<li><a href="School.php?cat=StudyBooks&sub=English">English</a></li>
													</ul>
												</div>
												
												<div class="clearfix"></div>
											</div>
										</ul>
									</li>-->
									
									<li class="dropdown">
										<a href="#" class="dropdown-toggle" data-toggle="dropdown">StudyBooks<b class="caret"></b></a>
										<ul class="dropdown-menu multi-column columns-3">
											<div class="row">
												<div class="col-sm-6  multi-gd-img">
													<ul class="multi-column-dropdown">
														<h6>Collage</h6>
														<li><a href="Collage.php?cat=StudyBooks&sub=BCA">BCA</a></li>
														<li><a href="Collage.php?cat=StudyBooks&sub=Bcom">Bcom</a></li>
														<li><a href="Collage.php?cat=StudyBooks&sub=BBA">BBA</a></li>
														<li><a href="Collage.php?cat=StudyBooks&sub=Arts">Arts</a></li>
													</ul>
												</div>
												<div class="col-sm-6  multi-gd-img">
													<ul class="multi-column-dropdown">
														<h6>School</h6>
														<li><a href="School.php?cat=StudyBooks&sub=General Knowledge">General Knowledge</a></li>
														<li><a href="School.php?cat=StudyBooks&sub=Computers">Computers</a></li>
														<li><a href="School.php?cat=StudyBooks&sub=Science">Science</a></li>
														<li><a href="School.php?cat=StudyBooks&sub=English">English</a></li>
													</ul>
												</div>
												
												<div class="clearfix"></div>
											</div>
										</ul>
									</li>

									
									
									<li class="dropdown">
										<a href="#" class="dropdown-toggle" data-toggle="dropdown">StoryBooks <b class="caret"></b></a>
										<ul class="dropdown-menu multi-column columns-3">
											<div class="row">
												<div class="col-sm-3  multi-gd-img">
													<ul class="multi-column-dropdown">
														<h6>STORY BOOKS</h6>
														<li><a href="StoryBooks.php?cat=StoryBook&sub=Disney">Disney</a></li>
														<li><a href="StoryBooks.php?cat=StoryBook&sub=Car">Car</a></li>
														<li><a href="StoryBooks.php?cat=StoryBook&sub=Pixar">Pixar</a></li>
														<li><a href="StoryBooks.php?cat=StoryBook&sub=HorrorStory">HorrorStory</a></li>
														<li><a href="StoryBooks.php?cat=StoryBook&sub=FairyTale">FairyTale</a></li>
													</ul>
												</div>											
												<div class="clearfix"></div>
											</div>
										</ul>
									</li>


									<li class="dropdown">
										<a href="#" class="dropdown-toggle" data-toggle="dropdown"> Novels <b class="caret"></b></a>
										<ul class="dropdown-menu multi-column columns-3">
											<div class="row">
												<div class="col-sm-6  multi-gd-img">
													<ul class="multi-column-dropdown">
														<h6>NOVELS</h6>
														<li><a href="Novels.php?cat=Novels&sub=Fiction">Fiction</a></li>
														<li><a href="Novels.php?cat=Novels&sub=Non-fiction">Non-Fiction</a></li>
														<li><a href="Novels.php?cat=Novels&sub=Science">Science</a></li>
														<li><a href="Novels.php?cat=Novels&sub=Autobiography">Autobiography</a></li>
														<li><a href="Novels.php?cat=Novels&sub=Fantasy">Fantasy</a></li>
														<li><a href="Novels.php?cat=Novels&sub=Thriller">Thriller</a></li>
												</div>												
										</ul>
									</li>
									
									<li><a href="mail.php">Contact Us</a></li>
								</ul>
							</div>
							</nav>
						</div>
						<div class="logo-nav-right">
							<ul class="cd-header-buttons">
								<li><a class="cd-search-trigger" href="#cd-search"> <span></span></a></li>
							</ul> <!-- cd-header-buttons -->
							<div  class="cd-search">
								<form action="#" method="post">
									<input name="search" id="search_text" type="search" placeholder="Search...">
								</form>
							</div>	
						</div>
						<div class="header-right2">
							<div class="cart box_1" style="color: white;">
								<a href="cart.php"><span class="badge badge-primary" style="border-radius: 10px;"><img style="height: 25px;border-radius: 6px;" src="image\shopcart.jpg">
		<?php 
								            $num=0;
								            if(isset($_SESSION['cart_item']))
								            {
								                
								                $num = count($_SESSION['cart_item']);
								                

								            }echo $num; ?>
								        </span>
									
								</a>
								<div class="clearfix"> </div>
							</div>	
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
  		<hr style="color:#396791; border:solid; margin:0px;" />
  	</div>
	<div id="result" style="color:white;width:100%;position:absolute;z-index: 1">
	</div>
		