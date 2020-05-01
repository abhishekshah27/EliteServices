package com.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.bean.ForgotPasswordBean;

import com.dbConnection.dbConnection;

public class FogotPasswordModel {
	
	public ForgotPasswordBean fetchDetail(String email) {
		// TODO Auto-generated method stub
		ForgotPasswordBean bb=new ForgotPasswordBean();
		try{
			dbConnection db=new dbConnection();
			Connection conn=db.getConnection();
			String sql="select * from signup where email=?";
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
	
	
	public boolean checkEmail(ForgotPasswordBean s) {
		boolean flag=false;
		
		try
		{
			dbConnection db=new dbConnection();
			Connection conn=db.getConnection();
			
			String sql="select * from signup where email=? ";
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
