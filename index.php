<?php
	include("header.php");
?>

<!--header-->
		<!--banner-->
		<div class="banner-w3">
			<div class="demo-1">            
				<div id="example1" class="core-slider core-slider__carousel example_1">
					<div class="core-slider_viewport">
						<div class="core-slider_list">
							<div class="core-slider_item">
								<img src="image/u2.jpg" width="2000" height="50" class="img-responsive" alt="">
							</div>
							 <div class="core-slider_item">
								 <img src="image/u1.jpg" width="2000" height="50" class="img-responsive" alt="">
							 </div>
							<div class="core-slider_item">
								  <img src="image/u3.jpg" width="2000" height="50" class="img-responsive" alt="">
							</div>
							<div class="core-slider_item">
								  <img src="image/u4.jpg" width="2000" height="50" class="img-responsive" alt="">
							</div>
						 </div>
					</div>
					<div class="core-slider_nav">
						<div class="core-slider_arrow core-slider_arrow__right"><span style="font-size: 25px;color: white;padding-top: 7px" class="glyphicon glyphicon-chevron-right"></span></div>
						<div class="core-slider_arrow core-slider_arrow__left"><span style="font-size: 25px;color: white;padding-top: 7px" class="glyphicon glyphicon-chevron-left"></span></div>
					</div>
					<div class="core-slider_control-nav"></div>
				</div>
			</div>
			<link href="css/coreSlider.css" rel="stylesheet" type="text/css">
			<script src="js/coreSlider.js"></script>
			<script>
			$('#example1').coreSlider({
			  pauseOnHover: false,
			  interval: 3000,
			  controlNavEnabled: true
			});

			</script>
	</div>

       
    

	<div class="content">
			<!--banner-bottom-->
				<div class="ban-bottom-w3l">
					<div class="container">
						<div class="col-md-6 ban-bottom">
							<div class="ban-top">
								<img src="image/study1.jpg" class="img-responsive" alt=""/>
								<a href="School.php?cat=StudyBooks&sub=English"><div class="ban-text">
									<h4>Study Books</h4>
								</div></a>
								
							</div>
						</div>
						<div class="col-md-6 ban-bottom3">
							<div class="ban-top">
								<img src="image/story1.jpg" class="img-responsive" alt=""/>
								<a href="StoryBooks.php?cat=StoryBook&sub=Disney"><div class="ban-text1">
									<h4>Disney Story Books</h4>
								</div></a>
							</div>
							<div class="ban-img">
								<div class=" ban-bottom1">
									<div class="ban-top">
										<img src="image/novel1.jpg" class="img-responsive" alt=""/>
										<a href="Novels.php?cat=Novels&sub=Science"><div class="ban-text1">
											<h4>Science Novels</h4>
										</div></a>
									</div>
								</div>
								<div class="ban-bottom2">
									<div class="ban-top">
										<img src="image/fiction1.jpg" class="img-responsive" alt=""/>
										<a href="Novels.php?cat=Novels&sub=Fiction"><div class="ban-text1">
											<h4>Fictions</h4>
										</div></a>
									</div>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="container">
				<div class="container">
				<div class="row">
					<div class="col-sm-3">
									<div class="ban-top" style="height: 320px;width: 330px;">
										<img src="image/horrorstoryimg.jpg" class="img-responsive" alt=""/>
										<a href="StoryBooks.php?cat=StoryBook&sub=HorrorStory"><div class="ban-text1">
											<h4>Horror Story</h4>
										</div></a>
									</div>
					</div>
					<div class="col-sm-1"></div>
					<div class="col-sm-3">
									<div class="ban-top" style="height: 320px;width: 330px">
										<img src="image/bca.jpg" class="img-responsive" alt=""/>
										<a href="Collage.php?cat=StudyBooks&sub=BCA"><div class="ban-text1">
											<h4>BCA Books</h4>
										</div></a>
									</div>
					</div>
					<div class="col-sm-1"></div>
					<div class="col-sm-3">
									<div class="ban-top" style="height: 320px;width: 330px">
										<img src="image/autobiography01.jpg" class="img-responsive" alt=""/>
										<a href="Novels.php?cat=Novels&sub=Autobiography"><div class="ban-text1">
											<h4>Autobiography</h4>
										</div></a>
									</div>
					</div>
				<div class="col-sm-1"></div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<br>



<?php
	include("footer.php");
?>