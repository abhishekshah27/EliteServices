<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.List"%>

<%@page import="com.bean.serviceBean"%>
<%@page import="com.model.serviceModel"%>
<%@page import="com.bean.signup"%>
<%@page import="com.model.signupModel"%>
<%@page import="com.bean.BookingBean"%>
<%@page import="com.model.BookingModel"%>
<%@page import="com.bean.RegBean"%>
<%@page import="com.model.RegModel"%>



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


<%
   		BookingModel dao=new BookingModel();
   	
%>


<div class="a-main">

<div class="container">
<br/>
<h2><u>Your service booking details:-</u></h2>

<div class="agile-info">

<table class="table table-hover">
<tr>
	<th>Service Name</th>
    <th>Service Date</th>
	<th>Service Time</th>
    <th>Requirements</th>
    <th>Service Provider </th>
    <th>Action</th>
    <th>Feedback</th>

</tr>
<%
	try
	{
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/eliteservices","root","1234");
			String sql="select * from booking where email=?";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1, st.getEmail());
			ResultSet rs=pst.executeQuery();
			while(rs.next())
			{
%>

	<tr>
	<td><%=rs.getString("ser")%></td>
	<td><%=rs.getDate("date1")%></td>
	<td><%=rs.getString("time1")%></td>
	<td><%=rs.getString("req")%></td>
	<td><%=rs.getString("sp_name")%></td>
	<td>
	
		<%
			DateFormat df=new SimpleDateFormat("dd/MM/yy HH:mm:ss");
			Date dt=new Date();
			/* out.println(df.format(dt));
			out.println(df.format(rs.getDate("date1"))); */
			long diff=dt.getTime()-rs.getDate("date1").getTime();
			if(diff<0)
			{
			%>
				<form name="cancel" method="post" action="delBooking">
					<input type="hidden" name="id" value="<%=rs.getInt("id")%>">
					<input type="submit"  name="action" value="Cancel" class="btn btn-can">
				</form>
			<%
			}
			else
			{
			%>
				Completed
			<%
			}
		%>
	</td>
	
	<td>
	
		<%
			DateFormat df1=new SimpleDateFormat("dd/MM/yy HH:mm:ss");
			Date dt1=new Date();
			/* out.println(df.format(dt));
			out.println(df.format(rs.getDate("date1"))); */
			long diff1=dt.getTime()-rs.getDate("date1").getTime();
			if(diff1<0)
			{
			%>
			<%
			}
			else
			{
				if(rs.getString("feedback").equalsIgnoreCase("0"))
				{
			%>
					<a class="btn btn-feed" href="feedback.jsp?sp_name=<%=rs.getString("sp_name")%>">
				
					Give Feedback
					</a>
			<%
				}
				else
				{
			%>
					
					Feedback Sent
					
			<%	
				}
			%>
	
				
			<%
			}
		%>
		
	
	</td>


</tr>
	
<%
			}
	}
	catch(Exception e)
{
		e.printStackTrace();
}
%>

  
</table>



</div>
</div>
</div>


<%@ include file="footer1.jsp" %>
