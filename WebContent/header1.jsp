<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Elite Services </title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
<meta name="keywords" content="Elite Services a Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all">
<link href="css/fontawesome-all.min.css" rel="stylesheet" type="text/css" media="all">
<link href="css/easy-responsive-tabs.css" rel='stylesheet' type='text/css'/>
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="all">
<link rel="stylesheet" type="text/css" href="css/style_common.css" />
<link rel="stylesheet" type="text/css" href="css/style1.css" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
<link href="//fonts.googleapis.com/css?family=Roboto:400,500,700,900" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Open+Sans:400,600,700,800" rel="stylesheet">
<link rel="icon" type="image/png" href="images/header.png"/>
</head>
<body>

<%
	response.setHeader("Cache-Control", "no-cache");
	response.setHeader("Cache-Control", "no-store");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", 0);
%>

<%!String uname; %>

<%
	if(session!=null)
	{
	if(session.getAttribute("abc")!=null)
		{
			uname=session.getAttribute("abc").toString();
%>


<header>
	<!-- header -->
	<!-- <nav class="navbar navbar-expand-lg navbar-light">
  <a class="navbar-brand" href="index.jsp">Elite Services</a> -->
  
  <nav class="navbar navbar-expand-lg navbar-light">
		<a href="index1.jsp"><img src="images/ab.jpg" class="navbar-brand" width="160px" height="80px"></a>
  
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav ml-auto">
    
    
    
    <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle btn btn-primary"  href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="background-color:#0529f3;">
        	<label style="color: white;"><%=uname %></label>
	   		
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown" style="margin-left: 20%;">
          <a class="dropdown-item" href="userinfo.jsp">Your Account</a>
          <a class="dropdown-item" href="editUser.jsp">Edit Account</a>     
          <a class="dropdown-item" href="cancelBooking.jsp">Booked services</a>
          <a class="dropdown-item" href="logout.jsp">Logout</a>
        </div>
      </li>
    
    
    
    
      <li class="nav-item ">
        <a class="btn btn-warning nav-link" href="index1.jsp">Home</a>
      </li>
      
      <li class="nav-item">
        <a class="btn btn-warning nav-link" href="how_it_works1.jsp">How it Works</a>
      </li>
	  
	  <li class="nav-item">
        <a class="btn btn-warning nav-link" href="about_us1.jsp">About Us</a>
      </li>
	    
       <li class="nav-item">
        <a class="btn btn-warning nav-link " href="contact1.jsp">Contact</a>
      </li>
      
       <li class="nav-item">
        <a class="btn btn-warning nav-link" href="SPregistration1.jsp">Become A Partner!</a>
      </li>
     
        
    </ul>
 
</nav>
	<!-- //header -->


<%
	}
	else
	{
		response.sendRedirect("index.jsp");
	}
	}
	else
	{
		response.sendRedirect("index.jsp");
	}
%>

