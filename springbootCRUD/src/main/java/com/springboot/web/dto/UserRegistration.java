package com.springboot.web.dto;

import java.util.Date;

public class UserRegistration {
	private String firstName;
	private String lastName;
	private String login;
	private String password;
	private Date dob;
	private String mobileNo;
	private String gender;

	public UserRegistration() {
		// TODO Auto-generated constructor stub
	}

	public UserRegistration(String firstName, String lastName, String login, String password, Date dob, String mobileNo,
			String gender) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.login = login;
		this.password = password;
		this.dob = dob;
		this.mobileNo = mobileNo;
		this.gender = gender;
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

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Date getDob() {
		return dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}

	public String getMobileNo() {
		return mobileNo;
	}

	public void setMobileNo(String mobileNo) {
		this.mobileNo = mobileNo;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

}
