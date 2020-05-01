package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.serviceproviderModel;

@WebServlet("/updateSP")
public class updateSP extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		com.bean.serviceproviderBean sp=new com.bean.serviceproviderBean();
		
		sp.setId(request.getParameter("id"));
		sp.setPass(request.getParameter("pass"));
		sp.setEmail(request.getParameter("email"));
		sp.setPhon(request.getParameter("phon"));
		sp.setSe_name(request.getParameter("se_name"));
		
		serviceproviderModel sm=new serviceproviderModel();
		sm.updateSP(sp);
		HttpSession session=request.getSession();
		/*session.removeAttribute("user");*/
		session.setAttribute("user", sp);
				
		response.sendRedirect("serviceprovider/SPinfo.jsp");
	}

}
