package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.healthInsBean;
import com.model.healthInsModel;

@WebServlet("/healthInst")
public class healthInst extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		healthInsBean sp=new healthInsBean();
		
		String name1=request.getParameter("se_name");
		healthInsModel q=new healthInsModel();
		Integer id=q.getID(name1);
		sp.setSe_sub_name(request.getParameter("se_sub_name"));
		sp.setId(id.toString());
		//System.out.println(id.toString());
		healthInsModel sm=new healthInsModel();
		sm.addService(sp);
		
		response.sendRedirect("admin/health.jsp");
	}

}
