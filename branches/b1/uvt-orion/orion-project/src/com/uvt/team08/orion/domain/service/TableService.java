package com.uvt.team08.orion.domain.service;

import java.util.List;

import com.uvt.team08.orion.domain.model.Metatable;

public interface TableService 
{	
	/**
	 * Returns a table by its name
	 * 
	 * @param tableName
	 * @return
	 */
	public List<Metatable> getTable(String tableName);
	
	/**
	 * Returns all tables form the data base
	 * 
	 * @return
	 */
	public List<Metatable> getAllTables();
	
	public String getIDField(String tableName);
}
