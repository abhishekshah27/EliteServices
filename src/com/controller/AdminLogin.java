package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.admin;
import com.model.adminModel;

@WebServlet("/AdminLogin")
public class AdminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
	
		
			admin s=new admin();
			String uname=request.getParameter("id");
			s.setId(request.getParameter("id"));
			s.setPass(request.getParameter("pass"));
			
			adminModel sm=new adminModel();
			boolean flag=sm.checkLogin(s);
			if(flag==true)
			{
				HttpSession session=request.getSession(true);
				session.setAttribute("abcde",uname);
				Cookie ck=new Cookie("abcde", uname);
				ck.setMaxAge(60*60);
				response.sendRedirect("admin/welcome.jsp");
				
			}
			else
			{
				response.sendRedirect("admin/invalid.jsp");
				
			}
	}
}
