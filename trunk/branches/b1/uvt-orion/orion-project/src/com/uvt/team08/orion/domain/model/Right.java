package com.uvt.team08.orion.domain.model;

import java.util.ArrayList;
import java.util.List;

public enum Right {
	USER,
	ADMINISTRATOR;
	
	public static List<String> getRightAsList(){
		List<String> returnList = new ArrayList<String>();
		Right[] r = Right.values();
		for(int i=0;i<r.length;i++){
			returnList.add(r[i].name());
		}
		return returnList;
	}
	
	public static Right getRightByName(String s){
		if (s != null){
			Right[] t = Right.values();
			for(int i=0;i<t.length;i++){
				if (t[i].name().compareTo(s)==0){
					return t[i];
				}
			}
		}
		return null;
	}
}
