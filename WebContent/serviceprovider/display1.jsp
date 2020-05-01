<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.List"%>

<%@page import="com.bean.RegBean"%>
<%@page import="com.model.RegModel"%>
<!doctype html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Elite Services-Service Provider Panel</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/png" href="assets/images/icon/favicon.ico">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/themify-icons.css">
    <link rel="stylesheet" href="assets/css/metisMenu.css">
    <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="assets/css/slicknav.min.css">
    <!-- amchart css -->
    <link rel="stylesheet" href="https://www.amcharts.com/lib/3/plugins/export/export.css" type="text/css" media="all" />
    <!-- Start datatable css -->
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.18/css/dataTables.bootstrap4.min.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/responsive/2.2.3/css/responsive.bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/responsive/2.2.3/css/responsive.jqueryui.min.css">
    <!-- style css -->
    <link rel="stylesheet" href="assets/css/typography.css">
    <link rel="stylesheet" href="assets/css/default-css.css">
    <link rel="stylesheet" href="assets/css/styles.css">
    <link rel="stylesheet" href="assets/css/responsive.css">
    <link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
    <!-- modernizr css -->
    <script src="assets/js/vendor/modernizr-2.8.3.min.js"></script>
   	<SCRIPT type="text/javascript">
	window.history.forward();
	function noBack() { window.history.forward(); }
	</SCRIPT>
    
    
</head>


<body onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload="">
    
    <!-- preloader area start -->
    <div id="preloader">
        <div class="loader"></div>
    </div>
    <!-- preloader area end -->
    <!-- page container area start -->
    <div class="page-container">
        <!-- sidebar menu area start -->
        	        <div class="sidebar-menu">
            <div class="sidebar-header">
                <div class="logo">
                    <a href="index.jsp"><img src="assets/images/icon/ab.jpg" alt="logo"></a>
                </div>
            </div>
            <div class="main-menu">
                <div class="menu-inner">
                    <nav>
                        <ul class="metismenu" class=active id="menu">
                           
                            <li class=active><a href="display.jsp"><i class="ti-receipt"></i>&nbsp;&nbsp;Service Requests</a></li>
                            <li><a href="feedback.jsp"><i class="ti-comment"></i>&nbsp;&nbsp;Feedbacks</a></li>
                                                  
                        </ul>
                           
                    </nav>
                </div>
            </div>
        </div>

        <!-- sidebar menu area end -->
        <!-- main content area start -->
            <div class="main-content">
                <!-- header area start -->
              		 <%@ include file="header.jsp" %>
                <!-- header area end -->

                <div class="main-content-inner">
                <center><u> <h1>#Your Service Requests#</h1></u></center>
                <div class="row">
                 	
                    <!-- Primary table start -->
                    <div class="col-12 mt-5">
                        <div class="card">
                            <div class="card-body">
                               
                                <div class="data-tables datatable-primary">
                                    <table id="dataTable2" class="text-center">
                                        <thead class="text-capitalize">
                                            <tr>
                                   
                                                <th>Full Name</th>
                                                <th>Email ID</th>
                                                <th>Address</th>
                                                <th>Phone</th>
                                                <th>Date</th>
                                                <th>Time</th>
                                                <th>Service Status</th>
                                            </tr>
                                        </thead>
                                        
                                        
                                        <%
											try
											{
												Class.forName("com.mysql.jdbc.Driver");
												Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/eliteservices","root","1234");
												String sql="select * from booking where sp_name=?";
												PreparedStatement pst=conn.prepareStatement(sql);
												pst.setString(1, uname);
												ResultSet rs=pst.executeQuery();
												while(rs.next())
												{
												%>
													<tr>
										
														<td><%=rs.getString("name1") %></td>
														<td><%=rs.getString("email") %></td>
														<td><%=rs.getString("add1") %></td>
														<td><%=rs.getString("phon") %></td>
														<td><%=rs.getString("date1") %></td>
														<td><%=rs.getString("time1") %></td>
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
																	<!-- <b>New Request </b><br><br> -->
																	<form name="cancel" method="post" action="../SPdelBooking">
																		<input type="hidden" name="id" value="<%=rs.getInt("id")%>">
																		<input type="submit"  name="action" value="Cancel" class="btn btn-danger">
																	</form>
																<%
																}
																	else
																{
																	%>
																<span style="color:green"><b>	Completed </b></span>
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
                    </div>
                    <!-- Primary table end -->
                    
                </div>
            </div>
                    <!-- row area start-->
            </div>
    </div>
        <!-- main content area end -->
        <!-- footer area start-->
        	<%@ include file="footer.jsp" %>
        <!-- footer area end-->
    </div>
    <!-- page container area end -->

    <!-- jquery latest version -->
    <script src="assets/js/vendor/jquery-2.2.4.min.js"></script>
    <!-- bootstrap 4 js -->
    <script src="assets/js/popper.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/owl.carousel.min.js"></script>
    <script src="assets/js/metisMenu.min.js"></script>
    <script src="assets/js/jquery.slimscroll.min.js"></script>
    <script src="assets/js/jquery.slicknav.min.js"></script>

  	 <!-- Start datatable js -->
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.js"></script>
    <script src="https://cdn.datatables.net/1.10.18/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.18/js/dataTables.bootstrap4.min.js"></script>
    <script src="https://cdn.datatables.net/responsive/2.2.3/js/dataTables.responsive.min.js"></script>
    <script src="https://cdn.datatables.net/responsive/2.2.3/js/responsive.bootstrap.min.js"></script>
    <!-- others plugins -->
    <script src="assets/js/plugins.js"></script>
    <script src="assets/js/scripts.js"></script>
</body>

</html>

