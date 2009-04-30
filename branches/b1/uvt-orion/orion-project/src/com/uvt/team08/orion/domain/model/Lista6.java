package com.uvt.team08.orion.domain.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Table;

/** 
 * 
 * Lista monografiilor de secialitate publicate in edituri consacrate din strainatate
 * 
 */
@Entity
@Table(name = "lista6")
public class Lista6 implements Serializable {

	private static final long serialVersionUID = 123456;

	private Integer idLista6;
	
	private String titluMonografie;
	
	private String autorii;
	
	private String editura;
	
	private String localitatea;
	
	private int anulAparitiei;
	
	private int numarPagini;
	
	
	public Lista6(){
		
	}

	public Integer getIdLista6() {
		return idLista6;
	}

	public void setIdLista6(Integer idLista6) {
		this.idLista6 = idLista6;
	}

	public String getTitluMonografie() {
		return titluMonografie;
	}
	
	public void setTitluMonografie(String titluMonografie) {
		this.titluMonografie = titluMonografie;
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