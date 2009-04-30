/**
 * 
 */
package com.uvt.team08.orion.domain.service;

import com.uvt.team08.orion.domain.model.FieldFilter;
import com.uvt.team08.orion.domain.model.Metatable;
import com.uvt.team08.orion.other.DataTable;
import java.util.List;

/**
 * @author Ioan-Dan
 * 
 */
public interface GUIService {
    public String getInsertForm(List<FieldFilter> fields, String listName);

    public String getSearchForm(String listName, String rol, Integer aidi);

    public String getEditForm(String listName, String rowID);

    public String getTableWithEditAndDeleteFromDataTable(DataTable table,
	    String listID);

    public String getTableFromDataTable(DataTable table, String listID);

    public List<Metatable> getMetaTableResultSet(String listName);
}
