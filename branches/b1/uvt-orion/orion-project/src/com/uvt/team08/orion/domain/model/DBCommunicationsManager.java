/**
 * 
 */
package com.uvt.team08.orion.domain.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 * @author Ioan-Dan
 *
 */
public class DBCommunicationsManager {
	
	private static final int CONNECTION_POOL_MAX_SIZE = 20;

	private static DBCommunicationsManager instance = new DBCommunicationsManager();
	
	private ArrayList<Connection> pool = new ArrayList<Connection>();
	
	public static DBCommunicationsManager getInstance() {
		if (instance != null) {
			instance = new DBCommunicationsManager();
		}
		
		return instance;
	}
	
	private DBCommunicationsManager() {
		pool = new ArrayList<Connection>();
	}
	
	/**
	 * Returns a connection if one available in the pool. If not, creates a new
	 * connection.
	 * 
	 * @return
	 * @throws SQLException
	 */
	public synchronized Connection lendConnection() throws SQLException {
		int size = pool.size();
		Connection conn = null;
		String url = "jdbc:mysql://localhost/orion?user=orion&password=orion";
		
		if (size > 0) {
			conn = pool.remove(size - 1);
		} else {
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());

			conn = DriverManager.getConnection(url);
		}
		
		return conn;
	}
	
	public synchronized void returnConnection(Connection conn) {
		if (pool.size() < CONNECTION_POOL_MAX_SIZE) {
			pool.add(conn);
		}
	}
}
