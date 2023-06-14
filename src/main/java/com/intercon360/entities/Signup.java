package com.intercon360.entities;

import java.sql.Date;

public class Signup {

	private String first_name;
	private String surname ;
	private String email;
	private String dob;
	private String password;
	private String cpassword;
	private String gender;
	public Signup(String first_name, String surname, String email, String dob, String password, String cpassword,
			String gender) {
		super();
		this.first_name = first_name;
		this.surname = surname;
		this.email = email;
		this.dob = dob;
		this.password = password;
		this.cpassword = cpassword;
		this.gender = gender;
	}
	
	

	public Signup() {
		// TODO Auto-generated constructor stub
	}



	public String getFirst_name() {
		return first_name;
	}
	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}
	public String getSurname() {
		return surname;
	}
	public void setSurname(String surname) {
		this.surname = surname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getCpassword() {
		return cpassword;
	}
	public void setCpassword(String cpassword) {
		this.cpassword = cpassword;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	
	
}
