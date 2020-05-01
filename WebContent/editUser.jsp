<%@page import="com.bean.signup"%>
<%@page import="com.model.signupModel"%>
<%@page import="java.util.ArrayList"%>
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
  <u>Edit Information</u>  
</h1>

<div class="agile-info">

<form name="updateform" method="post" action="updateUser">
    

<div class="form-group">
    <label>User Name</label>
    <input type="text" name="uid" value="<%=st.getUname()%>" class="form-control" readonly>  
</div>
   
<div class="form-group">
    <label>Email ID</label>
    <input type="email" name="mail" value="<%=st.getEmail()%>" class="form-control" id="exampleInputEmail1" readonly>
</div>

<div class="form-group">
    <label>Password</label>
    <input type="text" name="pass" maxlength="40"  value="<%=st.getPass()%>" class="form-control" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"
     required>  
</div>

<div class="form-group">
      <label>Address</label>
      <textarea class="form-control" name="add" rows="3" cols="40" maxlength="150" required><%=st.getAdd()%></textarea>
</div>

<div class="form-group">
    <label>Phone Number</label>
    <input type="text" class="form-control" value="<%=st.getPhon()%>" name="phon" maxlength="10" pattern="[6-9]{1}[0-9]{9}" required>
</div>
<br/>
<div class="form-group">
    <input class="btn btn-info btn-block1" type="submit" name="submit" value="Save">
</div>
</form>
</div></div></div>

<%@ include file="footer1.jsp" %>