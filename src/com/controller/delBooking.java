package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.BookingModel;

@WebServlet("/delBooking")
public class delBooking extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int id=Integer.parseInt(request.getParameter("id"));
		System.out.println(id);
		
		BookingModel s=new BookingModel();
		s.cancelBook(id);
		response.sendRedirect("cancelBooking.jsp");
	}

}
