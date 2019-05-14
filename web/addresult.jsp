<%-- 
    Document   : addresult
    Created on : 12 Nov, 2018, 8:43:58 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
  if(session.getAttribute("user")!= null)
  {
  %>
<!DOCTYPE html>
	<!DOCTYPE html>
	<html lang="zxx" class="no-js">
	<head>
		<!-- Mobile Specific Meta -->
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<!-- Favicon-->
		<link rel="shortcut icon" href="img/fav.png">
		<!-- Author Meta -->
		<meta name="author" content="colorlib">
		<!-- Meta Description -->
		<meta name="description" content="">
		<!-- Meta Keyword -->
		<meta name="keywords" content="">
		<!-- meta character set -->
		<meta charset="UTF-8">
		<!-- Site Title -->
		<title>Education</title>

		<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet"> 
			<!--
			CSS
			============================================= -->
			<link rel="stylesheet" href="css/linearicons.css">
			<link rel="stylesheet" href="css/font-awesome.min.css">
			<link rel="stylesheet" href="css/bootstrap.css">
			<link rel="stylesheet" href="css/magnific-popup.css">
			<link rel="stylesheet" href="css/nice-select.css">							
			<link rel="stylesheet" href="css/animate.min.css">
			<link rel="stylesheet" href="css/owl.carousel.css">			
			<link rel="stylesheet" href="css/jquery-ui.css">			
			<link rel="stylesheet" href="css/main.css">
		</head>
		<body>	
                    <% 
    response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
                    %>  
		  <header id="header" id="home">
	  			    <div class="container main-menu">
		    	<div class="row align-items-center justify-content-between d-flex">
			      <div id="logo">
			        <a href="index.jsp"><img src="img/Mu/FINALMAINPNGLOGO.png" alt="" title="" /></a>
			      </div>
			      <nav id="nav-menu-container">
			         <ul class="nav-menu">
			          <li><a href="index.jsp">Home</a></li>
                                  <li class="menu-has-children"><a href="">Student Corner</a>
			            <ul>
			              <li><a href="addresult.jsp">Add Update</a></li>
			              <li><a href="viewUpdate.jsp">View Update</a></li>
			            </ul>
			          </li>	
			          <li class="menu-has-children"><a href="">Staff Details</a>
			            <ul>
			              <li><a href="addStaff.jsp">Add Faculty</a></li>
			              <li><a href="viewStaff.jsp">View Faculty</a></li>
			            </ul>
			          </li>	
			          <li class="menu-has-children"><a href="">Placement</a>
			            <ul>
			              <li><a href="addPlacement.jsp">Add placement</a></li>
			              <li><a href="viewPlacement.jsp">View placement</a></li>
			            </ul>
			          </li>	
			          <li class="menu-has-children"><a href="">Events & Workshop</a>
			            <ul>
			              <li><a href="addEvent.jsp">Add Events</a></li>
			              <li><a href="viewEvent.jsp">View Events</a></li>
			            </ul>
			          </li>	
			          
                                  
                                  <li class="menu-has-children"><a href="">Gallery</a>
			            <ul>
			              <li><a href="addGallery.jsp">Add Photos</a></li>
			              <li><a href="viewGallery.jsp">View Photos</a></li>
			            </ul>
			          </li>					          					          		          
			          <li><a href="Logout">Logout</a></li>
			        </ul>
			      </nav><!-- #nav-menu-container -->		    		
		    	</div>
		    </div>
		  </header><!-- #header -->

			<!-- start banner Area -->
			<section class="banner-area relative" id="home">
				<div class="overlay overlay-bg"></div>	
				<div class="container">
					<div class="row fullscreen d-flex align-items-center justify-content-between">
						<div class="banner-content col-lg-9 col-md-12">
							<h1 class="text-uppercase">
								We Ensure better education
								for a better world			
							</h1>
							
                                                       	</div>										
					</div>
				</div>					
			</section>
			<!-- End banner Area -->

		<!-- Start feature Area -->
			<section class="feature-area">
				<div class="container">
					<div class="row">
						<div class="col-lg-4">
                                                   	<div class="single-feature">
								<div class="title">
									<h4>Best Placement</h4>
								</div>
								<div class="desc-wrap">
									<p>
										Usage of the Internet is becoming more common due to rapid advancement
										of technology.
									</p>								
								</div>
							</div>
						</div>
						<div class="col-lg-4">
							<div class="single-feature">
								<div class="title">
                                                                    	
                        <a id="#start"></a>
									<h4>No.1 University in Malwa Region</h4>
								</div>
								<div class="desc-wrap">
									<p>
										For many of us, our very first experience of learning about the celestial bodies begins when we saw our first.
									</p>									
								</div>
							</div>
						</div>
						<div class="col-lg-4">
							<div class="single-feature">
								<div class="title">
									<h4>Huge Library</h4>
								</div>
								<div class="desc-wrap">
									<p>
										If you are a serious astronomy fanatic like a lot of us are, you can probably remember that one event.
									</p>									
								</div>
							</div>
						</div>												
					</div>
				</div>	
			</section>
			<!-- End feature Area -->
			
			
		
				<!-- Start search-course Area -->
			<section class="search-course-area relative">
				<div class="overlay overlay-bg"></div>
				<div class="container">
					<div class="row justify-content-between align-items-center">
						<div class="col-lg-6 col-md-6 search-course-left">
							<h1 class="text-white">
								 UPLOAD UPDATES
                                                                 <BR>
                                                                 <BR>
                                                                 EG. TIME TABLE
                                                                 <span class="lnr lnr-pointer-right"></span>
								
							</h1>
							<p>
							</p>
							
						</div>
						<div class="col-lg-4 col-md-6 search-course-right section-gap">
                                                    <form class="form-wrap" action="AddUpdate" method="post" enctype="multipart/form-data">
								<br><h4 class="text-white pb-20 text-center mb-30">Upload Updates</h4>		
                                                                <input type="text" class="form-control" name="title" placeholder="Enter Title" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Title'" required/>
                                                                <textarea  class="form-control" name="description" placeholder="Enter Description" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Description'" required></textarea>
                                                                <input type="file" name="file" required>
															
                                                                <input type="submit" class="primary-btn text-uppercase" value="Submit">
							</form>
						</div>
					</div>
				</div>	
			</section>		
						<!-- start footer Area -->		
			<footer class="footer-area section-gap">
				<div class="container">
				
					<div class="footer-bottom row align-items-center justify-content-between">
						<p class="footer-text m-0 col-lg-6 col-md-12"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                                    Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | Developed with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="#">CSE 3rd year Students</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
						
					</div>						
				</div>
			</footer>	
			<!-- End footer Area -->	



			<script src="js/vendor/jquery-2.2.4.min.js"></script>
			<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
			<script src="js/vendor/bootstrap.min.js"></script>			
			<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBhOdIF3Y9382fqJYt5I_sswSrEw5eihAA"></script>
  			<script src="js/easing.min.js"></script>			
			<script src="js/hoverIntent.js"></script>
			<script src="js/superfish.min.js"></script>	
			<script src="js/jquery.ajaxchimp.min.js"></script>
			<script src="js/jquery.magnific-popup.min.js"></script>	
    		<script src="js/jquery.tabs.min.js"></script>						
			<script src="js/jquery.nice-select.min.js"></script>	
			<script src="js/owl.carousel.min.js"></script>									
			<script src="js/mail-script.js"></script>	
			<script src="js/main.js"></script>	
		</body>
	</html>
         <%
      
  }
  else
{
response.sendRedirect("login.html");
}
  
%>