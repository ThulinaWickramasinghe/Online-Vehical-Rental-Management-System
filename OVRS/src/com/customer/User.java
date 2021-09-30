package com.customer;

public abstract class User {
    protected int userID;
    protected String firstName;
    protected String lastName;
    protected String email;
    protected String propic;
    protected String userName;
    protected String password;
    
    public User(int id, String firstName,String lastName, String email, String propic, 
    		String userName, String password) {
	this. userID = id;
	this.firstName = firstName;
	this.lastName=lastName;
	this.email = email;
	this.propic = propic;
	this.userName = userName;
	this.password = password;
    }

	public int getUserID() {
		return userID;
	}

	public String getFirstName() {
		return firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public String getEmail() {
		return email;
	}

	public String getPropic() {
		return propic;
	}

	public String getUserName() {
		return userName;
	}

	public String getPassword() {
		return password;
	}

	public void setUserID(int userID) {
		this.userID = userID;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setPropic(String propic) {
		this.propic = propic;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public void setPassword(String password) {
		this.password = password;
	}

   
}
