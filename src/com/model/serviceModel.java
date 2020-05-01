package com.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.bean.serviceBean;
import com.dbConnection.dbConnection;

public class serviceModel {
	
	public List<serviceBean> getServices(int id){
		List<serviceBean> list=new ArrayList<serviceBean>();
		try
		{
			//System.out.println("m in to search a service");
			dbConnection db=new dbConnection();
			Connection conn=db.getConnection();
			String sql="select se_sub_name,se_sub_id from services where se_id=?";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(1, id);
			ResultSet rs=pst.executeQuery();
			//System.out.println("Executed the Search Query for a service");
			//System.out.println("Geting Records :- "+rs.next());
			while(rs.next())
			{
				//System.out.println("M in while loop to get records..");
				serviceBean se=new serviceBean();
				//System.out.println("Bean Class Object Created..");
				se.setId(rs.getInt("se_sub_id"));
				se.setSe_name(rs.getString("se_sub_name"));
				//System.out.println("Data Set In BEan Class...");
				list.add(se);
				//System.out.println("Object add in list..");
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return list;
	}
}
