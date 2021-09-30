package com.customer;

public abstract class  ExternalUser extends User{
	 protected String NIC;
	 protected String phoneNo;
	 protected String streetName;
	 protected String city;
	 protected String homeNo;
   public ExternalUser(int id, String firstName, String lastName, String email, String propic, String userName,
			String password,String NIC,String phoneNo,String streetName,
			String city,String homeNo) {
		super(id, firstName, lastName, email, propic, userName, password);
		// TODO Auto-generated constructor stub
	this.NIC=NIC;
	this.phoneNo=phoneNo;
	this.streetName=streetName;
	this.city=city;
	this.homeNo=homeNo;
   
   }
public String getNIC() {
	return NIC;
}
public String getPhoneNo() {
	return phoneNo;
}
public String getStreetName() {
	return streetName;
}
public String getCity() {
	return city;
}
public String getHomeNo() {
	return homeNo;
}
public void setNIC(String nIC) {
	NIC = nIC;
}
public void setPhoneNo(String phoneNo) {
	this.phoneNo = phoneNo;
}
public void setStreetName(String streetName) {
	this.streetName = streetName;
}
public void setCity(String city) {
	this.city = city;
}
public void setHomeNo(String homeNo) {
	this.homeNo = homeNo;
}
  

}
