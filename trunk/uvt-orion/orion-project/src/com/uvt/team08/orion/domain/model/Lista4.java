package com.uvt.team08.orion.domain.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Table;

/** 
 * 
 * Articole stiintifice publicate in volumele unor conferinte internationale
 * 
 */
@Entity
@Table(name = "lista4")
public class Lista4 implements Serializable {

	private static final long serialVersionUID = 1234;

	private Integer idLista4;
	
	private String titluArticol;
	
	private String autorii;
	
	private String denumireaVolumului;
	
	private String denumireaConferintei;
	
	private String loculDesfasurarii;
	
	private Date dataDesfasurarii;

	private int paginaDeInceput;

	private int paginaDeSfarsit;
	
	private int anul;
	
	
	public Lista4(){
		
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

	public Integer getIdLista4() {
		return idLista4;
	}

	public void setIdLista4(Integer idLista4) {
		this.idLista4 = idLista4;
	}

	public String getDenumireaVolumului() {
		return denumireaVolumului;
	}

	public void setDenumireaVolumului(String denumireaVolumului) {
		this.denumireaVolumului = denumireaVolumului;
	}

	public String getDenumireaConferintei() {
		return denumireaConferintei;
	}

	public void setDenumireaConferintei(String denumireaConferintei) {
		this.denumireaConferintei = denumireaConferintei;
	}

	public String getLoculDesfasurarii() {
		return loculDesfasurarii;
	}

	public void setLoculDesfasurarii(String loculDesfasurarii) {
		this.loculDesfasurarii = loculDesfasurarii;
	}

	public Date getDataDesfasurarii() {
		return dataDesfasurarii;
	}

	public void setDataDesfasurarii(Date dataDesfasurarii) {
		this.dataDesfasurarii = dataDesfasurarii;
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
}