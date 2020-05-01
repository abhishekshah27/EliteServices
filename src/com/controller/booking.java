package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.bean.BookingBean;
import com.bean.serviceproviderBean;
import com.model.BookingModel;
import com.model.serviceproviderModel;
import com.service.Services;


@WebServlet("/booking")
public class booking extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int id=Integer.parseInt(request.getParameter("id"));
		System.out.println("Id : "+id);
		
		BookingBean bb=new BookingBean();
		bb.setSer(request.getParameter("seName"));
		String service=request.getParameter("seName");
		bb.setReq(request.getParameter("req"));
		bb.setDate(request.getParameter("dat"));
		String date=request.getParameter("dat");
		bb.setTime(request.getParameter("tim"));
		String time=request.getParameter("tim");
		bb.setUname(request.getParameter("uname"));
		String uname=request.getParameter("uname");
		bb.setEmail(request.getParameter("mail"));
		String email=request.getParameter("mail");   // user mail
		bb.setAdd(request.getParameter("add"));
		String add=request.getParameter("add");
		bb.setPhon(request.getParameter("phon"));
		String phon=request.getParameter("phon");
		System.out.println("user :"+email);
		
	 // old
		
		serviceproviderModel dao1=new serviceproviderModel();        
		serviceproviderBean bean=dao1.fetchDetail(id);
		
	
		String emailId=bean.getEmail();	
		String pname=bean.getId();
		System.out.println("service provider :" +emailId);
		
		bb.setSp_name(pname);           // new added
		
		
		BookingModel sm=new BookingModel();					//new
		sm.addDetail(bb);
		Services s=new Services();  // user mail
		

		s.sendMail(email,emailId,pname,uname,service,date,time,add,phon);										
		response.sendRedirect("order.jsp");
	}
}
