package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.FeedbackBean;
import com.model.FeedbackModel;

@WebServlet("/feedback")
public class feedback extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		FeedbackBean bb=new FeedbackBean();
		bb.setName(request.getParameter("name"));
		bb.setEmail(request.getParameter("email"));
		bb.setFeedbackmsg(request.getParameter("feedb"));
		bb.setSp_name(request.getParameter("sp_name"));
				
	 
		FeedbackModel sm=new FeedbackModel();				
		sm.addfeedback(bb);
		sm.updatefeedback(bb);
											
		response.sendRedirect("cancelBooking.jsp");

	}

}
