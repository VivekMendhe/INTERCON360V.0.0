package com.intercon360.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;


import com.intercon360.entities.Promote;

public class PromoteDAO{
	
	private Connection connection;
	
	public PromoteDAO(Connection connection) {
		super();
		this.connection = connection;
		
	}
	
	// Promotes Module data insert
	public boolean savePromotesModules(Promote promote)
	{
		boolean f=false;
		try {
			// insert query
			String query="insert into promotesmodule(type,campaign_name,status,expected_revenue,budgeted_cost,actual_cost,expected_response,description) values(?,?,?,?,?,?,?,?)";
			PreparedStatement s=this.connection.prepareStatement(query);
			s.setString(1, promote.getType());
			s.setString(2, promote.getCampaign_name());
			s.setString(3, promote.getStatus());
			s.setString(4, promote.getExpected_revenue());
			s.setString(5, promote.getBudgeted_cost());
			s.setString(6, promote.getActual_cost());
			s.setString(7, promote.getExpected_response());
			s.setString(8, promote.getDescription());
			
			s.executeUpdate();
			f=true;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return f;
	}
}
