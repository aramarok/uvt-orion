package com.uvt.team08.orion.domain.model;
import java.io.Serializable;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "users")
public class User implements Serializable{
	
	private static final String querySelectAllUsers = "SELECT user from User as user ORDER BY user.lastName ASC";
	private static final String querySelectUserByEmailAddress = "SELECT user from User as user where user.emailAddress = :emailAddress";
	
	private static final long serialVersionUID = 123456;
	
	private Integer userId;
	
	private String emailAddress;
	
	private String password;
	
	private Right userRight;
	
	private Status userStatus;
	
	private String firstName;
	
	private String lastName;
	
	private Date birthDate;
	
	private FunctieDidactica functieDidactica;
	
	private boolean doctor;
	
	private int doctorDin;
	
	private boolean conducatorDoctorat;
	
	private int doctoranziStagiuZi;
	
	private int doctoranziStagiuFrecventaRedusa;
	
	private Level level;
	
	private boolean consultant;
	
	private Set<Lista1> lista1 = new HashSet<Lista1>();
	
	private Set<Lista2> lista2 = new HashSet<Lista2>();
	
	private Set<Lista3> lista3 = new HashSet<Lista3>();
	
	private Set<Lista4> lista4 = new HashSet<Lista4>();
	
	private Set<Lista5> lista5 = new HashSet<Lista5>();
	
	private Set<Lista6> lista6 = new HashSet<Lista6>();
	
	private Set<Lista7> lista7 = new HashSet<Lista7>();
	
	private Set<Lista8> lista8 = new HashSet<Lista8>();
	
	private Set<Lista9> lista9 = new HashSet<Lista9>();
	
	private Set<Lista10> lista10 = new HashSet<Lista10>();
	
	private String cvLocation = "";
	
	
	public User(){
	}
	
	/**
	 * 
	 * @param emailAddress
	 * @param password
	 * @param userRight
	 */
	public User(String emailAddress, String password, Right userRight){
		this.emailAddress = emailAddress;
		this.password = password;
		this.userRight = userRight;
		
		this.userStatus = Status.ACTIVE;
		this.doctor = false;
		this.conducatorDoctorat = false;
		this.doctoranziStagiuZi = 0;
		this.doctoranziStagiuFrecventaRedusa = 0;
		this.doctorDin = 0;
		this.consultant = false;
	}

	public String toString(){
		return userId + " | " + emailAddress + " | " + userRight.toString(); 
	}

	public String getName(){
		return lastName + " " + firstName;
	}
	
	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmailAddress() {
		return emailAddress;
	}

	public void setEmailAddress(String emailAddress) {
		this.emailAddress = emailAddress;
	}

	public Date getBirthDate() {
		return birthDate;
	}

	public void setBirthDate(Date birthDate) {
		this.birthDate = birthDate;
	}

	public boolean isDoctor() {
		return doctor;
	}

	public void setDoctor(boolean doctor) {
		this.doctor = doctor;
	}
	
	public boolean isConducatorDoctorat() {
		return conducatorDoctorat;
	}

	public void setConducatorDoctorat(boolean conducatorDoctorat) {
		this.conducatorDoctorat = conducatorDoctorat;
	}

	public int getDoctoranziStagiuZi() {
		return doctoranziStagiuZi;
	}

	public void setDoctoranziStagiuZi(int doctoranziStagiuZi) {
		this.doctoranziStagiuZi = doctoranziStagiuZi;
	}

	public int getDoctoranziStagiuFrecventaRedusa() {
		return doctoranziStagiuFrecventaRedusa;
	}

	public void setDoctoranziStagiuFrecventaRedusa(
			int doctoranziStagiuFrecventaRedusa) {
		this.doctoranziStagiuFrecventaRedusa = doctoranziStagiuFrecventaRedusa;
	}

	public FunctieDidactica getFunctieDidactica() {
		return functieDidactica;
	}

	public void setFunctieDidactica(FunctieDidactica functieDidactica) {
		this.functieDidactica = functieDidactica;
	}

	public Right getUserRight() {
		return userRight;
	}

	public void setUserRight(Right userRight) {
		this.userRight = userRight;
	}

	public static String getQuerySelectAllUsers() {
		return querySelectAllUsers;
	}
	
	public Status getUserStatus() {
		return userStatus;
	}

	public void setUserStatus(Status userStatus) {
		this.userStatus = userStatus;
	}

	public Set<Lista1> getLista1() {
		return lista1;
	}

	public void setLista1(Set<Lista1> lista1) {
		this.lista1 = lista1;
	}

	public Set<Lista2> getLista2() {
		return lista2;
	}

	public void setLista2(Set<Lista2> lista2) {
		this.lista2 = lista2;
	}

	public Set<Lista3> getLista3() {
		return lista3;
	}

	public void setLista3(Set<Lista3> lista3) {
		this.lista3 = lista3;
	}

	public Set<Lista4> getLista4() {
		return lista4;
	}

	public void setLista4(Set<Lista4> lista4) {
		this.lista4 = lista4;
	}

	public Set<Lista5> getLista5() {
		return lista5;
	}

	public void setLista5(Set<Lista5> lista5) {
		this.lista5 = lista5;
	}

	public Set<Lista6> getLista6() {
		return lista6;
	}

	public void setLista6(Set<Lista6> lista6) {
		this.lista6 = lista6;
	}

	public Set<Lista7> getLista7() {
		return lista7;
	}

	public void setLista7(Set<Lista7> lista7) {
		this.lista7 = lista7;
	}

	public Set<Lista8> getLista8() {
		return lista8;
	}

	public void setLista8(Set<Lista8> lista8) {
		this.lista8 = lista8;
	}

	public Set<Lista9> getLista9() {
		return lista9;
	}

	public void setLista9(Set<Lista9> lista9) {
		this.lista9 = lista9;
	}

	public Set<Lista10> getLista10() {
		return lista10;
	}

	public void setLista10(Set<Lista10> lista10) {
		this.lista10 = lista10;
	}

	public int getDoctorDin() {
		return doctorDin;
	}

	public void setDoctorDin(int doctorDin) {
		this.doctorDin = doctorDin;
	}

	public static String getQuerySelectUserByEmailAddress() {
		return querySelectUserByEmailAddress;
	}

	public Level getLevel() {
		return level;
	}

	public void setLevel(Level level) {
		this.level = level;
	}

	public boolean isConsultant() {
		return consultant;
	}

	public void setConsultant(boolean consultant) {
		this.consultant = consultant;
	}

	public String getCvLocation() {
		return cvLocation;
	}

	public void setCvLocation(String cvLocation) {
		this.cvLocation = cvLocation;
	}
}