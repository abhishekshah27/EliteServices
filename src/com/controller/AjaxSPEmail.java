package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.SPregistrationModel;

@WebServlet("/AjaxSPEmail")
public class AjaxSPEmail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String val = request.getParameter("val");
		 PrintWriter out = response.getWriter();
		
		if(val==null || val.trim().equals(""))
	    {  
	    	out.print("Please enter Email id");  
	    }
	    else
	    {  
		    
        try {
			String result =  SPregistrationModel.checkEmail(val);
			if(result.equalsIgnoreCase("Available"))
			{
				/*out.print("Available");*/	
				
			}
			else {	
				out.print("Not Available");	
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	    }
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
