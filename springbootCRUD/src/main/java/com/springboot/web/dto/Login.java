package com.springboot.web.dto;

import org.hibernate.validator.constraints.NotEmpty;

public class Login {
	@NotEmpty
	private String name;
	@NotEmpty
	private String password;

	public Login() {
		// TODO Auto-generated constructor stub
	}

	public Login(String name, String password) {
		this.name = name;
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}
