package com.uvt.team08.orion.domain.model;

public class FieldFilterString extends FieldFilter 
{
	public FieldFilterString(String numeField, String nume_de_scena, String valoareField1, String valoareField2, String tipField, String extraStuff)
	{
		super(numeField, nume_de_scena, valoareField1, valoareField2, extraStuff);
	}

	@Override
	public String toSql() 
	{
		String sql = "";
		String val = getValoareField1();
		
		if (val.length() > 0)
		{
			sql += getNumeField() + " like \"%" + val + "%\" ";
		}
		// TODO Auto-generated method stub
		return sql;
	}

	public String getInsert()
	{
		if (isValid())
		{
			String val = getValoareField1();
	
			if (val.length() == 0)
				return "";
			else return "\"" + val + "\"";
		}
		return "";
	}

	public boolean isValid()
	{
		return checkExtraStuff();
	}

	protected boolean checkExtraStuff()
	{
		return true;
	}
}