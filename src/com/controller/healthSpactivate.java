package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*import com.bean.ForgotPasswordBean;*/
import com.bean.healthSpBean;
import com.model.HealthSpModel;
import com.service.Services;

@WebServlet("/healthSpactivate")
public class healthSpactivate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		healthSpBean sp=new healthSpBean();
		
		sp.setSe_id(request.getParameter("id"));
		sp.setId(request.getParameter("name"));
		String name=request.getParameter("name");
		HealthSpModel sm=new HealthSpModel();
		sm.activateSP(sp);
		
		
		healthSpBean bean=sm.fetchDetail(name);
		String email=bean.getEmail();
		System.out.println("Service provider password: " + email);
		
		Services s=new Services();  // user mail
		s.sendSpActivate(email);	
		
		response.sendRedirect("admin/healthSP.jsp");
		
	


	}

}
