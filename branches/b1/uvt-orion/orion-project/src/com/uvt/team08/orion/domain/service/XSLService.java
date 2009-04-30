/**
 * 
 */
package com.uvt.team08.orion.domain.service;

import java.util.List;

import com.uvt.team08.orion.other.DataTable;

/**
 * @author Ioan-Dan
 *
 */
public interface XSLService {
	
	public String createXSLWorkbookFromDataTable(String realPath, String name, List<DataTable> tables);
	
}
