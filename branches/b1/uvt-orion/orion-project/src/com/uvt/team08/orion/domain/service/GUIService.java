/**
 * 
 */
package com.uvt.team08.orion.domain.service;

import java.util.List;

import com.uvt.team08.orion.domain.model.FieldFilter;
import com.uvt.team08.orion.domain.model.Metatable;
import com.uvt.team08.orion.other.DataTable;

/**
 * @author Ioan-Dan
 *
 */
public interface GUIService {
	public String getInsertForm(List<FieldFilter> fields, String listName);
	public String getSearchForm(String listName);
	public String getEditForm(String listName, String rowID);
	public String getTableWithEditAndDeleteFromDataTable(DataTable table, String listID);
	public String getTableFromDataTable(DataTable table, String listID);
	public List<Metatable> getMetaTableResultSet(String listName);
}
