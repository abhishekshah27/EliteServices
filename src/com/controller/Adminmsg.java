package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.AdminMsgBean;
/*import com.bean.BookingBean;
import com.bean.serviceproviderBean;
import com.model.BookingModel;
*/
import com.model.AdminMsgModel;
import com.service.Services;


@WebServlet("/Adminmsg")
public class Adminmsg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("hello");
		
		int id=Integer.parseInt(request.getParameter("id"));
		System.out.println("Id : "+id);
		
		AdminMsgModel dao1=new AdminMsgModel();        
		AdminMsgBean bean=dao1.fetchDetail(id);
		
	
		String emailId=bean.getEmail();	
	
		System.out.println("user :" +emailId);
		Services s=new Services();

		s.sendResponse(emailId);
		
		response.sendRedirect("admin/msg.jsp");

	}

}
