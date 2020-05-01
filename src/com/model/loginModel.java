package com.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.bean.signup;
import com.dbConnection.dbConnection;

public class loginModel {

	public signup searchUser(String uid) {
		signup s=new signup();
		try
		{
			dbConnection db=new dbConnection();
			Connection conn=db.getConnection();
			String sql="select * from signup where email=?";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1, uid);
			ResultSet rs=pst.executeQuery();
			while(rs.next())
			{
				s.setUname(rs.getString("uname"));
				s.setEmail(rs.getString("email"));
				s.setPass(rs.getString("pass"));
				s.setAdd(rs.getString("address"));
				s.setPhon(rs.getString("phon"));
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return s;
	
	}

}



