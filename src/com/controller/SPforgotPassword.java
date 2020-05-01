package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.SPForgotPasswordBean;
import com.model.SPFogotPasswordModel;
import com.service.Services;


@WebServlet("/SPforgotPassword")
public class SPforgotPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email=request.getParameter("email");
		System.out.println("Your email: "+email);
		
	
		SPFogotPasswordModel dao1=new SPFogotPasswordModel();
		SPForgotPasswordBean bean=dao1.fetchDetail(email);
		
		String pass=bean.getPass();
		
		System.out.println("Your password: " +pass);
		
		Services s=new Services();  // sp mail
		s.sendPasswordSP(email,pass);	
		
		response.sendRedirect("serviceprovider/index.jsp");

		
	}

}
