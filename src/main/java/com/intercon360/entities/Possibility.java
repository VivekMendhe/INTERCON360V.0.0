package com.intercon360.entities;

public class Possibility {

	private String potential_name;
	private String account_name;

	public Possibility() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Possibility(String potential_name, String account_name) {
		super();
		this.potential_name = potential_name;
		this.account_name = account_name;
	}

	public String getPotential_name() {
		return potential_name;
	}

	public void setPotential_name(String potential_name) {
		this.potential_name = potential_name;
	}

	public String getAccount_name() {
		return account_name;
	}

	public void setAccount_name(String account_name) {
		this.account_name = account_name;
	}
}
