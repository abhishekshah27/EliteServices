package com.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.bean.SPForgotPasswordBean;

import com.dbConnection.dbConnection;

public class SPFogotPasswordModel {
	
	public SPForgotPasswordBean fetchDetail(String email) {

		SPForgotPasswordBean bb=new SPForgotPasswordBean();
		try{
			dbConnection db=new dbConnection();
			Connection conn=db.getConnection();
			String sql="select * from serviceprovider where email=?";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1, email);
			ResultSet rs=pst.executeQuery();
			while(rs.next())
			{
			
				bb.setPass(rs.getString("pass"));
			}
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return bb;

	}
	
	
	public boolean checkEmail(SPForgotPasswordBean s) {
		boolean flag=false;
		
		try
		{
			dbConnection db=new dbConnection();
			Connection conn=db.getConnection();
			
			String sql="select * from serviceprovider where email=? ";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1, s.getEmail());
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
