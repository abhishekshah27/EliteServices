package com.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.bean.admin;
import com.dbConnection.dbConnection;

public class adminModel {

	public boolean checkLogin(admin s) {
		boolean flag=false;
		try
		{
			dbConnection db=new dbConnection();
			Connection conn=db.getConnection();
			String sql="select * from admin where id=? and pass=?";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1, s.getId());
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
	
	
}