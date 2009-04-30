package com.uvt.team08.orion.domain.service;

public interface DeleteService 
{
	boolean deleteRecord(String tableName, int id);
	boolean deleteRecord(String tablePlusIDs);
	
	String deleteSql(String tableName, int id);
}
