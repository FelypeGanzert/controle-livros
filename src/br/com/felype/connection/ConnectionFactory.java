package br.com.felype.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {

	public Connection getConnection() {
		
		String url = "jdbc:mysql://localhost:3306/livrosdb?useTimezone=true&serverTimezone=UTC";
		String user = "student";
		String password = "student";
				
		
		try {
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			return DriverManager.getConnection(url, user, password);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
