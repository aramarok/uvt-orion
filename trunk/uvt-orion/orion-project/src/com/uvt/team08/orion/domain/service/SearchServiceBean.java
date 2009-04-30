package com.uvt.team08.orion.domain.service;

import com.uvt.team08.orion.domain.model.FieldFilter;
import com.uvt.team08.orion.meta.Tables;
import com.uvt.team08.orion.other.DataTable;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.apache.log4j.Logger;

public class SearchServiceBean implements SearchService {

    private Logger log = Logger.getLogger(SearchService.class);

    public SearchServiceBean() {
    }

    public String sqlFlavius(String tableName, List<FieldFilter> filtre) {
	String sql = "select " + tableName + ".* from " + tableName + " ";
	String sqlWhere = "";

	boolean non_void_field = false;

	if (filtre != null)
	    for (Iterator<FieldFilter> filtrei = filtre.iterator(); filtrei
		    .hasNext();) {
		FieldFilter filtru = filtrei.next();

		if (filtru.toSql() == null || filtru.toSql().length() < 1)
		    continue;

		if (non_void_field)
		    sqlWhere += "and ";

		non_void_field = true;

		sqlWhere += filtru.toSql();
	    }

	if (sqlWhere.length() > 0)
	    sqlWhere = " where " + sqlWhere;

	sql = sql + sqlWhere;

	sql += ";";

	return sql;
    }

    public String sqlSelect(String tableName, List<FieldFilter> filtre) {
	return sqlFlavius(tableName, filtre);
    }

    private DataTable executeCuiri(String cuiri) {
	ResultSet hai_sa_dam_mana_cu_mana = null;
	DataTable table = null;

	try {
	    String driverName = "com.mysql.jdbc.Driver";

	    Class.forName(driverName);

	    String url = "jdbc:mysql://localhost/orion?user=orion&password="
		    + UserService.parola_oraian;

	    Connection conn = DriverManager.getConnection(url);
	    Statement st = conn.createStatement();

	    hai_sa_dam_mana_cu_mana = st.executeQuery(cuiri);

	    table = new DataTable(hai_sa_dam_mana_cu_mana);

	    st.close();
	    conn.close();
	} catch (Exception e) {
	    log.error("Search failed !");
	    System.err.println("Got an exception! ");
	    e.printStackTrace();
	    return null;
	}

	return table;
    }

    public DataTable searchTable(String tableName, List<FieldFilter> filtre) {
	log.info("Searching in {" + tableName + "}... ");

	DataTable table = executeCuiri(sqlSelect(tableName, filtre));
	table.setName(tableName);

	return table;
    }

    public Hashtable<String, DataTable> getAllRecords(int userID) {
	Hashtable<String, DataTable> user_list_rec = new Hashtable<String, DataTable>();
	Set<String> tabele;

	try {
	    tabele = Tables.getListIDs();
	} catch (Exception e) {
	    e.printStackTrace();
	    return null;
	}

	FieldFilter filtru_user = FieldFilter.newFieldFilter("id_user", "", ""
		+ userID, "" + userID, "int", null);
	ArrayList<FieldFilter> filters = new ArrayList<FieldFilter>();
	filters.add(filtru_user);

	for (String table_name : tabele) {
	    DataTable table = this.searchTable(table_name, filters);

	    if (table != null && table.getNumRows() > 0) {
		user_list_rec.put(table_name, table);
	    }
	}

	return user_list_rec;
    }

    public Hashtable<String, DataTable> searchTable(List<FieldFilter> filters) {
	Hashtable<String, DataTable> search_lists = new Hashtable<String, DataTable>();
	Set<String> tabele;
	try {
	    tabele = Tables.getListIDs();
	} catch (Exception e) {
	    e.printStackTrace();
	    return null;
	}

	for (String table_name : tabele) {
	    DataTable table = this.searchTable(table_name, filters);

	    if (table != null) {
		table.setName(table_name);
		search_lists.put(table_name, table);
	    }
	}

	return search_lists;
    }
}
