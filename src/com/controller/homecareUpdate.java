package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.AutoInsBean;
import com.model.HomecareModel;

@WebServlet("/homecareUpdate")
public class homecareUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		AutoInsBean sp=new AutoInsBean();
		sp.setName(request.getParameter("se_sub_name"));
		sp.setId(request.getParameter("id"));
		sp.setSe_name(request.getParameter("se_name"));
		
		HomecareModel sm=new HomecareModel();
		sm.updateApp(sp);
		response.sendRedirect("admin/homecare.jsp");
	}

}