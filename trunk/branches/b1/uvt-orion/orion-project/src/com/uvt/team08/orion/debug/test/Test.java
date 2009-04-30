package com.uvt.team08.orion.debug.test;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import com.uvt.team08.orion.domain.service.UserService;
import com.uvt.team08.orion.other.DataTable;

/**
 * 
 */

/**
 * @author Ioan-Dan
 *
 */
public class Test {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		ResultSet hai_sa_dam_mana_cu_mana = null;
		DataTable table = null;
		
		try {
			String driverName = "com.mysql.jdbc.Driver";
			
			Class.forName(driverName);
			
			String url = "jdbc:mysql://localhost/orion?user=orion&password=" + UserService.parola_oraian;				
			
			Connection conn = DriverManager.getConnection(url);
			Statement st = conn.createStatement();
			
			hai_sa_dam_mana_cu_mana = st.executeQuery("SELECT * FROM lista5;");
			
			table = new DataTable(hai_sa_dam_mana_cu_mana);
			
			st.close();
			conn.close();
			
			
		}
		catch (Exception e) 
		{
			System.err.println("Got an exception! ");
			e.printStackTrace();
		}
	}
}
