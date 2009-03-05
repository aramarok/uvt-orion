package com.uvt.team08.orion.domain.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Table;

/** 
 * 
 * Contine date despre tabele
 * 
 */
@Entity
@Table(name = "metatable")
public class Metatable implements Serializable {

	private static final long serialVersionUID = 101;
	
	public static final String querySelectTableByTableName =
		"SELECT metatable from Metatable as metatable where " +
		"metatable.numeTabela = :numeTabela";
	public static final String querySelectAllTables = 
		"SELECT metatable from Metatable as metatable group by metatable.numeTabela";
	
	public static final String tabelaTipIntreg = "int";
	public static final String tabelaTipDouble = "double";
	public static final String tabelaTipString = "varchar";
	public static final String tabelaTipDate = "date";
	
	private Integer id;

	private String numeTabela;

	private String campTabela;

	private String campObiect;

	private String campVizual;

	private String tip;
	
	private String extraStuf;

	public Metatable() {
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getNumeTabela() {
		return numeTabela;
	}

	public void setNumeTabela(String numeTabela) {
		this.numeTabela = numeTabela;
	}

	public String getCampTabela() {
		return campTabela;
	}

	public void setCampTabela(String campTabela) {
		this.campTabela = campTabela;
	}

	public String getCampObiect() {
		return campObiect;
	}

	public void setCampObiect(String campObiect) {
		this.campObiect = campObiect;
	}

	public String getCampVizual() {
		return campVizual;
	}

	public void setCampVizual(String campVizual) {
		this.campVizual = campVizual;
	}

	public String getTip() {
		return tip;
	}

	public void setTip(String tip) {
		this.tip = tip;
	}
	
	public String getExtraStuf() {
		return extraStuf;
	}
	
	public void setExtraStuf(String extraStuf) {
		this.extraStuf = extraStuf;
	}
	
	public static long getSerialVersionUID() {
		return serialVersionUID;
	}

	public static String getQuerySelectTableByTableName() {
		return querySelectTableByTableName;
	}

	public static String getQuerySelectAllTables() {
		return querySelectAllTables;
	}

	public static String getTabelaTipIntreg() {
		return tabelaTipIntreg;
	}

	public static String getTabelaTipDouble() {
		return tabelaTipDouble;
	}

	public static String getTabelaTipString() {
		return tabelaTipString;
	}

}
