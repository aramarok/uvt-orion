package com.uvt.team08.orion.domain.service;


import com.uvt.team08.orion.view.WebUtil;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import org.apache.log4j.Logger;

public class DeleteServiceBean implements DeleteService 
{
	private Logger log = Logger.getLogger(InsertService.class);

	public String deleteSql(String tableName, int id)
	{
		//String camp_id = WebUtil.getTableService().getIDField(tableName);
		//String sql = "delete from " + tableName + " where " + tableName + "." + camp_id + 
		//			" = " + id + ";";
		
		//return sql;
		return deleteSql(tableName + ":" + id);
	}
	
	public String deleteSql(String tableNamePlusIDs)
	{
		String sql = "delete from ";
		String[] table_ids = tableNamePlusIDs.split(":");
		if (table_ids.length < 2) return null;
		sql += table_ids[0] + " where " + table_ids[0] + "." + WebUtil.getTableService().getIDField(table_ids[0]) + 
				" in (";
		String[] recordids = table_ids[1].split(",");
		if (recordids.length < 1) return null;
		for (int i = 0; i < recordids.length; i++)
		{
			if (i != 0) sql += ", ";
			sql += recordids[i];
		}
		
		sql += ");";
		
		return sql;
	}
	
	private boolean executeCuiri(String cuiri)
	{
		if (cuiri == null || cuiri.length() < 0) 
			return false;
		try {
			String driverName = "com.mysql.jdbc.Driver";
			
			Class.forName(driverName);
			
			String url = "jdbc:mysql://localhost/orion?user=orion&password=" + UserService.parola_oraian;				
			
			Connection conn = DriverManager.getConnection(url);
			Statement st = conn.createStatement();
			
			return (st.executeUpdate(cuiri) > 0);
		}
		catch (Exception e) 
		{
			log.error("Insert failed !");
			System.err.println("Got an exception! ");
			e.printStackTrace();
			return false;
		}			
	}
	
	public boolean deleteRecord(String tableName, int id) 
	{		
		return executeCuiri(deleteSql(tableName, id));
	}

	public boolean deleteRecord(String tablePlusRecordIDs)
	{
		String[] tabele_ids = tablePlusRecordIDs.split(";");
		boolean return_value = true;
		
		if (tabele_ids.length < 1) return false;
		
		for (int i = 0; i < tabele_ids.length; i++)
		{
			if (!executeCuiri(deleteSql(tabele_ids[i]))) return_value = false;
		}
		
		return return_value;
	}
}
