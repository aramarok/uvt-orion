/**
 * 
 */
package com.uvt.team08.orion.other;

import java.util.HashMap;

/**
 * @author Ioan-Dan
 *
 */
public class DataRow {
	
	private HashMap<Integer, Object> elementsList = new HashMap<Integer, Object>();
	private HashMap<String, Object> elementsMap = new HashMap<String, Object>();
	
	public void setEement(int index, String columnId, Object obj) {
		elementsList.put(index, obj);
		elementsMap.put(columnId, obj);
	}
	
	public Object getElementAt(int index) {
		Object obj = null;
		
		try {
			obj = elementsList.get(index);
		} catch (RuntimeException e) {
			// Dummy.
		}
		
		return obj;
	}
	
	public Object getElementByColumnId(String columnId) {
		Object obj = null;
		
		try {
			obj = elementsMap.get(columnId);
		} catch (RuntimeException e) {
			// Dummy.
		}
		
		return obj;
	}
	
	public String getString(int index) {
		String result = null;
		
		try {
			result = (String) getElementAt(index);
		} catch (RuntimeException e) {
			// Dummy.
		}
		
		return result;
	}
	
	public String getString(String columnName) {
		String result = null;
		
		try {
			result = (String) getElementByColumnId(columnName);
		} catch (RuntimeException e) {
			// Dummy.
		}
		
		return result;
	}
	
	public String getValueAsString(String columnName) {
		String result = null;
		
		try {
			result = getElementByColumnId(columnName).toString();
		} catch (RuntimeException e) {
			// Dummy.
		}
		
		return result;
	}
	
	public String getValueAsString(int index) {
		String result = null;
		
		try {
			result = getElementAt(index).toString();
		} catch (RuntimeException e) {
			// Dummy.
		}
		
		return result;
	}
	
	public Integer getInteger(int index) {
		Integer result = null;
		
		try {
			result = (Integer) elementsList.get(index);
		} catch (RuntimeException e) {
			// Dummy.
		}
		
		return result;
	}
	
	public Integer getInteger(String columnName) {
		Integer result = null;
		
		try {
			result = (Integer) elementsMap.get(columnName);
		} catch (RuntimeException e) {
			// Dummy.
		}
		
		return result;
	}
	
	public Double getDouble(String columnName) {
		Double result = null;
		
		try {
			result = (Double) elementsMap.get(columnName);
		} catch (RuntimeException e) {
			// Dummy.
		}
		
		return result;
	}
	
}
