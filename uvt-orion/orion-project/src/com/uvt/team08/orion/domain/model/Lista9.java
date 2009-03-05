package com.uvt.team08.orion.domain.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Table;

/** 
 * 
 * Lista cu lucrarile publicate in volumele unor conferinte nationale cu referenti si comitet de program
 * 
 */
@Entity
@Table(name = "lista9")
public class Lista9 implements Serializable {

	private static final long serialVersionUID = 123456789;

	private Integer idLista9;

	private String titluArticol;

	private String autorii;

	private String denumireaVolumului;
	
	private String denumireaConferintei;
	
	private String loculDesfasurarii;
	
	private Date dataDesfasurarii;
	
	private int paginaDeInceput;

	private int paginaDeSfarsit;

	private int anul;

	public Lista9() {

	}

	public Integer getIdLista9() {
		return idLista9;
	}

	public void setIdLista9(Integer idLista9) {
		this.idLista9 = idLista9;
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