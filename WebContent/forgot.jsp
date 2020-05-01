<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->

<html>

<%@ include file="header.jsp" %>
        
        
    
	<!-- banner -->
	<!-- banner-slider -->
	<div class="w3l_banner_info">
		<div class="slider1">
			<div class="callbacks_container">
				<ul class="rslides" id="slider3">
					<li>
						<div class="slider1-img">
							<div class="slider_banner_info">
							
								
							</div>
						</div>
					</li>
					
					
				</ul>
			</div>
		</div>
	</div>
	<!-- //banner-slider -->


<div class="w3-main">

<div class="container"><br/>
<h1 style="text-align:center">
    Forgot Password
</h1>

<div class="agile-info">

<form method="post" name="form" action="forgotPassword">
<h6>Forgot your password? Enter your mail address below, and the password will be mailed to you.</h6>
<br>
	
<div class="form-group">
<label for="exampleInputEmail1">&nbsp;Email ID:</label><br/>
<input type="email" name="email" placeholder="Email" class="form-control" maxlength="30" style="font-size: 18px;" required>
</div>
<br>

<div class="form-group">
    <button class="btn btn-info btn-block1" style="font-size: 20px;" type="submit"  id="myButton" name="submit">Send Password</button><br>
    <a href="index.jsp" class="btn btn-info btn-block1">Cancel</a>
</div>
 
 
</form>
</div>
</div>
</div>
<%@ include file="footer.jsp" %>

</body>
</html>