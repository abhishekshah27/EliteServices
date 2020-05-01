package com.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.bean.RegBean;
import com.dbConnection.dbConnection;

public class RegModel {
	
	public List<RegBean> getData(){
		List<RegBean> list=new ArrayList<RegBean>();
		try
		{
			//System.out.println("m in to search a service");
			dbConnection db=new dbConnection();
			Connection conn=db.getConnection();
			String sql="select * from signup";
			PreparedStatement pst=conn.prepareStatement(sql);
			ResultSet rs=pst.executeQuery();
			while(rs.next())
			{
				RegBean se=new RegBean();
				se.setUname(rs.getString("uname"));
				se.setEmail(rs.getString("email"));
				se.setAdd(rs.getString("address"));
				se.setPhon(rs.getString("phon"));
				se.setCity(rs.getString("city"));
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
