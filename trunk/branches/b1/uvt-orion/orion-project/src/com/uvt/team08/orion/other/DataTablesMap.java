/**
 * 
 */
package com.uvt.team08.orion.other;

import java.util.HashMap;

/**
 * @author Ioan-Dan
 *
 */
public class DataTablesMap {
	
	private HashMap<String, DataTable> tables = new HashMap<String, DataTable>();
	
	public void addDataTable(String tableId, DataTable table) {
		tables.put(tableId, table);
	}
	
}
