/**
 * 
 */
package com.uvt.team08.orion.domain.service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import com.uvt.team08.orion.domain.model.FieldFilter;
import com.uvt.team08.orion.domain.model.Metatable;
import com.uvt.team08.orion.meta.Tables;
import com.uvt.team08.orion.other.DataColumn;
import com.uvt.team08.orion.other.DataRow;
import com.uvt.team08.orion.other.DataTable;
import com.uvt.team08.orion.view.WebUtil;

/**
 * @author Ioan-Dan
 *
 */
public class GUIServiceBean implements GUIService {

	@Override
	public String getInsertForm(List<FieldFilter> ffields, String listName) {
		String result = "";
		
		Hashtable<String, FieldFilter> fields = new Hashtable<String, FieldFilter>();
		
		for (FieldFilter fieldFilter : ffields) {
			fields.put(fieldFilter.getNumeField(), fieldFilter);
		}
		
		try {
			List<Metatable> lm = WebUtil.getTableService().getTable(listName);
			
			if (lm.size() < 1)
				throw new Exception("Numele listei nu e in ordine ...\n");
			
			for (Metatable meta : lm) {	
				if (meta.getCampVizual() != null) {
					result += makeFormFieldInTable(meta.getCampVizual(), 
							makeInsertField(meta.getCampTabela(),
									meta.getTip(), fields.get(
											meta.getCampTabela())
											.getValoareField1()));
				}
			}
			
		} catch (Exception e) {
			result = result + " EXCEPTION: " + e.getMessage() + " ---- DETAILS: " + getExceptionDetails(e);
		}
		
		return result;
	}
	
	public String getExceptionDetails(Exception e) {
		String result = "";
		
		for (StackTraceElement ste : e.getStackTrace()) {
			result = result + "  <BR />  " + ste.toString();
		}
		
		return result;
	}

	public String getEditForm(String listID, String rowID) {
		String result = "";
		
		List<FieldFilter> x = new ArrayList<FieldFilter>();
		x.add(FieldFilter.newFieldFilter(WebUtil.getTableService().getIDField(
				listID), "", "" + rowID, "" + rowID, "int", ""));
		
		DataTable table = WebUtil.getSearchService().searchTable(listID, x);
		List<Metatable> meta = WebUtil.getTableService().getTable(listID);		
				
		if (meta.size() < 1) return "Eroare: tabela cautata nu exista in metatabela !";
		
		try {
			for (DataRow row : table.getRows()) {
				for (Metatable m : meta) {
					if (m.getCampVizual() != null) {
						String value = row.getValueAsString(m.getCampTabela());

						if (value != null && m.getTip().equals("date")) {
							String[] v = value.split("-");

							if (v.length == 3)
								value = v[1] + "/" + v[2] + "/" + v[0];
						}

						result = result
								+ makeFormFieldInTable(m.getCampVizual(),
										makeEditField(m.getCampTabela(), m
												.getTip(), value));
					}
				}
			}
		} catch (Exception e) {
			result = result + " EXCEPTION: " + e.getMessage();
		}
		
		return result;	
	}
	
	public List<Metatable> getMetaTableResultSet(String listName)
	{
		return WebUtil.getTableService().getTable(listName);
	}
	
	@Override
	public String getSearchForm(String listName) {
		String result = "";
		
		if (listName.equals("all"))
		{
			result = result + makeFormFieldInTable("Utilizator:",
								makeUserSelectField());
			
			result = result + makeFormFieldInTable("Nume",
								 makeSearchField("nume", 
										 		 "varchar"));

			result = result + makeFormFieldInTable("Perioada (ani)",
					 makeSearchField("data", 
							 		 "int"));
			result = result
					+ makeFormFieldInTable("Nume fisier .xls (optional):",
								makeGenerateXLSField());
		}
		else try {
			List<Metatable> res = getMetaTableResultSet(listName);
			
			if (res.size() != 0) {
				result = result
						+ makeFormFieldInTable("Utilizator:",
								makeUserSelectField());
								
				for (Iterator<Metatable> ires = res.iterator(); ires.hasNext();) 
				{
					Metatable meta = ires.next();					
	
					if (meta.getCampVizual() != null) {
						result = result
								+ makeFormFieldInTable(meta.getCampVizual(),
										makeSearchField(meta.getCampTabela(), 
												        meta.getTip()));
					}
				}
				
				result = result
						+ makeFormFieldInTable("Nume fisier .xls (optional):",
								makeGenerateXLSField());
			}
		} catch (Exception e) {
			result = result + " EXCEPTION: " + e.getLocalizedMessage();
		}
		
		return result;
	}

	private String makeGenerateXLSField() {
		return "<input type=\"text\" name=\"xls_file_name\" />";
	}

	private String makeUserSelectField() {
		String result = "";
		
		try {
			Hashtable<Integer, String> usersNames = WebUtil.getUserService()
					.getUsersNames();
			
			if (usersNames != null) {
				Set<Integer> skeys = usersNames.keySet();
				Integer [] keys = skeys.toArray(new Integer[] {});
				
				Arrays.sort(keys, new Comparator<Integer>() {
					public int compare(Integer i1, Integer i2) {
						return - i1.compareTo(i2);
					}
				});
	
				result = result + "<SELECT name = \"id_user\">";
	
				for (Integer key : keys) {
					result = result + "<OPTION value=\"" + key.toString()
							+ "\" SELECTED>" + usersNames.get(key) + "</OPTION>";
				}
	
				result = result + "</SELECT>";
			} else {
				result = "no loosers";
			}
		} catch (Exception e) {
			result = result + e.getLocalizedMessage() + "esti prost ?";
		}
		
		return result;
	}
	
	private String makeFormFieldInTable(String label, String field) {
		String result = "";
		
		result = result + "<TR class=\"contents\">";
		result = result + "<TD class=\"contents\" COLSPAN=1  ALIGN=RIGHT>";
		result = result + "<P><FONT FACE=\"Arial, sans-serif\" SIZE=2 COLOR=\"#C2DFFF\">" + label + "</FONT>";
		result = result + "</P></TD>";
		result = result + "<TD class=\"contents\" COLSPAN=1 ALIGN=CENTER>";
		result = result + "<P><BR></P>";
		result = result + "</TD>";
		result = result + "<TD class=\"contents\" COLSPAN=1 ALIGN=LEFT>";
		result = result + "<P>";
		result = result + field;
		result = result + "</P>";

		result = result + "</TD>";
		result = result + "</TR>";
		
		return result;
	}

	/**
	 * @param name
	 * @param type
	 * @return
	 */
	private String makeSearchField(String name, String type) {
		String result = "unknown";
		
		if (type.equals("varchar")) {
			result = "<input type = \"text\" name = \"" + name + "\" />";
		} else if (type.equals("int")) {
			result = "<input type = \"text\" name = \"" + name + "1\" />";
			result += "<input type = \"text\" name = \"" + name + "2\" />";
		} else if (type.equals("double")) {
			result = "<input type = \"text\" name = \"" + name + "1\" />";
			result += "<input type = \"text\" name = \"" + name + "2\" />";
		} else if (type.equals("date")) {
			result = "<input type = \"text\" name = \"" + name + "\" />";
		} else {
			result = "<input type = \"text\" name = \"" + name + "\" />";
		}
		
		return result;
	}

	/**
	 * @param name - the name of the input field
	 * @param type - the type from the db
	 * @return
	 */
	private String makeInsertField(String name, String type, String value) {
		String result = "unknown." + name + "." + type;
		
		if (type.equals("varchar")) {
			result = "<input class = \"field_value\" type = \"text\" name = \""
					+ name + "\" + value = \"" + value + "\" size = 24 />";
		}
		
		if (type.equals("int") || type.equals("bigint") || type.equals("double") || type.equals("float")) {
			result = "<input class = \"field_value\" type = \"text\" name = \""
					+ name + "\" value = \"" + value + "\" size = 12 />";
		}
		
		if (type.equals("date")) {
			result = "<input class = \"field_value\" type = \"text\" name = \""
					+ name + "\" value = \"" + value
					+ "\" id=\"popup_container\" size = 16 />";
		}
		
		return result;
	}
	
	/**
	 * @param name - the name of the input field
	 * @param type - the type from the db
	 * @return
	 */
	private String makeEditField(String name, String type, String value) {
		String result = "<input class = \"field_value\" type = \"text\" name = \""
				+ name + "\" value = \"" + value + "\" size = ";

		if (type.equals("varchar")) {
			result += "24 />";
		} else if (type.equals("int") || type.equals("bigint")
				|| type.equalsIgnoreCase("double")
				|| type.equalsIgnoreCase("float")) {
			result += "12 />";
		} else if (type.equals("date")) {
			result += "16 id=\"popup_container\" />";
		} else
			result = "unknown." + type;
		
		return result;
	}
	
	public String getTableWithEditAndDeleteFromDataTable(DataTable table, String listID) {
		return getTableFromDataTable(table, listID, true);
	}
	
	public String getTableFromDataTable(DataTable table, String listID) {
		return getTableFromDataTable(table, listID, false);
	}
	
	/**
	 * @param rs
	 * @param listID
	 * @param useAndAndDelete
	 * @return
	 */
	private String getTableFromDataTable(DataTable table, String listID, boolean useAndAndDelete) {
		int nRow = 0;
		String result = "";		
		
		result = result + "<TABLE WIDTH=100% ALIGN=CENTER CELLPADDING=1 BORDER=0>";
		
		result = result + "<P class=\"content_header\">"
				+ Tables.getTableNameByID(listID) + "</P>";
				
		List<Metatable> metatable = getMetaTableResultSet(listID);
		Hashtable<String, String> columNames = new Hashtable<String, String>();
		
		if (metatable.size() > 0) {
			for (Iterator<Metatable> imeta = metatable.iterator(); imeta.hasNext();)					
			{
				Metatable m = imeta.next();
				String key = m.getCampTabela();
				String value = m.getCampVizual();
				
				if (key != null && value != null) {
					columNames.put(key, value);
				}
			}
		}
		
		result = result + "<TR>";
		
		for (DataColumn column : table.getColumns()) {
			String columnName = columNames.get(column.getColumnName());
			
			if (columnName != null) {
				result = result + "<TH ALIGN=CENTER class=\"table_header\">";
				try {
					result = result + columnName;
				} catch (RuntimeException e) {
					result += "";
				}
				result = result + "</TH>";
			}
		}
		
		if (useAndAndDelete) {
			result += "<TH ALIGN=CENTER class=\"table_header\">";
			result += "Editeaza:";
			result += "</TH>";
			result += "<TH ALIGN=CENTER class=\"table_header\">";
			result += "Sterge:";
			result += "</TH>";
			
			result += "<TH ALIGN=RIGHT class=\"table_header\">";
			result += "";
			result += "</TH>";
		}
		
		result = result + "</TR>";
		
		for (DataRow row : table.getRows()) {
		 	if (nRow % 2 == 0) {
				result = result + "<TR class=\"odd\">";
			} else {
				result = result + "<TR class=\"even\">";
			}
		 		
			try {
				for (DataColumn column : table.getColumns()) {
					String columnName = columNames.get(column.getColumnName());
					
					if (columnName != null) {

						result = result + "<td align = center>"
								+ row.getValueAsString(column.getColumnName()) + "</td>";
					}
				}
				
			} catch (Exception e) {
				result = result + "</tr><tr><td>" + e.getMessage() + "</td>";
			}
			
			if (useAndAndDelete) {
				result = result
						+ "<td align = center><a href=\"editRecord.jsp?nume_tabela="
						+ listID + "&record_id=" + row.getInteger(1)
						+ "\">EDITARE</a></td>";
				
				result = result
						+ "<td align = center><a href=\"deletedRecord.jsp?nume_tabela="
						+ listID + "&record_id=" + row.getInteger(1)
						+ "\">STERGERE</a></td>";
				
				result = result + "<td align = right>"
						+ "<input type=\"checkbox\" name=\"" + listID + "\" value=\"" + row.getInteger(1)
						+ "\" /></td>";
			}

			result = result + "</tr>";
			
			nRow++;
		}
		
		result = result + "</TABLE>";
		
		return result;
	}	
}
