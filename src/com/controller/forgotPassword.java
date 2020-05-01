package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.ForgotPasswordBean;
import com.model.FogotPasswordModel;
import com.service.Services;


@WebServlet("/forgotPassword")
public class forgotPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email=request.getParameter("email");
		System.out.println("Your email: "+email);
		
	
		FogotPasswordModel dao1=new FogotPasswordModel();
		ForgotPasswordBean bean=dao1.fetchDetail(email);
		
		String pass=bean.getPass();
		
		System.out.println("Your password: " +pass);
		
		Services s=new Services();  // user mail
		s.sendPassword(email,pass);	
		
		response.sendRedirect("index.jsp");

		
	}

}
