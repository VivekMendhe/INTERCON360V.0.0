package com.intercon360.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.intercon360.entities.Record;

public class RecordDao {

	private Connection connection;

	public RecordDao(Connection connection) {
		super();
		this.connection = connection;
	}

	public boolean saveRecords(Record record) {
		boolean f = false;
		try {
			String query = "insert into record(accountname) values(?)";
			PreparedStatement ps = this.connection.prepareStatement(query);

			ps.setString(1, record.getAccountname());

			ps.executeUpdate();
			f = true;

		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}
}
