package com.uvt.team08.orion.domain.service;

import java.util.List;

import com.uvt.team08.orion.domain.model.FieldFilter;


public interface UpdateService 
{
	public String updateRecord(String tableName, int id, List<FieldFilter> filtre);
	public String sqlUpdate(String tableName, int id, List<FieldFilter> filtre);
}
