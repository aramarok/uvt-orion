package com.uvt.team08.orion.domain.model;

public class FieldFilterDouble extends FieldFilter 
{
	public FieldFilterDouble(String numeField, String nume_de_scena, String valoareField1, String valoareField2, String tipField, String extraStuff)
	{
		super(numeField, nume_de_scena, valoareField1, valoareField2, extraStuff);
	}
	
	
	public String toSql()
	{
		String sql = "";
		String val1 = getValoareField1();
		String val2 = getValoareField2();
		boolean non_void_field;
		
		if (val1.length() + val2.length() > 0)
		{
			non_void_field = false;
			
			if (val1.length() > 0)
			{
				sql += getNumeField() + " >= " + val1 + " ";
				non_void_field = true;
			}
			if (val2.length() > 0)
			{
				if (non_void_field) sql += "and ";
				sql += getNumeField() + " <= " + val2 + " ";
				non_void_field = true;
			}
		}

		return sql;
	}
	
	public String getInsert()
	{		
		if (isValid())
			return "" + getValoareField1();
		else return "";
	}

	public boolean isValid()
	{
		if (getValoareField1().length() < 1) return true;
		try 
		{
			Double.parseDouble(getValoareField1());
			return checkExtraStuff();
		}
		catch (IllegalArgumentException e)
		{			
			return false;
		}
	}
	
	protected double get_constraint(String constr) throws Exception
	{
		if (constr.startsWith("var("))
		{			
			int i;
			
			if (container() == null)
				throw new Exception("noconstraint");
			
			for (i = 4; i < constr.length() && constr.charAt(i) != ')'; i++)
				;
			
			if (i == constr.length())
				throw new Exception("altrue");
			
			String nume_camp = constr.substring(4, i);
			
			for (FieldFilter f : container())
				if (f.getNumeField().equals(nume_camp))
				{
					return Double.parseDouble(f.getValoareField1());
				}
			throw new Exception("alfalse");	
		}
		else if (constr.startsWith("null"))
		{
			throw new Exception("noconstraint");
		}
		else 
			{
				return Double.parseDouble(constr);
			}
	}
	
	protected boolean checkExtraStuff()
	{
		String cons;
		
		start_constraint();
		while ((cons = getConstraint()) != null)
		{			
			if (cons.startsWith(this.getConsRange()))
			{
				double d = Double.parseDouble(getValoareField1());
				double dc1 = d, dc2 = d;
				int poz1, poz2;
				
				String cond1, cond2;
				
				try
				{				
					poz1 = getConsRange().length();
					poz2 = cons.indexOf(',', poz1) + 1;				
	
					cond1 = cons.substring(poz1, poz2 - 1).trim();
					cond2 = cons.substring(poz2, cons.indexOf(')', poz2)).trim();
				}
				catch(Exception e)
				{
					return true;
				}
				
				try
				{
					dc1 = get_constraint(cond1);
				}
				catch (Exception e)
				{
					if (e.getMessage().equals("altrue"))
						return true;
					else if (e.getMessage().equals("noconstraint"))
					{
						dc1 = d;
					}
					else if (e.getMessage().equals("alfalse"))
						return false;
					else 
						{
							if (true) return false;
							return true;
						}
				}
				
				dc1 = Double.parseDouble(cond1);

				if (d < dc1) return false;
				
				try
				{
					dc2 = get_constraint(cond2);
				}
				catch (Exception e)
				{
					if (e.getMessage().equals("altrue"))
						return true;
					else if (e.getMessage().equals("noconstraint"))
					{
						dc2 = d;
					}
					else if (e.getMessage().equals("alfalse"))
						return false;
					else return true;
				}
				
				dc2 = Double.parseDouble(cond2);
				
				if (d > dc2) return false;
			}
			
		}	
		
		return true;
	}				
}
