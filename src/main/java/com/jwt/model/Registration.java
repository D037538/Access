package com.jwt.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="registration")
public class Registration {
	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int r_id;
	private String r_firstname;
	private String r_lastname;
	private String r_username;
	private String r_password;
	public int getR_id() {
		return r_id;
	}
	public void setR_id(int r_id) {
		this.r_id = r_id;
	}
	public String getR_firstname() {
		return r_firstname;
	}
	public void setR_firstname(String r_firstname) {
		this.r_firstname = r_firstname;
	}
	public String getR_lastname() {
		return r_lastname;
	}
	public void setR_lastname(String r_lastname) {
		this.r_lastname = r_lastname;
	}
	public String getR_username() {
		return r_username;
	}
	public void setR_username(String r_username) {
		this.r_username = r_username;
	}
	public String getR_password() {
		return r_password;
	}
	public void setR_password(String r_password) {
		this.r_password = r_password;
	}


}
