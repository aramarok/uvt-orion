package com.uvt.team08.orion.domain.model;

import java.util.ArrayList;
import java.util.List;

public enum TipGrant {
	INTERN,
	INTERNATIONAL;
	
	public static List<String> getTipGrantsAsList(){
		List<String> returnList = new ArrayList<String>();
		TipGrant[] t = TipGrant.values();
		for(int i=0;i<t.length;i++){
			returnList.add(t[i].name());
		}
		return returnList;
	}
	
	public static TipGrant getTipGrantByName(String s){
		if (s != null){
			TipGrant[] t = TipGrant.values();
			for(int i=0;i<t.length;i++){
				if (t[i].name().compareTo(s)==0){
					return t[i];
				}
			}
		}
		return null;
	}
}
