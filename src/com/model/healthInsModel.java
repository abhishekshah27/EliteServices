package com.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.bean.healthInsBean;
import com.bean.HealthBean;
import com.dbConnection.dbConnection;

public class healthInsModel {

	public List<HealthBean> getData(){
		List<HealthBean> list=new ArrayList<HealthBean>();
		try
		{
			dbConnection db=new dbConnection();
			Connection conn=db.getConnection();
			String sql="select * from health_master";
			PreparedStatement pst=conn.prepareStatement(sql);
			ResultSet rs=pst.executeQuery();
			while(rs.next())
			{
				HealthBean se=new HealthBean();
				se.setSe_name(rs.getString("se_name"));
				se.setId(rs.getString("se_id"));
				list.add(se);
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return list;
	}
	
	public int getID(String se_name)
	{
		int id=0;
		try
		{
			dbConnection db=new dbConnection();
			Connection conn=db.getConnection();
			String sql="select se_id from health_master where se_name=?";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1, se_name);
			ResultSet rs=pst.executeQuery();
			while(rs.next())
			{
					id=rs.getInt("se_id");
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return id;
	
	}

	public void addService(healthInsBean sp) {
		// TODO Auto-generated method stub
		try{
			dbConnection db=new dbConnection();
			Connection conn=db.getConnection();
			String sql="insert into services(se_id,se_sub_name) values(?,?)";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1, sp.getId());
			pst.setString(2, sp.getSe_sub_name());
			
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
