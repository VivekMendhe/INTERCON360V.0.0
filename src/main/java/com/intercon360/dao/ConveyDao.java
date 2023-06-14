package com.intercon360.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.intercon360.entities.Convey;

public class ConveyDao 
{
	private Connection connection;

	public ConveyDao(Connection connection) {
		super();
		this.connection = connection;
	}

	public boolean saveConveyModule(Convey convey)
	{
		boolean f=false;
		try {
			String query="insert into conveymodule(company,fname,firstname,lastname,designation,email,phone,fax,mobile,website,leadsource,leadstatus,industry,no_employee\r\n"
					+ ",annualrevenue,rating,campaignsource,street,city,state,zipcode,country,description) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement s = this.connection.prepareStatement(query);
			s.setString(1, convey.getCompany());
			s.setString(2, convey.getFname());
			s.setString(3, convey.getFirstname());
			s.setString(4, convey.getLastname());
			s.setString(5, convey.getDesignation());
			s.setString(6, convey.getEmail());
			s.setInt(7, convey.getPhone());
			s.setInt(8, convey.getFax());
			s.setInt(9, convey.getMobile());
			s.setString(10, convey.getWebsite());
			
			s.setString(11, convey.getLeadsource());
			s.setString(12, convey.getLeadstatus());
			s.setString(13, convey.getIndustry());
			s.setString(14, convey.getNo_employee());
			s.setString(15, convey.getAnnualrevenue());
			s.setString(16, convey.getRating());
			s.setString(17, convey.getCampaignsource());
			
			s.setString(18, convey.getStreet());
			s.setString(19, convey.getCity());			
			s.setString(20, convey.getState());			
			s.setInt(21, convey.getZipcode());
			s.setString(22, convey.getCountry());
			s.setString(23, convey.getDescription());
			
			s.executeUpdate();
			f=true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

	
	
}
