package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.BusinessSpModel;

@WebServlet("/delBusinessSp")
public class delBusinessSp extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int id=Integer.parseInt(request.getParameter("id"));
		String name=request.getParameter("name");
		System.out.println(id);
		
		BusinessSpModel s=new BusinessSpModel();
		s.deleteSP(id,name);
		response.sendRedirect("admin/businessSP.jsp");
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
