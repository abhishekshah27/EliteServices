<%-- <%@page import="com.bean.serviceBean"%>
<%@page import="java.util.List"%>
<%@page import="com.model.serviceModel"%>
<%@page import="com.bean.signup"%>
<%@page import="com.model.signupModel"%>
<%@page import="java.util.ArrayList"%>
 --%>
 
 <%@ page import="java.sql.*" %>
  
 <!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>


<%@ include file="header1.jsp" %>
<script src="validation/EmailValidation.js"></script>


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
    Register yourself to be a partner :-
</h1>

<div class="agile-info">

<form method="post" name="spform" action="SPregistration">

<div class="form-group">
	<label>Name:</label>
	<input type="text" name="id" maxlength="40" placeholder="First Name" class="form-control" required>
</div>


<div class="form-group">
	<label>Email ID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label><span id="abhishek1" style="color: red;"></span>
	<input type="email" name="email" maxlength="30" placeholder="Email" class="form-control" onblur="sendSPInfo()" required >
</div>

<div class="form-group">
	<label>Password:</label>
	<input type="password" name="pass" maxlength="40" placeholder="Password" class="form-control" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" 
	title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required>
</div>



<div class="form-group">
    <label>Phone :</label>
    <input type="text" name="phon" maxlength="10" pattern="[6-9]{1}[0-9]{9}" placeholder="Phone Number" class="form-control" required>
</div>



<div class="form-group">
	<label>Select service you want to provide from the list!</label><br>
	 <select class="form-control" name="se_name" required>
	 
	 <%
    try{
    	ResultSet resultset =null;
    	Class.forName("com.mysql.jdbc.Driver");
	    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/eliteservices","root","1234");

       Statement statement = conn.createStatement() ;

       resultset =statement.executeQuery("select * from allservices") ;
	
	 
         while(resultset.next()){ %>
            <option><%= resultset.getString(2)%></option>
        <% } %>
        </select>

</div>

<%
        }
        catch(Exception e)
        {
        	e.printStackTrace();
        }
%>
							

<div class="form-group">
    <button class="btn btn-info btn-block1" type="submit"  id="register-submit" name="submit">Register</button>
    <br>
    
</div>

</form>
<a href="serviceprovider/index.jsp" class="btn btn-info btn-block1">Login</a>

</div>
</div>
</div>



<br>
<%@ include file="footer1.jsp" %>

</body>
</html>