package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.homecareInsBean;
import com.model.homecareInsModel;


@WebServlet("/homecareInst")
public class homecareInst extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		homecareInsBean sp=new homecareInsBean();
		
		String name1=request.getParameter("se_name");
		
		homecareInsModel q=new homecareInsModel();
		Integer id=q.getID(name1);
		sp.setSe_sub_name(request.getParameter("se_sub_name"));
		sp.setId(id.toString());
		
		
		//System.out.println(id.toString());
		homecareInsModel sm=new homecareInsModel();
		sm.addService(sp);
		
		response.sendRedirect("admin/homecare.jsp");

	}

}
