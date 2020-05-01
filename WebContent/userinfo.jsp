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
</div>
</header>


<%!signup st=new signup(); %>
<%
	st=(signup)session.getAttribute("user");
%>

<div class="w3-main">

<div class="container">
<br/>
<h1 style="text-align:center">
   <u>Profile Information</u>
</h1>

<div class="agile-info">


<form method="post">
<table class="table table-hover">


<tr>
<td>User Name :-</td>
<td><%=st.getUname() %></td>
</tr>

<tr>
<td>Email ID :-</td>
<td><%=st.getEmail()%></td>
</tr>

<tr>
<td>Password :-</td>
<td><%=st.getPass()%></td>
</tr>

<tr>
<td>Address :-</td>
<td><%=st.getAdd()%></td>
</tr>   
 
    
<tr>
<td>Phone Number :-</td>
<td><%=st.getPhon()%></td>
</tr>

</table>
</form>


</div>

</div>
</div>


<%@ include file="footer1.jsp" %>