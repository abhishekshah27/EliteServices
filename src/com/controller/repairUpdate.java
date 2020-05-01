package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.AutoInsBean;
import com.model.RepairModel;


/**
 * Servlet implementation class repairUpdate
 */
@WebServlet("/repairUpdate")
public class repairUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public repairUpdate() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		AutoInsBean sp=new AutoInsBean();
		
		sp.setName(request.getParameter("se_sub_name"));
		sp.setId(request.getParameter("id"));
		sp.setSe_name(request.getParameter("se_name"));
		
		RepairModel sm=new RepairModel();
		sm.updateApp(sp);
		response.sendRedirect("admin/repair.jsp");

		
	}

}
