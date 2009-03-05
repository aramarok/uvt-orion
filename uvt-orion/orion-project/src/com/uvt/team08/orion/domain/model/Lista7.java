package com.uvt.team08.orion.domain.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Table;

/** 
 * 
 * Lista cartilor si monografiilor publicate in edituri din tara si de litografii ale universitatilor
 * 
 */
@Entity
@Table(name = "lista7")
public class Lista7 implements Serializable {

	private static final long serialVersionUID = 1234567;

	private Integer idLista7;

	private String titlu;

	private String autorii;

	private String editura;

	private String localitatea;

	private int anulAparitiei;

	private int numarPagini;

	public Lista7() {

	}

	public Integer getIdLista7() {
		return idLista7;
	}

	public void setIdLista7(Integer idLista7) {
		this.idLista7 = idLista7;
	}

	public String getTitlu() {
		return titlu;
	}

	public void setTitlu(String titlu) {
		this.titlu = titlu;
	}

	public String getAutorii() {
		return autorii;
	}

	public void setAutorii(String autorii) {
		this.autorii = autorii;
	}

	public String getEditura() {
		return editura;
	}

	public void setEditura(String editura) {
		this.editura = editura;
	}

	public String getLocalitatea() {
		return localitatea;
	}

	public void setLocalitatea(String localitatea) {
		this.localitatea = localitatea;
	}

	public int getAnulAparitiei() {
		return anulAparitiei;
	}

	public void setAnulAparitiei(int anulAparitiei) {
		this.anulAparitiei = anulAparitiei;
	}

	public int getNumarPagini() {
		return numarPagini;
	}

	public void setNumarPagini(int numarPagini) {
		this.numarPagini = numarPagini;
	}
}