package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.beautySpBean;
import com.model.BeautySpModel;
import com.service.Services;

@WebServlet("/beautySpactivate")
public class beautySpactivate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		beautySpBean sp=new beautySpBean();
		
		sp.setSe_id(request.getParameter("id"));
		sp.setId(request.getParameter("name"));
		String name=request.getParameter("name");
		BeautySpModel sm=new BeautySpModel();
		sm.activateSP(sp);
		
		beautySpBean bean=sm.fetchDetail(name);
		String email=bean.getEmail();
		System.out.println("Service provider email: " + email);
		
		Services s=new Services();  // user mail
		s.sendSpActivate(email);	
		
		response.sendRedirect("admin/beautySP.jsp");

	}

}
