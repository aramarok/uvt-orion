package com.uvt.team08.orion.domain.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.util.List;
import java.util.Iterator;

import org.apache.log4j.Logger;

import com.uvt.team08.orion.domain.model.FieldFilter;


public class InsertServiceBean implements InsertService{

		private Logger log = Logger.getLogger(InsertService.class);
			
		public InsertServiceBean()
		{
		}
		
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
				log.error("Insert failed !");
				System.err.println("Got an exception! ");
				e.printStackTrace();
				return false;
			}			
		}

		
		public String insertRecord(String tableName, List<FieldFilter> filtre)
		{
			String rezultat = "";
			log.info("Inserting ... ");

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
			
			String sql = sqlInsert(tableName, filtre);
			
			log.info("Using " + sql + " for insert");			
			boolean rez = executeCuiri(sql);

			if (rez)
				return "Inserare incununata de succes.";
			else return "Eroare la inserare.";			
		}
		
		public String sqlInsert(String tableName, List<FieldFilter> filtre)		
		{
			boolean non_void_field = false;

			String sql = "insert into " + tableName;
			String sqlField = "";
			String sqlValue = "";
	
			for (Iterator<FieldFilter> filtrei = filtre.iterator(); filtrei.hasNext();)
			{
				FieldFilter filtru = filtrei.next();
				
				if (filtru.getInsert() == null || filtru.getInsert().length() < 1)
					continue;
				
				if (non_void_field) 
				{
					sqlValue += ", ";
					sqlField += ", ";
				}
				
				non_void_field = true;
				sqlField += filtru.getNumeField(); 
				sqlValue += filtru.getInsert();
			}

			sql += "(" + sqlField + ") values (" + sqlValue + ") ";
			sql += ";";
						
			return sql;		
		}
}
