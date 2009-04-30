package com.uvt.team08.orion.domain.service;

import com.uvt.team08.orion.domain.model.FieldFilter;
import com.uvt.team08.orion.other.DataTable;
import java.util.Hashtable;
import java.util.List;

public interface SearchService {
    /**
     * Search Function
     * 
     * @param tableName
     * @param filtre
     * @return
     */
    public DataTable searchTable(String tableName, List<FieldFilter> filtre);

    public Hashtable<String, DataTable> searchTable(List<FieldFilter> filtre);

    public String sqlSelect(String tableName, List<FieldFilter> filtre);

    /**
     * Search Function - gets all fields from all tables for the user with ID =
     * userID
     * 
     * @param userID
     * @return
     */
    public Hashtable<String, DataTable> getAllRecords(int userID);
}
