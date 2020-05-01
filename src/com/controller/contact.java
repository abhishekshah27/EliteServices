package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.contactModel;

@WebServlet("/contact")
public class contact extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		
		com.bean.contact sp=new com.bean.contact();
		
		sp.setName(request.getParameter("name"));
		sp.setPhone(request.getParameter("phone"));
		sp.setEmail(request.getParameter("email"));
		sp.setMessage(request.getParameter("message"));
		
		contactModel sm=new contactModel();
		sm.contactuser(sp);
		
		out.println("Submitted successfully!");
		
		response.sendRedirect("index1.jsp");

	}

}
