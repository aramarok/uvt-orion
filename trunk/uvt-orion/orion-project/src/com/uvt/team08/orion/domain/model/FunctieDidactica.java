package com.uvt.team08.orion.domain.model;

import java.util.ArrayList;
import java.util.List;

public enum FunctieDidactica {
	PREPARATOR,
	ASISTENT,
	LECTOR,
	CONFERENTIAR,
	PROFESOR;
	
	public static List<String> getFunctieDidacticaAsList(){
		List<String> returnList = new ArrayList<String>();
		FunctieDidactica[] f = FunctieDidactica.values();
		for(int i=0;i<f.length;i++){
			returnList.add(f[i].name());
		}
		return returnList;
	}
	
	public static FunctieDidactica getFunctieDidacticaByName(String s){
		if (s != null){
			FunctieDidactica[] t = FunctieDidactica.values();
			for(int i=0;i<t.length;i++){
				if (t[i].name().compareTo(s)==0){
					return t[i];
				}
			}
		}
		return null;
	}
}
