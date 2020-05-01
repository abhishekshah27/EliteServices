package com.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.bean.AdminMsgBean;
import com.dbConnection.dbConnection;

public class AdminMsgModel {

	public List<AdminMsgBean> getData(){
		List<AdminMsgBean> list=new ArrayList<AdminMsgBean>();
		try
		{
			dbConnection db=new dbConnection();
			Connection conn=db.getConnection();
			String sql="select * from contact";
			PreparedStatement pst=conn.prepareStatement(sql);
			ResultSet rs=pst.executeQuery();
			while(rs.next())
			{
				AdminMsgBean se=new AdminMsgBean();
				se.setId(rs.getString("id"));
				se.setName(rs.getString("name"));
				se.setPhone(rs.getString("phone"));
				se.setEmail(rs.getString("email"));
				se.setMessage(rs.getString("message"));
				list.add(se);
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return list;
	}
	
	public AdminMsgBean fetchDetail(int id) {
		// TODO Auto-generated method stub
		AdminMsgBean bb=new AdminMsgBean();
		try{
			dbConnection db=new dbConnection();
			Connection conn=db.getConnection();
			String sql="select * from contact where id=?";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(1, id);
			ResultSet rs=pst.executeQuery();
			while(rs.next())
			{
				bb.setId(rs.getString("id"));
				bb.setName(rs.getString("name"));
				bb.setEmail(rs.getString("email"));
				bb.setPhone(rs.getString("phone"));
				bb.setMessage(rs.getString("message"));
			}
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return bb;

	}

}
