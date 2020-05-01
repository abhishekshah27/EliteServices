<%@page import="com.bean.businessSpBean"%>
<%@page import="com.model.BusinessSpModel"%>
<%@page import="java.util.List"%>

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
</head>

<body>
    
    <!-- preloader area start -->
    <div id="preloader">
        <div class="loader"></div>
    </div>
    <!-- preloader area end -->
    <!-- page container area start -->
    <div class="page-container">
        <!-- sidebar menu area start -->
        	<%@ include file="sidebar.jsp" %>
        <!-- sidebar menu area end -->
        <!-- main content area start -->
            <div class="main-content">
                <!-- header area start -->
              		 <%@ include file="header.jsp" %>
                <!-- header area end -->

                <div class="main-content-inner">
                <center><u> <h1>#Edit ID#</h1></u></center>
                <div class="row">
                 	
                    <!-- Primary table start -->
                    <div class="col-12 mt-5">
                        <div class="card">
                            <div class="card-body">
                              <%
								String id=(String)request.getParameter("id");
								String name=(String)request.getParameter("name");
								System.out.println(id);
							  %>
                               
                                <div class="data-tables datatable-primary">
                                <form method="post" name="app" action="../businessSpactivate">
                                    <div class="form-group">
									    <label for="exampleInputName2">Id</label>
									    <input type="text" name="id" class="form-control" placeholder="id" value="<%=id%>" required> 
									</div>
									
									<div class="form-group">
									    <label for="exampleInputName2">Name</label>
									    <input type="text" name="name" class="form-control" placeholder="Service Name" value="<%=name%>"  readonly>  
									</div>

										
										<div class="form-group">
											<input type="submit" name="submit"  value="Edit Service" class="btn btn-primary">
										</div>

                                    </form>
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