package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.eventSpBean;
import com.model.EventSpModel;
import com.service.Services;

@WebServlet("/eventSpactivate")
public class eventSpactivate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		eventSpBean sp=new eventSpBean();
		
		sp.setSe_id(request.getParameter("id"));
		sp.setId(request.getParameter("name"));
		String name=request.getParameter("name");
		EventSpModel sm=new EventSpModel();
		sm.activateSP(sp);
		
		eventSpBean bean=sm.fetchDetail(name);
		String email=bean.getEmail();
		System.out.println("Service provider email: " + email);
		
		Services s=new Services();  // user mail
		s.sendSpActivate(email);	
		
		
		response.sendRedirect("admin/eventSP.jsp");

	}

}
