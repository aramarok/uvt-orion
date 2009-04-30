package com.uvt.team08.orion.domain.model;
import java.util.List;

public abstract class FieldFilter 
{
	private String numeField, nume_de_scena;
	private String valoareField1, valoareField2;
	private String extraStuff;
	private List<FieldFilter> container;
	
	private int poz_string;
	
	
	public FieldFilter()
	{
		numeField = ""; 
		valoareField1 = "";
		valoareField2 = "";
	}
	
	public FieldFilter(String numeField, String nume_de_scena, String valoareField1, String valoareField2, String extraStuff)
	{		
		this.container = null;
		this.numeField = numeField;
		this.nume_de_scena = nume_de_scena;
		this.valoareField1 = valoareField1 == null ? "" : valoareField1;
		this.valoareField2 = valoareField2 == null ? "" : valoareField2;
		this.extraStuff = extraStuff;
	}
	
	public String getNumeField() {
		return numeField;
	}

	public void setNumeField(String numeField) {
		this.numeField = numeField;
	}

	public String getValoareField1() 
	{
		return valoareField1;
	}
	
	public void setValoareField1(String valoareField1)
	{
		this.valoareField1 = valoareField1;
	}
	
	public String getValoareField2() 
	{
		return valoareField2;
	}
	
	public void setValoareField2(String valoareField2)
	{
		this.valoareField2 = valoareField2;
	}
	
	public static FieldFilter newFieldFilter(String numeField, String nume_de_scena, String valoareField1, String valoareField2, String tipField, String extraStuff)
	{
		if (tipField.compareTo(Metatable.tabelaTipString) == 0)
			return new FieldFilterString(numeField, nume_de_scena, valoareField1, valoareField2, tipField, extraStuff);
		if (tipField.compareTo(Metatable.tabelaTipIntreg) == 0)
			return new FieldFilterInt(numeField, nume_de_scena, valoareField1, valoareField2, tipField, extraStuff);
		if (tipField.compareTo(Metatable.tabelaTipDouble) == 0)
			return new FieldFilterDouble(numeField, nume_de_scena, valoareField1, valoareField2, tipField, extraStuff);
		if (tipField.compareTo(Metatable.tabelaTipDate) == 0)
			return new FieldFilterDate(numeField, nume_de_scena, valoareField1, valoareField2, tipField, extraStuff);
		return new FieldFilterString(numeField, nume_de_scena, valoareField1, valoareField2, tipField, extraStuff);
	}
	
	public void container(List<FieldFilter> container)
	{
		this.container = container;
	}
	
	public List<FieldFilter> container()
	{
		return container;
	}
	
	public String toString()
	{
		return numeField + "." + nume_de_scena;
	}
	
	
	
	public String getNumeDeScena() {
		return nume_de_scena;
	}

	public abstract String toSql(); 	
	public abstract String getInsert();
	public abstract boolean isValid();
	
	
	protected abstract boolean checkExtraStuff();
	
	protected String getExtraStuff()
	{
		return extraStuff;
	}
	
	protected void start_constraint()
	{
		poz_string = 0;
	}
	
	protected String getConstraint()
	{
		if (extraStuff == null) return null;
		while (poz_string < extraStuff.length() && 
				(extraStuff.charAt(poz_string) == ' ' || 
				 extraStuff.charAt(poz_string) == ';'))
			poz_string++;

		if (poz_string >= extraStuff.length()) return null;
		
		String actual = extraStuff.substring(poz_string);
		if (actual == null || actual.length() < 1) return null;
		
		if (actual.startsWith(getConsRange()))
		{
			int nrp = 1;
			int pfinal;
			
			for (pfinal = getConsRange().length(); nrp > 0 && pfinal < actual.length(); pfinal++)
				if (actual.charAt(pfinal) == '(') nrp++;
				else if (actual.charAt(pfinal) == ')') nrp--;
			
			if (nrp > 0)
				return null;
			
			poz_string += pfinal;
			return actual.substring(0, pfinal);
		}
		return null;
	}
	
	protected static String consRange = "Range(";
	
	protected String getConsRange()
	{
		return consRange;
	}
}
