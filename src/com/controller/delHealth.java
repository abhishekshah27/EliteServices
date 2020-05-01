package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.HealthModel;

@WebServlet("/delHealth")
public class delHealth extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int id=Integer.parseInt(request.getParameter("id"));
		System.out.println(id);
		
		HealthModel s=new HealthModel();
		s.deleteApp(id);
		response.sendRedirect("admin/health.jsp");
	}


}
