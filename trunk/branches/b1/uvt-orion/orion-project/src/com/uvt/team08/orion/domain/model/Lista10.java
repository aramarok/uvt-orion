package com.uvt.team08.orion.domain.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Table;

/** 
 * 
 * Lista granturilor si contractelor de cercetare
 * 
 */
@Entity
@Table(name = "lista10")
public class Lista10 implements Serializable {

	private static final long serialVersionUID = 1234567890;

	private Integer idLista10;

	private TipGrant tipGrant;

	private int perioada;

	private Double suma;
	
	private String directorProgram;

	public Lista10() {

	}

	public Integer getIdLista10() {
		return idLista10;
	}

	public void setIdLista10(Integer idLista10) {
		this.idLista10 = idLista10;
	}

	public TipGrant getTipGrant() {
		return tipGrant;
	}

	public void setTipGrant(TipGrant tipGrant) {
		this.tipGrant = tipGrant;
	}

	public int getPerioada() {
		return perioada;
	}

	public void setPerioada(int perioada) {
		this.perioada = perioada;
	}

	public Double getSuma() {
		return suma;
	}

	public void setSuma(Double suma) {
		this.suma = suma;
	}

	public String getDirectorProgram() {
		return directorProgram;
	}

	public void setDirectorProgram(String directorProgram) {
		this.directorProgram = directorProgram;
	}

}