package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.signup;
import com.model.loginModel;
import com.model.signupModel;

@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
			signup s=new signup();
			String uname=request.getParameter("uid");
			s.setUname(request.getParameter("uid"));
			s.setPass(request.getParameter("pass"));
			System.out.println(uname);
			signupModel sm=new signupModel();
			boolean flag=sm.checkLogin(s);
			if(flag==true)
			{
				
				HttpSession session=request.getSession(true);
				String uid=(request.getParameter("uid"));
				loginModel s1=new loginModel();
				signup st=s1.searchUser(uid);
				session.setAttribute("user",st);
				
				session.setAttribute("abc",uname);
				Cookie ck=new Cookie("abc", uname);
				ck.setMaxAge(60*60);
				response.sendRedirect("index1.jsp");
			}
			else
			{
				out.println("User Name Or Password is Incorrect");
				request.getRequestDispatcher("index.jsp").include(request, response);
			}
		}
}
