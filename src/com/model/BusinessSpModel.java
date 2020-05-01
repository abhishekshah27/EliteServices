package com.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.bean.businessSpBean;
import com.dbConnection.dbConnection;

public class BusinessSpModel {
	public List<businessSpBean> getData(){
		List<businessSpBean> list=new ArrayList<businessSpBean>();
		try
		{
			//System.out.println("m in to search a service");
			dbConnection db=new dbConnection();
			Connection conn=db.getConnection();
			String sql="select serviceprovider.se_id,serviceprovider.id,serviceprovider.email,serviceprovider.phon,business_master.se_name from serviceprovider join business_master where serviceprovider.se_name=business_master.se_name";
			PreparedStatement pst=conn.prepareStatement(sql);
			ResultSet rs=pst.executeQuery();
			while(rs.next())
			{
				businessSpBean se=new businessSpBean();
				se.setSe_id(rs.getString("se_id"));
				se.setSe_name(rs.getString("se_name"));
				se.setId(rs.getString("id"));
				se.setEmail(rs.getString("email"));
				se.setPhon(rs.getString("phon"));
				list.add(se);
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return list;
	}

	public void activateSP(businessSpBean sp) {
		// TODO Auto-generated method stub
		try
		{
			dbConnection db=new dbConnection();
			Connection conn=db.getConnection();
			
			String sql="update serviceprovider set se_id=? where id=?";
			
			PreparedStatement pst=conn.prepareStatement(sql);
			
		
			pst.setString(1, sp.getSe_id());
			pst.setString(2, sp.getId());
		
			
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
	public void deleteSP(int id,String name) {
		// TODO Auto-generated method stub
		try
		{
			dbConnection db=new dbConnection();
			Connection conn=db.getConnection();
			
			String sql="delete from serviceprovider where se_id='"+id+"' AND id='"+name+"'";
			Statement stmt=conn.createStatement();
			stmt.executeUpdate(sql);
			System.out.println("Deleted");
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}

	public businessSpBean fetchDetail(String name) {
		// TODO Auto-generated method stub
		businessSpBean bb=new businessSpBean();
		try{
			dbConnection db=new dbConnection();
			Connection conn=db.getConnection();
			String sql="select * from serviceprovider where id=?";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1, name);
			ResultSet rs=pst.executeQuery();
			while(rs.next())
			{
			
				bb.setEmail(rs.getString("email"));
			}
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return bb;

	}



}
