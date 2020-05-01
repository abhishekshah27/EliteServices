package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.beautyInsBean;

import com.model.beautyInsModel;

@WebServlet("/beautyInst")
public class beautyInst extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		beautyInsBean sp=new beautyInsBean();
		
		String name1=request.getParameter("se_name");
		beautyInsModel q=new beautyInsModel();
		Integer id=q.getID(name1);
		sp.setSe_sub_name(request.getParameter("se_sub_name"));
		sp.setId(id.toString());
		//System.out.println(id.toString());
		beautyInsModel sm=new beautyInsModel();
		sm.addService(sp);
		
		response.sendRedirect("admin/beauty.jsp");
		
	}

}
