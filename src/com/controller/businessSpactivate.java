package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.businessSpBean;
import com.model.BusinessSpModel;
import com.service.Services;

@WebServlet("/businessSpactivate")
public class businessSpactivate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		businessSpBean sp=new businessSpBean();
		
		sp.setSe_id(request.getParameter("id"));
		sp.setId(request.getParameter("name"));
		String name=request.getParameter("name");
		BusinessSpModel sm=new BusinessSpModel();
		sm.activateSP(sp);
		
		businessSpBean bean=sm.fetchDetail(name);
		String email=bean.getEmail();
		System.out.println("Service provider email: " + email);
		
		Services s=new Services();  // user mail
		s.sendSpActivate(email);	
		
		response.sendRedirect("admin/businessSP.jsp");

	}

}
