package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.EventSpModel;


@WebServlet("/delEventSp")
public class delEventSp extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		int id=Integer.parseInt(request.getParameter("id"));
		String name=request.getParameter("name");
		System.out.println(id);
		
		EventSpModel s=new EventSpModel();
		s.deleteSP(id,name);
		response.sendRedirect("admin/eventSP.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
