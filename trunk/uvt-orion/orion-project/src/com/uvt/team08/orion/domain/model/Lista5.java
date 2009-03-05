package com.uvt.team08.orion.domain.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Table;

/** 
 * 
 * Conferinte invitate la manifestari internationale
 * 
 */
@Entity
@Table(name = "lista5")
public class Lista5 implements Serializable {

	private static final long serialVersionUID = 12345;

	private Integer idLista5;

	private String titluConferinta;

	private String autorii;

	private String denumireaVolumului;

	private String denumireaManifestarii;

	private String loculDesfasurarii;

	private Date dataDesfasurarii;

	private int paginaDeInceput;

	private int paginaDeSfarsit;

	private int anul;

	public Lista5() {

	}

	public Integer getIdLista5() {
		return idLista5;
	}

	public void setIdLista5(Integer idLista5) {
		this.idLista5 = idLista5;
	}

	public String getTitluConferinta() {
		return titluConferinta;
	}

	public void setTitluConferinta(String titluConferinta) {
		this.titluConferinta = titluConferinta;
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

	public String getDenumireaManifestarii() {
		return denumireaManifestarii;
	}

	public void setDenumireaManifestarii(String denumireaManifestarii) {
		this.denumireaManifestarii = denumireaManifestarii;
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