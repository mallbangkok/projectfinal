package com.spring.model;

import javax.persistence.*;

@Entity
@Table(name = "login")
public class Login {
	@Id
	private String username;
	private String password;
	
	public Login() {
		super();
	}
	
	public Login(String username, String password) {
		super();
		this.username = username;
		this.password = password;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
}
