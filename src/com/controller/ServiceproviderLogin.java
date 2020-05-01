package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.serviceproviderBean;
import com.model.serviceproviderModel;

@WebServlet("/ServiceproviderLogin")
public class ServiceproviderLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		
			serviceproviderBean s=new serviceproviderBean();
			String uname=request.getParameter("id");
			s.setId(request.getParameter("id"));
			s.setPass(request.getParameter("pass"));
			
			serviceproviderModel sm=new serviceproviderModel();
			boolean flag=sm.checkLogin(s);
			if(flag==true)
			{
				HttpSession session=request.getSession(true);
				session.setAttribute("abcd",uname);
				Cookie ck=new Cookie("abcd", uname);
				ck.setMaxAge(60*60);
				response.sendRedirect("serviceprovider/welcome.jsp");
				
			}
			else
			{
				response.sendRedirect("serviceprovider/invalid.jsp");
			}
		}

	}









