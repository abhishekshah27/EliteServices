<%@page import="com.bean.BookingBean"%>
<%@page import="com.model.BookingModel"%>
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
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



<%

	BookingModel dao=new BookingModel();
	BookingBean bean=dao.fetchDetail();

%>


<br/>


<div class="w3-main">
	
		
<div class="container">

<div class="cen" style="color:#1D68A7;border-color:#1D68A7;padding:10px;">
  <i class="fa fa-list-ul fa-4x">&nbsp;&nbsp;&nbsp;<u>Order Review</u></i>
</div>

<div class="agile-info">

<form method="post">
<table class="table table-hover">


<tr>
<td>Name :-</td>
<td><%=bean.getUname()%></td>
</tr>


<tr>
<td>Email ID :-</td>
<td><%=bean.getEmail()%></td>
</tr>


<tr>
<td>Address :-</td>
<td><%=bean.getAdd() %></td>
</tr>    

   
<tr>
<td>Phone Number :-</td>
<td><%=bean.getPhon()%></td>
</tr>


<tr>
<td>Service Booked :-</td>
<td><%=bean.getSer() %></td>
</tr>


<tr>
<td>Requirement :-</td>
<td><%=bean.getReq() %></td>
</tr>


<tr>
<td>Date :-</td>
<td><%=bean.getDate() %></td>
</tr>


<tr>
<td>Time :-</td>
<td><%=bean.getTime()%></td>
</tr>



</table>
</form>

<div class="form-group cen">
    <a class="btn btn-success" href="index1.jsp" id="myButton">Continue</a>
    <a class="btn btn-success" href="logout.jsp" id="myButton">Logout</a>
</div>
</div>

</div>
</div>


<%@ include file="footer1.jsp" %>