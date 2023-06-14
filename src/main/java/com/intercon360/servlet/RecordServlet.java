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

import com.intercon360.dao.RecordDao;
import com.intercon360.entities.Record;
import com.intercon360.helper.ConnectionProvider;

/**
 * Servlet implementation class RecordServlet
 */
//@WebServlet("/RecordServlet")
@MultipartConfig
public class RecordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RecordServlet() {
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
	
		String accountname = request.getParameter("accountname");
		
		Record r=new Record(accountname);
		
		try {
			RecordDao d=new RecordDao(ConnectionProvider.getConnection());
			if (d.saveRecords(r)) {
//				out.println("save");
				response.sendRedirect("record_details.jsp");
			}else {				
				out.println("error");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
