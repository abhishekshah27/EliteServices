package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.businessInsBean;
import com.model.businessInsModel;

@WebServlet("/businessInst")
public class businessInst extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		businessInsBean sp=new businessInsBean();
		
		String name1=request.getParameter("se_name");
		businessInsModel q=new businessInsModel();
		Integer id=q.getID(name1);
		sp.setSe_sub_name(request.getParameter("se_sub_name"));
		sp.setId(id.toString());
		//System.out.println(id.toString());
		businessInsModel sm=new businessInsModel();
		sm.addService(sp);
		
		response.sendRedirect("admin/business.jsp");
	}

}
