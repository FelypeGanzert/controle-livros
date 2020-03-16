package br.com.felype.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {

	public Connection getConnection() {
		try {
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			return DriverManager.getConnection("jdbc:mysql://localhost:3306/livrosdb?useTimezone=true&serverTimezone=UTC",
					"student", "student");
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
