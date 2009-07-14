/**
 * 
 */
package com.uvt.team08.orion.domain.service;

import java.io.File;
import java.io.IOException;
import java.util.Hashtable;
import java.util.List;
import java.util.Random;

import jxl.CellView;
import jxl.Workbook;
import jxl.format.Colour;
import jxl.write.Label;
import jxl.write.Number;
import jxl.write.WritableCellFormat;
import jxl.write.WritableFont;
import jxl.write.WritableSheet;
import jxl.write.WritableWorkbook;

import org.apache.log4j.Logger;

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
public class XSLServiceBean implements XSLService {
	
	private Logger log = Logger.getLogger(XSLService.class);
	
	private WritableSheet getXLSSheetFromDataTableS(DataTable table, WritableWorkbook workbook) {
		String sheetName = Tables.getTableNameByID(table.getName());
		sheetName = sheetName.replace('/', ' ');
		WritableSheet sheet = workbook.createSheet(sheetName, 0);
		
		List<Metatable> metatable = WebUtil.getGUIService().getMetaTableResultSet(table.getName());
		Hashtable<String, String> columNames = new Hashtable<String, String>();
		Hashtable<String, String> columnTypes = new Hashtable<String, String>();
		
		try {
		    /* Format the Font */
		    WritableFont wf = new WritableFont(WritableFont.ARIAL, 15, WritableFont.BOLD);
		    wf.setColour(Colour.INDIGO);
		    WritableCellFormat cf = new WritableCellFormat(wf);
		    
		    sheet.mergeCells(1, 1, table.getNumCols(), 1);
		    
			Label label1 = new Label(1, 1, Tables.getTableNameByID(table.getName()));
			label1.setCellFormat(cf);
			sheet.addCell(label1);
			
			if (metatable.size() > 0) 
			{
				for (Metatable m : metatable) {
					String key = m.getCampTabela();
					String value = m.getCampVizual();
					String tvalue = m.getTip();
					
					if (key != null && value != null) {
						columNames.put(key, value);
						columnTypes.put(key, tvalue);
					}
				}
			}
			
			int colPos = 1;
			int rowPos = 4;
			
			for (DataColumn column : table.getColumns()) {
				String columnName = columNames.get(column.getColumnName());
				
				if (columnName != null) {
				    /* Format the Font */
				    WritableFont wf2 = new WritableFont(WritableFont.ARIAL, 11, WritableFont.BOLD);
				    wf2.setColour(Colour.LAVENDER);
				    WritableCellFormat cf2 = new WritableCellFormat(wf2);
				    
				    CellView cv = new CellView();
					cv.setAutosize(true);
					
					sheet.setColumnView(colPos, cv);
					
					Label label = new Label(colPos++, rowPos, columnName);
					label.setCellFormat(cf2);
					
					sheet.addCell(label);					
				}
			}
			
			colPos = 1;
			rowPos = 6;
			
			for (DataRow row : table.getRows()) {
				colPos = 1;
				
				for (DataColumn column : table.getColumns()) {
				    /* Format the Font */
				    WritableFont wf3 = new WritableFont(WritableFont.ARIAL, 11, WritableFont.NO_BOLD);
				    wf3.setColour(Colour.BLACK);
				    WritableCellFormat cf3 = new WritableCellFormat(wf3);
					
					String columnName = columNames.get(column.getColumnName());
					String columnType = columnTypes.get(column.getColumnName());

					if (columnName != null) {
						if (columnType.equals("int") || columnType.equals("bigint")) {
							Integer val = row.getInteger(column.getColumnName());
							
							if (val != null) {
								Number nr = new Number(colPos++, rowPos, val.doubleValue());
								nr.setCellFormat(cf3);
								sheet.addCell(nr);
							}
						} else if (columnType.equalsIgnoreCase("double")) {
							Double val = row.getDouble(column.getColumnName());
							
							if (val != null) {
								Number nr = new Number(colPos++, rowPos, val.doubleValue());
								nr.setCellFormat(cf3);
								sheet.addCell(nr);
							}
						} else {
							Label label = new Label(colPos++, rowPos, row.getValueAsString(column.getColumnName()));
							label.setCellFormat(cf3);
							sheet.addCell(label);
						}
					}
				}
				
				rowPos++;
			}
		} catch (Exception e) {
			try {
				sheet.addCell(new Label(10, 10, "ERROR: " + new GUIServiceBean().getExceptionDetails(e)));
			} catch (Exception ee) {
				// Dummy.
			}
		}
				
		return sheet;
	}
	
	public String createXSLWorkbookFromDataTable(String realPath, String name, List<DataTable> tables) {
		String jump = "_" + Math.abs(new Random().nextInt());
		
		String path = realPath + File.separator + "didave" +File.separator +  "out" + jump + ".xls";
		String path2 = "out" + jump + ".xls";
		
		if (name != null && name.length() > 0) {
			path = realPath + File.separator + "didave" + File.separator + name + ".xls";
			path2 = name + ".xls";
		}
		
		File f = new File(path);
		
		try {
			f.createNewFile();
		} catch (IOException e1) {
			e1.printStackTrace();
		}
		
		try {
			WritableWorkbook workbook = Workbook.createWorkbook(new File(path));
			
			log.info("XLS MAKE : WORKBOOK FROM TABLES : TABLES.COUNT -> " + tables.size());
			
			for (DataTable dataTable : tables) {
				log.info("XLS MAKE : SHEET FROM TABLE -> " + dataTable.getName());
				
				getXLSSheetFromDataTableS(dataTable, workbook);
			}
			
			workbook.write();
			workbook.close();
			
		} catch (Exception e) {
			return e.getMessage();
		}
		
		return path2;
	}
	
}
