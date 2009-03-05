package com.uvt.team08.orion.domain.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Table;

/** 
 * 
 * Lista cu lucrari citate.
 * 
 */
@Entity
@Table(name = "lista8")
public class Lista8 implements Serializable {

	private static final long serialVersionUID = 12345678;

	private Integer idLista8;

	private String autorulCareCiteaza;

	private String denumireaRevistei;
	
	private int vol;

	private int numarPagini;
	
	private int anul;

	public Lista8() {

	}

	public Integer getIdLista8() {
		return idLista8;
	}

	public void setIdLista8(Integer idLista8) {
		this.idLista8 = idLista8;
	}

	public String getAutorulCareCiteaza() {
		return autorulCareCiteaza;
	}

	public void setAutorulCareCiteaza(String autorulCareCiteaza) {
		this.autorulCareCiteaza = autorulCareCiteaza;
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

	public int getNumarPagini() {
		return numarPagini;
	}

	public void setNumarPagini(int numarPagini) {
		this.numarPagini = numarPagini;
	}

	public int getAnul() {
		return anul;
	}

	public void setAnul(int anul) {
		this.anul = anul;
	}
}