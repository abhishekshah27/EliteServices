package com.model;

import java.sql.Connection;
import java.sql.PreparedStatement;


import com.bean.FeedbackBean;
import com.dbConnection.dbConnection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class FeedbackModel {
	
	public void addfeedback(FeedbackBean bb) {
		// TODO Auto-generated method stub
		try{
			dbConnection db=new dbConnection();
			Connection conn=db.getConnection();
			String sql="insert into feedback(name,email,feedbackmsg,sp_name) values(?,?,?,?)";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1, bb.getName());
			pst.setString(2, bb.getEmail());
			pst.setString(3, bb.getFeedbackmsg());
			pst.setString(4, bb.getSp_name());
			
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
	
	public List<FeedbackBean> getAllFeedback() {
		List<FeedbackBean> list=new ArrayList<FeedbackBean>();
		try
		{
			dbConnection db=new dbConnection();
			Connection conn=db.getConnection();
			String sql="select * from feedback";
			PreparedStatement pst=conn.prepareStatement(sql);
			ResultSet rs=pst.executeQuery();
			while(rs.next())
			{
				FeedbackBean f=new FeedbackBean();
				f.setName(rs.getString("name"));
				f.setEmail(rs.getString("email"));
				f.setFeedbackmsg(rs.getString("feedbackmsg"));
				f.setSp_name(rs.getString("sp_name"));
				list.add(f);
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return list;
	}
	public void updatefeedback(FeedbackBean bb) {
		// TODO Auto-generated method stub
		String feedback="1";
		try{
			dbConnection db=new dbConnection();
			Connection conn=db.getConnection();
			String sql="update booking set feedback='"+feedback+"' where name1='"+bb.getName()+"' and sp_name='"+bb.getSp_name()+"'";
			PreparedStatement pst=conn.prepareStatement(sql);
			
			
			int i=pst.executeUpdate();
			if(i>0)
			{
				System.out.println("Data Updated successfully");
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
