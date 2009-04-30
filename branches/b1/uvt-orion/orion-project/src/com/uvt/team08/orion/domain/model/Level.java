package com.uvt.team08.orion.domain.model;

import java.util.ArrayList;
import java.util.List;

public enum Level {
	TITULAR,
	SUPLINITOR,
	ASOCIAT;
	
	public static List<String> getLevelAsList(){
		List<String> returnList = new ArrayList<String>();
		Level[] f = Level.values();
		for(int i=0;i<f.length;i++){
			returnList.add(f[i].name());
		}
		return returnList;
	}
	
	public static Level getLevelByName(String s){
		if (s != null){
			Level[] t = Level.values();
			for(int i=0;i<t.length;i++){
				if (t[i].name().compareTo(s)==0){
					return t[i];
				}
			}
		}
		return null;
	}
}