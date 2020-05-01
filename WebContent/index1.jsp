<%@page import="com.bean.signup"%>
<%@page import="com.model.signupModel"%>
<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%!signup st=new signup(); %>
<%
	st=(signup)session.getAttribute("user");

%>
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<html>

<%@ include file="header1.jsp" %>


	<!-- banner -->
	<!-- banner-slider -->
	<div class="w3l_banner_info">
		<div class="slider">
			<div class="callbacks_container">
				<ul class="rslides" id="slider3">
					<li>
						<div class="slider-img">
							<div class="slider_banner_info">
							<div class="text">
								   <h3 class="word wisteria">We Are The Best Home Services For Making Your Home Shine</h3>
								  <!-- <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry</p> -->
								</div>
								
							</div>
						</div>
					</li>
					<li>
						<div class="slider-img-2">
							<div class="slider_banner_info">
								<div class="text">
								  <h3 class="word wisteria">Making your Home Shine and Spotless Is Our Business And Priority</h3>
								  <!-- <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry</p> -->
								</div>
								
							</div>
						</div>
					</li>
					<li>
						<div class="slider-img-3">
							<div class="slider_banner_info">
								<div class="text">
								  <h3 class="word wisteria">Our Home Services Providers will Make You Proud in Society</h3>
								 <!--  <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry</p> -->
								</div>
								
							</div>
						</div>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- //banner-slider -->
</div>
</header>
<section class="bannerbottom py-lg-5 py-md-4 py-md-3 py-2">
<div class="bannerbottom py-lg-5 py-md-4 py-md-3 py-2">
<div class="container">
<div class="row">
<div class="col-md-4 col-sm-12 w3_ban1">
<div class="card" >
  <img class="card-img-top" src="images/bb1.jpg" alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title">Home Care & Design</h5>
    <!-- <p class="card-text">Some quick example text to build on the Elite Services and make up the bulk of the card's content.</p> -->
    <a href="home_care1.jsp" class="btn btn-primary">Explore</a>
  </div>
</div>
</div>
<div class="col-md-4 col-sm-12 w3_ban1">
<div class="card" >
  <img class="card-img-top" src="images/bb2.jpg" alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title">Repair & Maintenance</h5>
    <!-- <p class="card-text">Some quick example text to build on the Elite Services and make up the bulk of the card's content.</p> -->
    <a href="repair1.jsp" class="btn btn-primary">Explore</a>
  </div>
</div>
</div>
<div class="col-md-4 col-sm-12 w3_ban1">
<div class="card" >
  <img class="card-img-top" src="images/bb3.jpg" alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title">Event Services</h5>
   <!--  <p class="card-text">Some quick example text to build on the Elite Services and make up the bulk of the card's content.</p> -->
    <a href="events1.jsp" class="btn btn-primary">Explore</a>
  </div>
</div>
</div>



<div class="col-md-4 col-sm-12 w3_ban">
<div class="card" >
  <img class="card-img-top" src="images/bb4.jpg" alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title">Health & Fitness</h5>
    <!-- <p class="card-text">Some quick example text to build on the Elite Services and make up the bulk of the card's content.</p> -->
    <a href="health1.jsp" class="btn btn-primary">Explore</a>
  </div>
</div>
</div>
<div class="col-md-4 col-sm-12 w3_ban">
<div class="card" >
  <img class="card-img-top" src="images/bb5.jpg" alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title">Beauty & Spa</h5>
   <!--  <p class="card-text">Some quick example text to build on the Elite Services and make up the bulk of the card's content.</p> -->
    <a href="beauty1.jsp" class="btn btn-primary">Explore</a>
  </div>
</div>
</div>
<div class="col-md-4 col-sm-12 w3_ban">
<div class="card" >
  <img class="card-img-top" src="images/bb6.jpg" alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title">Business Services</h5>
    <!-- <p class="card-text">Some quick example text to build on the Elite Services and make up the bulk of the card's content.</p> -->
    <a href="business1.jsp" class="btn btn-primary">Explore</a>
  </div>
</div>
</div>

<br/>
<br/>




</div>
</div>
</div>
</section>

<section class="mission py-lg-5 py-md-4 py-md-3 py-2">
<div class="mission py-lg-5 py-md-4 py-md-3 py-2">
<div class="row">
<div class="col-md-3 col-sm-12 w3_ms8">
<img src="images/bb9.jpg" alt="xt" class="img-fluid">
</div>
<div class="col-md-3 col-sm-12 w3_ms1">
<h4 class="mb-lg-4 mb-md-3 mb-sm-2 mb-2">Our Mission</h4>
<p>Our mission for solving the massive problem is- For Right person, At Right time, On Right thing and At Right price.<br/> We are seeking to provide customers with a differentiated experience in shopping for home services.</p>
</div>


<!-- <div class="col-md-6 col-sm-12 w3_ms3">
Slideshow container
<div class="slideshow-container">

  Full-width slides/quotes
  <div class="mySlides">
  <img src="images/test1.jpg" alt="xyt" class="img-fluid">
    <h4>Lorem Ipsum is simply dummy text of the printing and typesetting industry</h4>
    
  </div>

  <div class="mySlides">
  <img src="images/test2.jpg" alt="xyt" class="img-fluid">
    <h4>Lorem Ipsum is simply dummy text of the printing and typesetting industry</h4>
    
  </div>


  Next/prev buttons
  <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
  <a class="next" onclick="plusSlides(1)">&#10095;</a>
</div>

</div>
<div class="col-md-3 col-sm-12 w3_ms7">
<h4 class="mb-lg-4 mb-md-3 mb-sm-2 mb-2">Our Values</h4>
<p>We believe in our processes and in our people who lead them. We enjoy the power of empowerment and delegation.</p>
</div>
<div class="col-md-3 col-sm-12 w3_ms">
	<div class="row inner_stat_wthree_agileits">
			
			<div class="col-md-6 stats_left counter_grid2">
				<i class="far fa-edit"></i>
				<p class="counter">10</p>
				<h4>Projects</h4>
			</div>
			<div class="col-md-6 stats_left counter_grid3">
				<i class="far fa-smile"></i>
				<p class="counter">100</p>
				<h4>Happy Clients</h4>
			</div>

		</div>
		</div>
 -->

<div class="col-md-3 col-sm-12 w3_ms6">
</div>
<div class="col-md-3 col-sm-12 w3_ms4">
<h4 class="mb-lg-4 mb-md-3 mb-sm-2 mb-2">Our Vision</h4>
<p>To provide customers with home repair service experience that delights them and become their best-handy-friend.</p>
</div>
</div>
</div>
</section>


<%@ include file="footer1.jsp" %>

 </body>
</html>