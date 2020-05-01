package com.model;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.bean.contact;
import com.dbConnection.dbConnection;

public class contactModel {
	
	public void contactuser(contact sp)
	{
		try{
			dbConnection db=new dbConnection();
			Connection conn=db.getConnection();
			String sql="insert into contact(name,phone,email,message)values(?,?,?,?)";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1, sp.getName());
			pst.setString(2, sp.getPhone());
			pst.setString(3, sp.getEmail());
			pst.setString(4, sp.getMessage());
			
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
}


