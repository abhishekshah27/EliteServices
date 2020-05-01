package com.dbConnection;

import java.sql.Connection;
import java.sql.DriverManager;

public class dbConnection {

	public Connection getConnection() throws Exception
	{
		Connection conn=null;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
		    conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/eliteservices","root","1234");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return conn;
	}
}
