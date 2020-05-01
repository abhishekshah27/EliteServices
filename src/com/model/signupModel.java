package com.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.bean.signup;
import com.dbConnection.dbConnection;

public class signupModel {
	public void adduser(signup sp)
	{
		try{
			dbConnection db=new dbConnection();
			Connection conn=db.getConnection();
				
			String sql="insert into signup(uname,email,pass,address,phon,city)values(?,?,?,?,?,?)";
			PreparedStatement pst=conn.prepareStatement(sql);
			/*pst.setString(1, sp.getFname());*/
			pst.setString(1, sp.getUname());
			pst.setString(2, sp.getEmail());
			pst.setString(3, sp.getPass());
			pst.setString(4, sp.getAdd());
			pst.setString(5, sp.getPhon());
			pst.setString(6, sp.getCity());
			
			int i=pst.executeUpdate();
			if(i>0)
			{
				//out.println("Registered!");
				System.out.println("Data Entered successfully");
			}else
			{
				//out.println("NOT Registered!");
				System.out.println("Fail");
			}
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
	}

	
	
	public static String checkEmail(String val) throws Exception {
		
	       String result = "";
	       ResultSet rs = null;
	       Statement st = null;
	       dbConnection db=new dbConnection();
	       Connection conn = db.getConnection();
	       st = conn.createStatement();
	       rs = st.executeQuery("select * from signup where email='"+val+"'");
			
	       if(rs.first())
	       {
	    	   result="Not Available";  
	       }
	       else {
			   result = "Available";
	     	}
			return result;
		}
	
	
	
	
	
	public boolean checkLogin(signup s) {
		boolean flag=false;
		
		try
		{
			dbConnection db=new dbConnection();
			Connection conn=db.getConnection();
			
			String sql="select * from signup where email=? and pass=?";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1, s.getEmail());
			pst.setString(2, s.getPass());
			ResultSet rs=pst.executeQuery();
			
			if(rs.next())
			{
				flag=true;
			}
			else
			{
				flag=false;
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return flag;
	}

	public void updateuser(signup sp) {
		
		try
		{
			dbConnection db=new dbConnection();
			Connection conn=db.getConnection();
			
			String sql="update signup set uname=?, email=?, pass=?, address=?, phon=? where uname=?";
			
			PreparedStatement pst=conn.prepareStatement(sql);
			
			/*pst.setString(1, sp.getFname());*/
			pst.setString(1, sp.getUname());
			pst.setString(2, sp.getEmail());
			pst.setString(3, sp.getPass());
			pst.setString(4, sp.getAdd());
			pst.setString(5, sp.getPhon());
			pst.setString(6, sp.getUname());
			
			int i=pst.executeUpdate();
			
			if(i>0)
			{
				System.out.println("Success");
			}
			else
			{
				System.out.println("Failed");
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}

}

