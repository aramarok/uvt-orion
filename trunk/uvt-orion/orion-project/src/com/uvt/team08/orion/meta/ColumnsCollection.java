/**
 * 
 */
package com.uvt.team08.orion.meta;

import java.util.Hashtable;
import java.util.List;

import com.uvt.team08.orion.domain.model.Metatable;

/**
 * @author Ioan-Dan
 *
 */
public class ColumnsCollection {
	private Hashtable<String, Metatable> columns = new Hashtable<String, Metatable>(); 
	
	public ColumnsCollection(List<Metatable> columns) {
		for (Metatable mt : columns) {
			this.columns.put(mt.getCampTabela(), mt);
		}
	}
	
	public Metatable getColumnByCampTabela(String campTabela) {
		return columns.get(campTabela);
	}
}
