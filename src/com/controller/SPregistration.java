package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.SPregistrationModel;
import com.service.Services;

@WebServlet("/SPregistration")
public class SPregistration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		com.bean.SPregistration sp=new com.bean.SPregistration();
		
		sp.setId(request.getParameter("id"));
		sp.setPass(request.getParameter("pass"));
		sp.setEmail(request.getParameter("email"));
		sp.setPhon(request.getParameter("phon"));
		sp.setSe_name(request.getParameter("se_name"));
		
		SPregistrationModel sm=new SPregistrationModel();
		sm.addserviceprovider(sp);
		String email=request.getParameter("email");
		String name=request.getParameter("id");
		String serv=request.getParameter("se_name");
		
		Services s=new Services();  // SP mail
		s.sendSPreg(email,name,serv);										
		
		
		
	/*	out.println("<script src='validation/sweetalert2.all.js'></script>");
		out.println("<script src='validation/jqueryalert.min.js'></script>");

		out.println("<script>");
		out.println("$(document).ready(function(){");
		out.println("swal ( 'Welcome' , 'Successfully Registered!' , 'success' )");
		out.println("});");
		out.println("</script>");
	
		request.getRequestDispatcher("index1.jsp").include(request, response);
*/		
		response.sendRedirect("index.jsp");
		
	}

}
