package com.intercon360.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.intercon360.entities.Possibility;

public class PossibilityDao {

	private Connection connection;

	public PossibilityDao(Connection connection) {
		super();
		this.connection = connection;
	}

	public boolean savePossibility(Possibility possibility) {
		boolean f = false;
		try {
			String query = "insert into possibility(potential_name,account_name) values(?,?)";
			PreparedStatement ps = this.connection.prepareStatement(query);

			ps.setString(1, possibility.getPotential_name());
			ps.setString(2, possibility.getAccount_name());

			ps.executeUpdate();
			f = true;

		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}
}
