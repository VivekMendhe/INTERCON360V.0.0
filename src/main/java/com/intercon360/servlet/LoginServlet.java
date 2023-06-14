package com.intercon360.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.intercon360.dao.SignupDao;
import com.intercon360.entities.Signup;
import com.intercon360.helper.ConnectionProvider;

/**
 * Servlet implementation class LoginServlet
 */
//@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginServlet() {
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
		
//		login fetch user_name & password
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
//		User dao object
		try {
			SignupDao d=new SignupDao(ConnectionProvider.getConnection());
			Signup user = d.getUserByEmailPassword(email, password);
						
			if (user==null) {
				out.println("Invalid user name password");
			}else {
				HttpSession s = request.getSession();
				s.setAttribute("current_user", user);
				response.sendRedirect("home.jsp");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		

	}

}
