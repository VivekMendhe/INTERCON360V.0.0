package com.intercon360.helper;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionProvider {
	private static Connection connection;

	public static Connection getConnection() throws SQLException {
		try {

			if (connection == null) {
				Class.forName("com.mysql.cj.jdbc.Driver");
				connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/intercon360", "root", "root");
			}

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}

		return connection;
	}
}
