package com.uvt.team08.orion.domain.service;

import java.util.List;

import com.uvt.team08.orion.domain.model.FieldFilter;

public interface InsertService 
{
	/**
	 * Insert Function -> ia din filtre numele campului si valoarea sa (de tip String)
	 * 		in functie de tip. 
	 * @param tableName
	 * @param filtre
	 * @return
	 */
	public String insertRecord(String tableName, List<FieldFilter> filtre);
	public String sqlInsert(String tableName, List<FieldFilter> filtre);
}
