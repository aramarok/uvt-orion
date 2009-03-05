/**
 * 
 */
package com.uvt.team08.orion.domain.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * @author Ioan-Dan
 *
 */
public class DBService {
	
	public Connection getConnection() throws SQLException {
		Connection conn = null;
		String url = "jdbc:mysql://localhost/orion?user=orion&password=orion";
		
		DriverManager.registerDriver(new com.mysql.jdbc.Driver());
		
		conn = DriverManager.getConnection(url);
		
		return conn;
	}
	
}
