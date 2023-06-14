package com.intercon360.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.intercon360.dao.PromoteDAO;
import com.intercon360.entities.Promote;
import com.intercon360.helper.ConnectionProvider;

/**
 * Servlet implementation class PromoteServlet
 */
//@WebServlet("/PromoteServlet")
@MultipartConfig
public class PromoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PromoteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		
		String type = request.getParameter("type");
		String campaign_name = request.getParameter("campaign_name");
		String status = request.getParameter("status");
		String expected_revenue = request.getParameter("expected_revenue");
		String budgeted_cost = request.getParameter("budgeted_cost");
		String actual_cost = request.getParameter("actual_cost");
		String expected_response = request.getParameter("expected_response");
		String description = request.getParameter("description");
		
		// Create Promote Object set all the data to that object
		Promote promote=new Promote(type, campaign_name, status, expected_revenue, budgeted_cost, actual_cost, expected_response, description);
		
		// Promote DAO Object
		try {
			PromoteDAO dao=new PromoteDAO(ConnectionProvider.getConnection());
			if (dao.savePromotesModules(promote)) {
//				out.println("Save");
				response.sendRedirect("promote_details.jsp");
			} else {
				out.println("Error");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

}
