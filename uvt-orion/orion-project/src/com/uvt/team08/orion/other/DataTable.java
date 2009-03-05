/**
 * 
 */
package com.uvt.team08.orion.other;

import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 * @author Ioan-Dan
 *
 */
public class DataTable {
	private ArrayList<DataRow> rows = new ArrayList<DataRow>();
	private ArrayList<DataColumn> cols = new ArrayList<DataColumn>();
	
	private String name = "unknown table";
	
	public DataTable() {
	}
	
	public DataTable(String name) {
		this.name = name;
	}
	
	public DataTable(String name, ResultSet rs) {
		this(rs, true);
		this.name = name;
	}
	
	public DataTable(ResultSet rs) {
		this(rs, true);
	}
	
	public DataTable(ResultSet rs, boolean closeResultSet) {
		loadFromResultSet(rs, closeResultSet);
	}
	
	public void loadFromResultSet(ResultSet rs, boolean closeResultSet) {
		try {
			ResultSetMetaData meta = rs.getMetaData();
			
			for (int i = 1; i <= meta.getColumnCount(); i++) {
				cols.add(new DataColumn(i, meta.getColumnName(i), meta.getColumnTypeName(i)));
			}
			
			while (rs.next()) {
				DataRow dr = new DataRow();
				
				for (int i = 1; i <= cols.size(); i++) {
					dr.setEement(i, cols.get(i - 1).getColumnName(), rs
							.getObject(i));
				}
				
				rows.add(dr);
			}
			
			if (closeResultSet) {
				rs.close();
			}
		} catch (SQLException e) {
			// TODO: Exception.
		}
	}
	
	public ArrayList<DataRow> getRows() {
		return rows;
	}
	public ArrayList<DataColumn> getColumns() {
		return cols;
	}
	public int getNumRows() {
		return rows.size();
	}
	public int getNumCols() {
		return cols.size();
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public boolean isEmpty()
	{
		if (rows == null || cols == null || rows.isEmpty() || cols.isEmpty())
			return true;
		return false;
	}
	
}
