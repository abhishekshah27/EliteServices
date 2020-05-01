package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.signupModel;

@WebServlet("/updateUser")
public class updateUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		
		com.bean.signup sp=new com.bean.signup();
		
		
		sp.setUname(request.getParameter("uid"));
		sp.setEmail(request.getParameter("mail"));
		sp.setPass(request.getParameter("pass"));
		sp.setAdd(request.getParameter("add"));
		sp.setPhon(request.getParameter("phon"));
		sp.setCity(request.getParameter("city"));
		
		signupModel sm=new signupModel();
		sm.updateuser(sp);
		HttpSession session=request.getSession();
		session.removeAttribute("user");
		session.setAttribute("user", sp);
				
		response.sendRedirect("userinfo.jsp");
	}	
}
