    <%@ page import="java.sql.*" %>  
    <%  
    String email=request.getParameter("val");  
    /* if(email==null||email.trim().equals(""))
    {  
    	out.print("<p>Please enter Email!</p>");  
    }
    else
    {  
     */	try
    	{  
    		Class.forName("com.mysql.jdbc.Driver");
    		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/eliteservices","root","1234");  
    		PreparedStatement ps=con.prepareStatement("select * from signup where email=?");  
    		ps.setString(1, email);
    		ResultSet rs=ps.executeQuery();  
      		if(rs.next()) 
      		{      
     			out.println("<p>Email ID is Already Used!");   
    		}
      		else
      		{  
    			out.println("Email ID is available!"); 
    		}  
    		con.close();  
    	}
    	catch(Exception e)
    	{
    		out.print(e);
    	}  
   // }  
    %>  