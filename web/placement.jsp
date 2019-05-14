<%-- 
    Document   : viewPlacement
    Created on : 14 Nov, 2018, 11:00:42 PM
    Author     : admin
--%>

<%@page import="java.sql.ResultSetMetaData"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:useBean id="database" scope="session" class="database.app.Database" />

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
                 


                 <style type="text/css">
                         .img-eve{
                         width: 246px !important;
                         height: 205px !important;
                     }
               
</style>







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
			        <a href="index1.jsp"><img src="img/Mu/FINALMAINPNGLOGO.png" alt="" title="" /></a>
			      </div>
			      <nav id="nav-menu-container">
			        <ul class="nav-menu">
			          <li><a href="index1.jsp">Home</a></li>
                                  <li class="menu-has-children"><a href="">Student Corner</a>
			            <ul>
			              <li><a href="updates.jsp">Updates</a></li>
			             <li><a href="img/MuCalander.pdf" target="_blank">Holiday Calender</a></li>
                                      <li><a href="img/activitymu.jpg" target="_blank">Activity Calender</a></li>
			         </ul>
			          </li>	
			          <li><a href="staff.jsp">Staff Details</a></li>
                                 
			          <li><a href="placement.jsp">Placement</a></li>
                                 
			          <li><a href="events.jsp">Events</a></li>
                                 
			          
                                 
                                   <li><a href="gallery.jsp">Gallery</a></li>
                                 				          					          		          
			          <li><a href="contact.html">Contact Us</a></li>
			        </ul>
                              </nav><!-- #nav-menu-container -->		    		
		    	</div>
		    </div>
		  </header><!-- #header -->	<!-- start banner Area -->
			<section class="banner-area relative about-banner" id="home">	
				<div class="overlay overlay-bg"></div>
				<div class="container">				
					<div class="row d-flex align-items-center justify-content-center">
						<div class="about-content col-lg-12">
							<h1 class="text-white">
								Placements				
							</h1>	
							<p class="text-white link-nav"><a href="index1.jsp">Home </a>  <span class="lnr lnr-arrow-right"></span>  <a href="placement.jsp"> Placements</a></p>
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
			
			
		
			
				
			<!-- Start events-list Area -->
			<section class="events-list-area section-gap event-page-lists">
				<div class="container">
					<div class="row align-items-center">
                                            <%
                            
                         ResultSet resultSet=database.getPlacement();
       ResultSetMetaData resultSetMeta=resultSet.getMetaData();
        while (resultSet.next()) {      
            %>
            
            		<div class="col-lg-6 pb-30">
							<div class="single-carusel row align-items-center pop">
								<div class="col-12 col-md-6 thumb">
									<img class="img-fluid img img-eve" src="img/placement/<%= resultSet.getString(5)%>" alt="">
                                                                        
								</div>
								<div class="detials col-12 col-md-6">
									<h4><%= resultSet.getString(2)%></h4>
									<p>
										<%= resultSet.getString(3)%>
                                                                        </p>
								
									<p><%= resultSet.getString(4)%></p>
                                                                </div>
							</div>
						</div>
                
     <%  
        }
      
                        %>
																								
						</div>
				</div>	
			</section>
			<!-- End events-list Area -->
				
			
						
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
    