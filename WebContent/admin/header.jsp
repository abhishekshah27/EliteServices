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
	if(session.getAttribute("abcde")!=null)
		{
			uname=session.getAttribute("abcde").toString();
		
%> 
 
 <div class="header-area">
                <div class="row align-items-center">
                    
                    <div class="col-md-6 col-sm-8 clearfix">
                        <div class="nav-btn pull-left">
                            <span></span>
                            <span></span>
                            <span></span>
                        </div>
                        
                        
                    </div>
                    <!-- profile info & task notification -->
                            
                    <div class="col-sm-6 clearfix">
                        <div class="user-profile pull-right">
                             <img class="avatar user-thumb" src="assets/images/author/anonymous.png" alt="avatar">
                                <h4 class="user-name dropdown-toggle" data-toggle="dropdown"><%=uname %> <i class="fa fa-angle-down"></i></h4>
                                <div class="dropdown-menu">
                                    <a class="dropdown-item" href="adminInfo.jsp">Your Account</a>
                                    <a class="dropdown-item" href="logout.jsp">Log Out</a>
                                </div>
                        </div>
                    </div>
                </div>
</div>
    		    		
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
            