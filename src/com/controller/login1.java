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

@WebServlet("/login1")
public class login1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		
		signup s=new signup();
		String uname=request.getParameter("uid");
		s.setEmail(request.getParameter("uid"));
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

				
				out.println("<script src='validation/sweetalert2.all.js'></script>");
				out.println("<script src='validation/jqueryalert.min.js'></script>");
		
				out.println("<script>");
				out.println("$(document).ready(function(){");
				out.println("swal ( 'Welcome' , 'Successfully Logged in!' , 'success' )");
				out.println("});");
				out.println("</script>");
				
				/*response.sendRedirect("welcome.jsp");*/
				request.getRequestDispatcher("index1.jsp").include(request, response);
				
			}
			else
			{
				
				response.sendRedirect("invalid.jsp");
				
			}
		}
}
