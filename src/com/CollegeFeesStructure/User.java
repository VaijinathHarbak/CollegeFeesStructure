package com.CollegeFeesStructure;

public class User {
	
	private String userName;
	private String firstName;
	private String lastName;
	private String emailId;
	private String password;
	private String phNo;
	
	public User(){
		
		
	}
	
	public void setUserName(String username) {
		this.userName = username;
	}
	public String getUserName() {
		return userName;
	}
	public void setfirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getfirstName() {
		return firstName;
	}
	
	public void setlastName(String lastName) {
		this.lastName = lastName;
	}
	public String getlastName() {
		return lastName;
	}
	
	public void setemailId(String emailId) {
		this.emailId = emailId;
	}
	public String getemailId() {
		return emailId;
	}
	
	public void setpassword(String password) {
		this.password = password;
	}
	public String getpassword() {
		return password;
	}
	
	public void setphNo(String phNo) {
		this.phNo = phNo;
	}
	public String getphNo() {
		return phNo;
	}
	
}
