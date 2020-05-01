<%@page import="com.bean.signup"%>
<%@page import="com.model.signupModel"%>
<%@page import="com.model.serviceModel"%>
<%@page import="com.bean.serviceBean"%>


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

<%@ include file="header1.jsp" %>


<%!signup st=new signup(); %>
<%
	st=(signup)session.getAttribute("user");
%>



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
    Feedback Form
</h1>

<div class="agile-info">

<form name="frm" method="post" action="feedback">

<% 
String sp_name=(String)request.getParameter("sp_name");
%>


<div class="form-group">
    <label>Full Name</label>
    <input type="text" name="name" class="form-control" value="<%=st.getUname()%>" readonly>  
</div>

<div class="form-group">
    <label>Email address</label>
    <input type="text" name="email" class="form-control" id="exampleInputEmail1" value="<%=st.getEmail()%>" readonly>
</div>

<div >
    <label>Service provider Name</label>
    <input type="text" name="sp_name" class="form-control" value="<%=sp_name %>" maxlength="20" readonly >  
</div>

<div class="form-group">
        <label>Feedback</label>
        <textarea class="form-control" rows="3" name="feedb" rows="3" cols="40" maxlength="200" required></textarea>
    </div>


<div class="form-group">
	<input type="submit" name="submit" value="submit" class="btn btn-info btn-block1" style="font-size: 20px;">
</div>
</form>

</div>
</div>
</div><br>
<%@ include file="footer1.jsp" %>
</body>
</html>