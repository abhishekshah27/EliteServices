package com.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.bean.SPregistration;
import com.dbConnection.dbConnection;

public class SPregistrationModel {
	
	public void addserviceprovider(SPregistration sp)
	{
		try{
			dbConnection db=new dbConnection();
			Connection conn=db.getConnection();
			String sql="insert into serviceprovider(id,pass,email,phon,se_name)values(?,?,?,?,?)";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1, sp.getId());
			pst.setString(2, sp.getPass());
			pst.setString(3, sp.getEmail());
			pst.setString(4, sp.getPhon());
			pst.setString(5, sp.getSe_name());
			
			int i=pst.executeUpdate();
			if(i>0)
			{
				System.out.println("Data Entered successfully");
			}else
			{
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
	       rs = st.executeQuery("select * from serviceprovider where email='"+val+"'");
			
	       if(rs.first())
	       {
	    	 result="Not Available";  
	       }
	       else {
			   result = "Available";
	     	}
			return result;
		}
	


}
