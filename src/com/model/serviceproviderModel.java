package com.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.bean.serviceproviderBean;

import com.dbConnection.dbConnection;

public class serviceproviderModel {

	public boolean checkLogin(serviceproviderBean s) {
		boolean flag=false;
		try
		{
			dbConnection db=new dbConnection();
			Connection conn=db.getConnection();
			String sql="select * from serviceprovider where id=? and pass=?";
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
	
	
	public serviceproviderBean fetchDetail(int id) {

		serviceproviderBean bb=new serviceproviderBean();
		try{
			dbConnection db=new dbConnection();
			Connection conn=db.getConnection();
			String sql="select * from serviceprovider where se_id=?";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(1, id);
			ResultSet rs=pst.executeQuery();
			while(rs.next())
			{
				bb.setId(rs.getString("id"));
				bb.setPass(rs.getString("pass"));
				bb.setEmail(rs.getString("email"));
				bb.setPhon(rs.getString("phon"));
				bb.setSe_name(rs.getString("se_name"));
				bb.setSe_id(rs.getString("se_id"));
			}
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return bb;

	}
	
	public void updateSP(serviceproviderBean sp) {
		
		try
		{
			dbConnection db=new dbConnection();
			Connection conn=db.getConnection();
			
			String sql="update serviceprovider set id=?, pass=?, email=?, phon=?, se_name=? where id=?";
			
			PreparedStatement pst=conn.prepareStatement(sql);
			
			pst.setString(1, sp.getId());
			pst.setString(2, sp.getPass());
			pst.setString(3, sp.getEmail());
			pst.setString(4, sp.getPhon());
			pst.setString(5, sp.getSe_name());
			pst.setString(6, sp.getId());
			
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