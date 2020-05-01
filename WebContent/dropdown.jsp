<%@ page import="java.sql.*" %>
<%ResultSet resultset =null;%>

<HTML>
<HEAD>
    <TITLE>Select element drop down box</TITLE>
</HEAD>

<BODY BGCOLOR="yellow">

<%
    try{
    	Class.forName("com.mysql.jdbc.Driver");
	    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/eliteservices","root","1234");

       Statement statement = conn.createStatement() ;

       resultset =statement.executeQuery("select * from allservices") ;
%>

<center>
    <h1> Drop down box or select element</h1>
        <select>
        <%  while(resultset.next()){ %>
            <option><%= resultset.getString(2)%></option>
        <% } %>
        </select>
</center>

<%
        }
        catch(Exception e)
        {
        	e.printStackTrace();
        }
%>

</BODY>
</HTML>