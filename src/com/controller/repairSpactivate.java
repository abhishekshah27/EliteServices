package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.repairSpBean;
import com.model.RepairSpModel;
import com.service.Services;

@WebServlet("/repairSpactivate")
public class repairSpactivate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		repairSpBean sp=new repairSpBean();
		
		sp.setSe_id(request.getParameter("id"));
		sp.setId(request.getParameter("name"));
		String name=request.getParameter("name");
		RepairSpModel sm=new RepairSpModel();
		sm.activateSP(sp);
		
		
		repairSpBean bean=sm.fetchDetail(name);
		String email=bean.getEmail();
		System.out.println("Service provider email: " + email);
		
		Services s=new Services();  // user mail
		s.sendSpActivate(email);	
		
		
		response.sendRedirect("admin/repairSP.jsp");

	}

}
