package com.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.bean.healthSpBean;
import com.dbConnection.dbConnection;

public class HealthSpModel {
	
	
	public List<healthSpBean> getData(){
		List<healthSpBean> list=new ArrayList<healthSpBean>();
		try
		{
			//System.out.println("m in to search a service");
			dbConnection db=new dbConnection();
			Connection conn=db.getConnection();
			String sql="select serviceprovider.se_id,serviceprovider.id,serviceprovider.email,serviceprovider.phon,health_master.se_name from serviceprovider join health_master where serviceprovider.se_name=health_master.se_name";
			PreparedStatement pst=conn.prepareStatement(sql);
			ResultSet rs=pst.executeQuery();
			while(rs.next())
			{
				healthSpBean se=new healthSpBean();
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

	
	
	public void activateSP(healthSpBean sp) {
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
	
	
	public healthSpBean fetchDetail(String name) {
		// TODO Auto-generated method stub
		healthSpBean bb=new healthSpBean();
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
