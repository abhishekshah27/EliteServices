<%@page import="com.bean.RegBean"%>
<%@page import="java.util.List"%>
<%@page import="com.model.RegModel"%>

<!doctype html>
<html class="no-js" lang="en">

<head>
<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Elite Services-Admin Panel</title>
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
        	<%-- <%@ include file="sidebar.jsp" %> --%>
        <div class="sidebar-menu">
            <div class="sidebar-header">
                <div class="logo">
                    <a href="index.jsp"><img src="assets/images/icon/ab.jpg" alt="logo"></a>
                </div>
            </div>
            <div class="main-menu">
                <div class="menu-inner">
                    <nav>
                        <ul class="metismenu" id="menu">
                           
                            <li class=active><a href="display.jsp"><i class="fa fa-list"></i>&nbsp;&nbsp;All Users</a></li>
                            <li><a href="displaySP.jsp"><i class="fa fa-list"></i>&nbsp;&nbsp;All Service Providers</a></li>
                           
                          
                             <li>
                                <a href="javascript:void(0)" aria-expanded="true"><i class="fa fa-plus"></i>
                                    <span>Add Services</span></a>
                                <ul class="collapse">
                                    <li><a href="homecareIns.jsp"><i class="fa fa-home"></i>&nbsp;&nbsp;Home Care & design</a></li>
                                    <li><a href="repairIns.jsp"><i class="fa fa-laptop"></i>&nbsp;Repairs & Maintenance</a></li>
                                    <li><a href="eventIns.jsp"><i class="fa fa-heart"></i>&nbsp;&nbsp;Wedding & Events</a></li>
                                    <li><a href="healthIns.jsp"><i class="fa fa-user-md"></i>&nbsp;&nbsp;Health & Fitness</a></li>
                                    <li><a href="beautyIns.jsp"><i class="fa fa-female"></i>&nbsp;&nbsp;Beauty & Spa</a></li>
                                    <li><a href="businessIns.jsp"><i class="fa fa-legal"></i>&nbsp;&nbsp;Business Services</a></li>
                                </ul>
                            </li>
                            
                              <li>
                                <a href="javascript:void(0)" aria-expanded="true"><i class="fa fa-suitcase"></i>
                                    <span>Manage Services</span></a>
                                <ul class="collapse">
                                    <li><a href="homecare.jsp"><i class="fa fa-home"></i>&nbsp;&nbsp;Home Care & design</a></li>
                                    <li><a href="repair.jsp"><i class="fa fa-laptop"></i>&nbsp;Repairs & Maintenance</a></li>
                                    <li><a href="events.jsp"><i class="fa fa-heart"></i>&nbsp;&nbsp;Wedding & Events</a></li>
                                    <li><a href="health.jsp"><i class="fa fa-user-md"></i>&nbsp;&nbsp;Health & Fitness</a></li>
                                    <li><a href="beauty.jsp"><i class="fa fa-female"></i>&nbsp;&nbsp;Beauty & Spa</a></li>
                                    <li><a href="business.jsp"><i class="fa fa-legal"></i>&nbsp;&nbsp;Business Services</a></li>
                                </ul>
                            </li>
                            
                            
                              <li>
                                <a href="javascript:void(0)" aria-expanded="true"><i class="fa fa-users"></i>
                                    <span>Manage Service Providers</span></a>
                                <ul class="collapse">
                                    <li><a href="homecareSP.jsp"><i class="fa fa-home"></i>&nbsp;&nbsp;Home Care & design</a></li>
                                    <li><a href="repairSP.jsp"><i class="fa fa-laptop"></i>&nbsp;Repairs & Maintenance</a></li>
                                    <li><a href="eventSP.jsp"><i class="fa fa-heart"></i>&nbsp;&nbsp;Wedding & Events</a></li>
                                    <li><a href="healthSP.jsp"><i class="fa fa-user-md"></i>&nbsp;&nbsp;Health & Fitness</a></li>
                                    <li><a href="beautySP.jsp"><i class="fa fa-female"></i>&nbsp;&nbsp;Beauty & Spa</a></li>
                                    <li><a href="businessSP.jsp"><i class="fa fa-legal"></i>&nbsp;&nbsp;Business Services</a></li>
                                </ul>
                            </li>
                            
                            
                             <li><a href="bookDetail.jsp"><i class="ti-receipt"></i> <span>Booked Services</span></a></li>
           
                             
                             <li>
                                <a href="msg.jsp" aria-expanded="true"><i class="ti-comment"></i><span>Messages</span></a>
              
                            </li>
                          
                                                           
                                </ul>
                            </li>
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
                <center><u> <h1>#User Registrations#</h1></u></center>
                <div class="row">
                 	<%
				   		RegModel dao=new RegModel();
				   		List<RegBean> list=dao.getData();
  					 %>
                    <!-- Primary table start -->
                    <div class="col-12 mt-5">
                        <div class="card">
                            <div class="card-body">
                               
                                <div class="data-tables datatable-primary">
                                    <table id="dataTable2" class="text-center">
                                        <thead class="text-capitalize">
                                            <tr>
                                                <th>User Name</th>
                                                <th>Email ID</th>
                                                <th>Address</th>
                                                <th>Phone</th>
                                                <th>City</th>
                                            </tr>
                                        </thead>
                                        <%
											for(RegBean obj:list)
											{
										%>
                                       
                                        
                                            <tr>
                                              	<td><%=obj.getUname() %></td>
												<td><%=obj.getEmail() %></td>
												<td><%=obj.getAdd() %></td>
												<td><%=obj.getPhon() %></td>
												<td><%=obj.getCity() %></td>
                                            </tr>   
      									 <%} %>                                                  
                               			
                               			
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
