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

import com.intercon360.dao.PossibilityDao;
import com.intercon360.entities.Possibility;
import com.intercon360.helper.ConnectionProvider;

/**
 * Servlet implementation class Possibility
 */
//@WebServlet("/PossibilityServlet")
@MultipartConfig
public class PossibilityServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public PossibilityServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		String potential_name = request.getParameter("potential_name");
		String account_name = request.getParameter("account_name");

		Possibility p = new Possibility(potential_name, account_name);
		try {
			PossibilityDao d = new PossibilityDao(ConnectionProvider.getConnection());
			if (d.savePossibility(p)) {
				out.println("save");
				response.sendRedirect("possibility_details.jsp");
			} else {
				out.println("error");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
