package com.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;



import com.bean.serviceproviderBean;
import com.dbConnection.dbConnection;

public class RegSPModel {
	
	public List<serviceproviderBean> getData(){
		List<serviceproviderBean> list=new ArrayList<serviceproviderBean>();
		try
		{
			//System.out.println("m in to search a service");
			dbConnection db=new dbConnection();
			Connection conn=db.getConnection();
			String sql="select * from serviceprovider";
			PreparedStatement pst=conn.prepareStatement(sql);
			ResultSet rs=pst.executeQuery();
			while(rs.next())
			{							
				serviceproviderBean se=new serviceproviderBean();
				se.setId(rs.getString("id"));
				se.setEmail(rs.getString("email"));
				se.setPhon(rs.getString("phon"));
				se.setSe_name(rs.getString("se_name"));
				se.setSe_id(rs.getString("se_id"));
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
