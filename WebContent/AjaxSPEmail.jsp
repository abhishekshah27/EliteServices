<%@ page import="java.sql.*" %>  
    <%  
    String val=request.getParameter("val");  
  
    try
    	{  
    		String result ="";
    		Class.forName("com.mysql.jdbc.Driver");
    		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/eliteservices","root","1234");  
    		PreparedStatement ps=con.prepareStatement("select * from serviceprovider where email=?");  
    		ps.setString(1, val);
    		ResultSet rs=ps.executeQuery();  
    		
    		
    		 if(rs.first())
	  	     {
	  	    	 result="Not Available";  
	  	     }
  	       	else {
  			   result = "Available";
  	     	}
    		
    				
 			if(result.equalsIgnoreCase("Available"))
 			{
// 				out.print("Available");	
 				
 			}
 			else {
 				out.print("Not Available");   
 			}
    		
  	
      		
    		con.close();  
    	}
    	catch(Exception e)
    	{
    		e.printStackTrace();	
    	}    
    %>  