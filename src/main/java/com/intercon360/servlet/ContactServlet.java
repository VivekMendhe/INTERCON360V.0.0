package com.intercon360.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.intercon360.dao.ContactDao;
import com.intercon360.entities.Contact;
import com.intercon360.helper.ConnectionProvider;

/**
 * Servlet implementation class ContactServlet
 */
//@WebServlet("/ContactServlet")
public class ContactServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ContactServlet() {
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

		String leadsource = request.getParameter("leadsource");
		String fname = request.getParameter("fname");
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String account_name = request.getParameter("account_name");
		String vendor_name = request.getParameter("vendor_name");
		String email = request.getParameter("email");
		String title = request.getParameter("title");
		String department = request.getParameter("department");
		String phone = request.getParameter("phone");
		String fax = request.getParameter("fax");
		String mobile = request.getParameter("mobile");
		String dob = request.getParameter("dob");
		String assistant = request.getParameter("assistant");
		String assistant_phone = request.getParameter("assistant_phone");
		String report_to = request.getParameter("report_to");
		String mailing_street = request.getParameter("mailing_street");
		String other_street = request.getParameter("other_street");
		String mailing_city = request.getParameter("mailing_city");
		String other_city = request.getParameter("other_city");
		String mailing_state = request.getParameter("mailing_state");
		String other_state = request.getParameter("other_state");
		String mailing_zip = request.getParameter("mailing_zip");
		String other_zip = request.getParameter("other_zip");
		String mailing_country = request.getParameter("mailing_country");
		String other_country = request.getParameter("other_country");
		String description = request.getParameter("description");

		// Create Contact object to set all data to that object
		Contact contact = new Contact(leadsource, fname, firstname, lastname, account_name, vendor_name, email, title,
				department, phone, fax, mobile, dob, assistant, assistant_phone, report_to, mailing_street,
				other_street, mailing_city, other_city, mailing_state, other_state, mailing_zip, other_zip,
				mailing_country, other_country, description);

		// Create Contact DAO object
		try {
			ContactDao d = new ContactDao(ConnectionProvider.getConnection());
			if (d.saveContact(contact)) {
				out.println("save");
				response.sendRedirect("contact_details.jsp");
			} else {
				out.println("error");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

}
