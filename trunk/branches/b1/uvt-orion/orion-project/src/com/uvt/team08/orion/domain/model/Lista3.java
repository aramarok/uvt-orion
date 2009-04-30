package com.uvt.team08.orion.domain.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Table;

/** 
 * 
 * Articole stiintifice publicate in reviste ale universitatilor
 * 
 */
@Entity
@Table(name = "lista3")
public class Lista3 implements Serializable {

	private static final long serialVersionUID = 123;

	private Integer idLista3;
	
	private String titluArticol;
	
	private String autorii;
	
	private String denumireaRevistei;

	private int vol;

	private int nr;

	private int paginaDeInceput;

	private int paginaDeSfarsit;
	
	private int anul;
	
	
	public Lista3(){
		/*this.vol = 0;
		this.nr = 0;
		this.paginaDeInceput = 0;
		this.paginaDeSfarsit = 0;
		this.anul = 0;*/
	}

	public String getTitluArticol() {
		return titluArticol;
	}


	public void setTitluArticol(String titluArticol) {
		this.titluArticol = titluArticol;
	}


	public String getAutorii() {
		return autorii;
	}


	public void setAutorii(String autorii) {
		this.autorii = autorii;
	}


	public String getDenumireaRevistei() {
		return denumireaRevistei;
	}


	public void setDenumireaRevistei(String denumireaRevistei) {
		this.denumireaRevistei = denumireaRevistei;
	}


	public int getVol() {
		return vol;
	}


	public void setVol(int vol) {
		this.vol = vol;
	}


	public int getNr() {
		return nr;
	}


	public void setNr(int nr) {
		this.nr = nr;
	}


	public int getPaginaDeInceput() {
		return paginaDeInceput;
	}


	public void setPaginaDeInceput(int paginaDeInceput) {
		this.paginaDeInceput = paginaDeInceput;
	}


	public int getPaginaDeSfarsit() {
		return paginaDeSfarsit;
	}


	public void setPaginaDeSfarsit(int paginaDeSfarsit) {
		this.paginaDeSfarsit = paginaDeSfarsit;
	}


	public int getAnul() {
		return anul;
	}


	public void setAnul(int anul) {
		this.anul = anul;
	}

	public Integer getIdLista3() {
		return idLista3;
	}

	public void setIdLista3(Integer idLista3) {
		this.idLista3 = idLista3;
	}
}