package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.repairInsBean;
import com.model.repairInsModel;


/**
 * Servlet implementation class repairInst
 */
@WebServlet("/repairInst")
public class repairInst extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public repairInst() {
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
		
		
		repairInsBean sp=new repairInsBean();
		
		String name1=request.getParameter("se_name");
		repairInsModel q=new repairInsModel();
		Integer id=q.getID(name1);
		sp.setSe_sub_name(request.getParameter("se_sub_name"));
		sp.setId(id.toString());
		//System.out.println(id.toString());
		repairInsModel sm=new repairInsModel();
		sm.addService(sp);
		
		response.sendRedirect("admin/repair.jsp");

		
	}

}
