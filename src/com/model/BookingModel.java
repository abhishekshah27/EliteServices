package com.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.bean.BookingBean;
import com.dbConnection.dbConnection;

public class BookingModel {

	public void addDetail(BookingBean bb) {
		try{
			dbConnection db=new dbConnection();
			Connection conn=db.getConnection();
			String sql="insert into booking(ser,req,date1,time1,name1,email,add1,phon,sp_name) values(?,?,?,?,?,?,?,?,?)";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1, bb.getSer());
			pst.setString(2, bb.getReq());
			pst.setString(3, bb.getDate());
			pst.setString(4, bb.getTime());
			pst.setString(5, bb.getUname());
			pst.setString(6, bb.getEmail());
			pst.setString(7, bb.getAdd());
			pst.setString(8, bb.getPhon());
			pst.setString(9,bb.getSp_name());                     //new added
			
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
	
	public BookingBean fetchDetail() {
		// TODO Auto-generated method stub
		BookingBean bb=new BookingBean();
		try{
			dbConnection db=new dbConnection();
			Connection conn=db.getConnection();
			String sql="select * from booking";
			PreparedStatement pst=conn.prepareStatement(sql);
			ResultSet rs=pst.executeQuery();
			rs.afterLast();
			rs.previous();
			rs.previous();
			while(rs.next())
			{
				bb.setSer(rs.getString("ser"));
				bb.setReq(rs.getString("req"));
				bb.setDate(rs.getString("date1"));
				bb.setTime(rs.getString("time1"));
				bb.setUname(rs.getString("name1"));
				bb.setEmail(rs.getString("email"));
				bb.setAdd(rs.getString("add1"));
				bb.setPhon(rs.getString("phon"));
			}
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return bb;

	}
	
	public void cancelBook(int id) {
		try
		{
			dbConnection db=new dbConnection();
			Connection conn=db.getConnection();
			
			String sql="delete from booking where id='"+id+"'";
			Statement stmt=conn.createStatement();
			stmt.executeUpdate(sql);
			System.out.println("Deleted");
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}

}
