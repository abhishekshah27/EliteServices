package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.homecareSpBean;
import com.model.HomecareSpModel;
import com.service.Services;


@WebServlet("/homecareSpactivate")
public class homecareSpactivate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		homecareSpBean sp=new homecareSpBean();
		
		sp.setSe_id(request.getParameter("id"));
		sp.setId(request.getParameter("name"));
		String name=request.getParameter("name");
		HomecareSpModel sm=new HomecareSpModel();
		sm.activateSP(sp);
		
		
		homecareSpBean bean=sm.fetchDetail(name);
		String email=bean.getEmail();
		System.out.println("Service provider email: " + email);
		
		Services s=new Services();  // user mail
		s.sendSpActivate(email);	
		
		response.sendRedirect("admin/homecareSP.jsp");

	}

}
