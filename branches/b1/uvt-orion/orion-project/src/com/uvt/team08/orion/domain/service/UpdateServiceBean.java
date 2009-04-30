package com.uvt.team08.orion.domain.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.util.Iterator;
import java.util.List;

import org.apache.log4j.Logger;

import com.uvt.team08.orion.domain.model.FieldFilter;
import com.uvt.team08.orion.view.WebUtil;


public class UpdateServiceBean implements UpdateService 
{
	private Logger log = Logger.getLogger(InsertService.class);

	private boolean executeCuiri(String cuiri)
	{
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
			log.error("Update failed !");
			System.err.println("Got an exception! ");
			e.printStackTrace();
			return false;
		}			
	}

	
	public String updateRecord(String tableName, int id, List<FieldFilter> filtre)
	{
		String rezultat = "";
		log.info("Updating ... ");
		
		for (Iterator<FieldFilter> fi = filtre.iterator(); fi.hasNext();)
		{
			FieldFilter f = fi.next();
			if (!f.isValid())
			{
				if (rezultat.length() == 0)
					rezultat += "Eroare la introducere. Verificati: ";
				else rezultat += ", ";
				rezultat += f.getNumeDeScena();
			}
		}

		if (rezultat.length() > 0)
			return rezultat;

		String sql = sqlUpdate(tableName, id, filtre);
		
		log.info("Using " + sql + " for update");			
		boolean rez = executeCuiri(sql);
			
		if (rez)
			return "Succes la actualizare.";
		else return "Nu a functionat cum trebuie actualizarea";
	}
	
	public String sqlUpdate(String tableName, int id, List<FieldFilter> filtre) 	
	{
		boolean non_void_field = false;		

		String camp_id = WebUtil.getTableService().getIDField(tableName);
		String sql = "update " + tableName + " set ";
		String sqlUpdate = "";

		for (Iterator<FieldFilter> filtrei = filtre.iterator(); filtrei.hasNext();)
		{
			FieldFilter filtru = filtrei.next();
			
			if (filtru.getInsert() == null || filtru.getInsert().length() < 1)
				continue;
						
			//if (!filtru.isValid())
			//	return null;
			
			if (non_void_field) 
				sqlUpdate += ", ";
			
			non_void_field = true;
			sqlUpdate += filtru.getNumeField() + " = " + filtru.getInsert(); 
		}

		if (sqlUpdate.length() == 0)
			return sqlUpdate;
		
		sql += sqlUpdate + " where " + tableName + "." + camp_id + " = " + id;
		sql += ";";
					
		return sql;		
	}
}
