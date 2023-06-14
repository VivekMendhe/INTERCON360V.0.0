package com.intercon360.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.intercon360.entities.Contact;

public class ContactDao {

	private Connection connection;

	public ContactDao(Connection connection) {
		super();
		this.connection = connection;
	}

	// Insert data into contact module
	public boolean saveContact(Contact contact){
		
		boolean f=false;
		
		try {
			String query = "insert into contact(leadsource, fname, firstname, lastname, account_name,\r\n"
					+ "			vendor_name, email, title, department, phone, fax, mobile,\r\n"
					+ "			 dob,  assistant,  assistant_phone,  report_to,  mailing_street,\r\n"
					+ "			 other_street,  mailing_city,  other_city,  mailing_state,  other_state,\r\n"
					+ "			 mailing_zip,  other_zip,  mailing_country,  other_country,  description) "
					+ "values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			
			PreparedStatement ps = this.connection.prepareStatement(query);
			
			ps.setString(1, contact.getLeadsource());
			ps.setString(2, contact.getFname());
			ps.setString(3, contact.getFirstname());
			ps.setString(4, contact.getLastname());
			ps.setString(5, contact.getAccount_name());
			ps.setString(6, contact.getVendor_name());
			ps.setString(7, contact.getEmail());
			ps.setString(8, contact.getTitle());
			ps.setString(9, contact.getDepartment());
			ps.setString(10, contact.getPhone());
			ps.setString(11, contact.getFax());
			ps.setString(12, contact.getMobile());
			ps.setString(13, contact.getDob());
			ps.setString(14, contact.getAssistant());
			ps.setString(15, contact.getAssistant_phone());
			ps.setString(16, contact.getReport_to());
			ps.setString(17, contact.getMailing_street());
			ps.setString(18, contact.getOther_street());
			ps.setString(19, contact.getMailing_city());
			ps.setString(20, contact.getOther_city());
			ps.setString(21, contact.getMailing_state());
			ps.setString(22, contact.getOther_state());
			ps.setString(23, contact.getMailing_zip());
			ps.setString(24, contact.getOther_zip());
			ps.setString(25, contact.getMailing_country());
			ps.setString(26, contact.getOther_country());
			ps.setString(27, contact.getDescription());
			
			ps.executeUpdate();
			
			f=true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}
}
