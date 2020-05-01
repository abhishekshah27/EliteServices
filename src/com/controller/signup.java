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

import com.model.loginModel;
import com.model.signupModel;
import com.service.Services;

@WebServlet("/signup")
public class signup extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
			
		com.bean.signup sp=new com.bean.signup();
		
		sp.setUname(request.getParameter("uid"));
		sp.setEmail(request.getParameter("mail"));
		sp.setPass(request.getParameter("pass"));
		sp.setAdd(request.getParameter("add"));
		sp.setPhon(request.getParameter("phon"));
		sp.setCity(request.getParameter("city"));
		
		signupModel sm=new signupModel();
		sm.adduser(sp);
		
		String email=request.getParameter("mail");
		String name=request.getParameter("uid");
		Services su=new Services();  // user mail
		su.sendUserreg(email,name);				
			
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
			com.bean.signup s=new com.bean.signup();
			String uname=request.getParameter("uid");
			s.setUname(request.getParameter("uid"));
			s.setPass(request.getParameter("pass"));
			
			signupModel sw=new signupModel();
			boolean flag=sw.checkLogin(s);
			if(flag==true)
			{
				HttpSession session=request.getSession(true);
				
				String uid=(request.getParameter("uid"));
				loginModel s1=new loginModel();
				com.bean.signup st=s1.searchUser(uid);
				session.setAttribute("user",st);
				
				session.setAttribute("abc",uname);
				Cookie ck=new Cookie("abc", uname);
				ck.setMaxAge(60*60);
				response.sendRedirect("index.jsp");
				/*response.addCookie(ck);
				request.getRequestDispatcher("index1.jsp").forward(request, response);*/
			}
			else
			{
				request.getRequestDispatcher("index.jsp").include(request, response);
			}
			
		
		}		
	


	}

