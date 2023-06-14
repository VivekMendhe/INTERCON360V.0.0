package com.intercon360.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.intercon360.dao.ConveyDao;
import com.intercon360.entities.Convey;
import com.intercon360.helper.ConnectionProvider;

/**
 * Servlet implementation class ConveyServlet
 */
//@WebServlet("/ConveyServlet")
@MultipartConfig
public class ConveyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ConveyServlet() {
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
		
		String company = request.getParameter("company");
		String fname = request.getParameter("fname");
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String designation = request.getParameter("designation");
		String email = request.getParameter("email");
		String phone1 = request.getParameter("phone");
		String fax1 = request.getParameter("fax");
		String mobile1 = request.getParameter("mobile");
		
		int phone=Integer.parseInt(phone1);
		int fax=Integer.parseInt(fax1);
		int mobile=Integer.parseInt(mobile1);
		
		String website = request.getParameter("website");
		
		String leadsource = request.getParameter("leadsource");
		String leadstatus = request.getParameter("leadstatus");
		String industry = request.getParameter("industry");
		String no_employee = request.getParameter("no_employee");
		String annualrevenue = request.getParameter("annualrevenue");
		String rating = request.getParameter("rating");
		String campaignsource = request.getParameter("campaignsource");
		
		String street = request.getParameter("street");
		String city = request.getParameter("city");
		String state = request.getParameter("state");
		String zipcode1 = request.getParameter("zipcode");
		
		int zipcode=Integer.parseInt(zipcode1);
		
		String country = request.getParameter("country");
		
		String description = request.getParameter("description");
		
		// Create convey object to set the data in that object
		Convey convey=new Convey(company, fname, firstname, lastname, designation, email, phone, fax, mobile, website, leadsource, leadstatus, industry, no_employee, annualrevenue, rating, campaignsource, street, city, state, zipcode, country, description);
		
		// Create Convey DAO Object
		
		try {
			ConveyDao dao=new ConveyDao(ConnectionProvider.getConnection());
			if (dao.saveConveyModule(convey)) {
				out.println("save");
			}else {
				out.println("error");				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
