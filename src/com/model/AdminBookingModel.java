package com.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.bean.AdminBookingBean;
import com.dbConnection.dbConnection;

public class AdminBookingModel {

	public List<AdminBookingBean> getData(){
		List<AdminBookingBean> list=new ArrayList<AdminBookingBean>();
		try
		{
			//System.out.println("m in to search a service");
			dbConnection db=new dbConnection();
			Connection conn=db.getConnection();
			String sql="select * from booking";
			PreparedStatement pst=conn.prepareStatement(sql);
			ResultSet rs=pst.executeQuery();
			while(rs.next())
			{
				AdminBookingBean se=new AdminBookingBean();
				se.setSer(rs.getString("ser"));
				se.setReq(rs.getString("req"));
				se.setDate1(rs.getString("date1"));
				se.setTime1(rs.getString("time1"));
				se.setName1(rs.getString("name1"));
				se.setEmail(rs.getString("email"));
				se.setAdd1(rs.getString("add1"));
				se.setPhon(rs.getString("phon"));
				se.setSp_name(rs.getString("sp_name"));
				list.add(se);
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return list;
	}	
}
