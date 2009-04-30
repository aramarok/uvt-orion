/**
 * 
 */
package com.uvt.team08.orion.other;

/**
 * @author Ioan-Dan
 *
 */
public class DataColumn {
	
	private int columnIndex;
	private String columnName;
	private String columnDBType;
	
	public DataColumn(int colIndex, String colName, String colDBType) {
		columnIndex = colIndex;
		columnName = colName;
		columnDBType = colDBType;
	}
	
	public int getColumnIndex() {
		return columnIndex;
	}
	public String getColumnName() {
		return columnName;
	}
	public void setColumnName(String columnName) {
		this.columnName = columnName;
	}
	public String getColumnDBType() {
		return columnDBType;
	}
	public void setColumnDBType(String columnDBType) {
		this.columnDBType = columnDBType;
	}
		
}
