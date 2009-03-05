package com.uvt.team08.orion.domain.service;

import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.uvt.team08.orion.domain.model.Metatable;
import com.uvt.team08.orion.domain.service.hibernate.HibernateUtil;

public class TableServiceBean implements TableService
{
	private Logger log = Logger.getLogger(TableService.class);
	
	private Session session = null;
	private Transaction tx = null;
	
	public TableServiceBean(){
		//System.out.println("new instance!!");
		 //HibernateUtil.setup("create table users (.... );");
	}
	
	@SuppressWarnings("unchecked")
	public List<Metatable> getTable(String numeTabela)
	{
		log.info("Get table with name: " + numeTabela);
		session = HibernateUtil.currentSession();
		tx = session.beginTransaction();
		
		List<Metatable> table = null;
		try 
		{
			Query q = session.createQuery(Metatable.getQuerySelectTableByTableName());
			q.setParameter("numeTabela", numeTabela);
			table = q.list();
			tx.commit();

		} catch (HibernateException he) {
			if (tx != null)
				tx.rollback();
			throw he;
		}
		return table;
	}
	
	@SuppressWarnings("unchecked")
	public List<Metatable> getAllTables()
	{
		log.info("Get all tables from data base.");
		session = HibernateUtil.currentSession();
		tx = session.beginTransaction();
		
		List<Metatable> resultList = null;
		
		try {
			Query q = session.createQuery(Metatable.getQuerySelectAllTables());
			resultList = q.list();

			tx.commit();

		} catch (HibernateException he) {
			if (tx != null)
				tx.rollback();
			throw he;
		}
		return resultList;
	}
	
	public String getIDField(String tableName)
	{
		List<Metatable> campuri = new TableServiceBean().getTable(tableName);
		String camp_id = "";
		
		if (campuri.size() > 0)
		{
			int i;
			for (i = 0; i < campuri.size(); i++)
			{
				String campTabela = campuri.get(i).getCampTabela(); 
				if (campTabela.contains("id"))
				{
					if (camp_id != "")
					{
						if (campTabela.contains(tableName))
							if (camp_id.contains(tableName))
							{
								if (campTabela.contains("id_") || campTabela.contains("_id"))
									camp_id = campTabela;
							}
							else camp_id = campTabela;
					}
					else camp_id = campTabela;
				}
			}
		}
		
		return camp_id;
	}
}