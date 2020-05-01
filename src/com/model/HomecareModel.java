package com.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.bean.HomecareBean;
import com.bean.AutoInsBean;
import com.dbConnection.dbConnection;

public class HomecareModel {

	public List<HomecareBean> getData(){
		List<HomecareBean> list=new ArrayList<HomecareBean>();
		try
		{
			//System.out.println("m in to search a service");
			dbConnection db=new dbConnection();
			Connection conn=db.getConnection();
			String sql="select services.se_sub_id,services.se_sub_name,homecare_master.se_name from services join homecare_master where services.se_id=homecare_master.se_id";
			PreparedStatement pst=conn.prepareStatement(sql);
			ResultSet rs=pst.executeQuery();
			while(rs.next())
			{
				HomecareBean se=new HomecareBean();
				se.setId(rs.getString("se_sub_id"));
				se.setSe_name(rs.getString("se_name"));
				se.setSe_sub_name(rs.getString("se_sub_name"));
				list.add(se);
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return list;
	}

	public void deleteApp(int id) {
		// TODO Auto-generated method stub
		try
		{
			dbConnection db=new dbConnection();
			Connection conn=db.getConnection();
			
			String sql="delete from services where se_sub_id='"+id+"'";
			Statement stmt=conn.createStatement();
			stmt.executeUpdate(sql);
			System.out.println("Deleted");
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}

	public void updateApp(AutoInsBean sp) {
		// TODO Auto-generated method stub
		try
		{
			dbConnection db=new dbConnection();
			Connection conn=db.getConnection();
			
			String sql="update services set se_sub_name=? where se_sub_id=?";
			
			PreparedStatement pst=conn.prepareStatement(sql);
			
			pst.setString(1, sp.getName());
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

}
