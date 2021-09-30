package com.customer;

public class Driver extends Vendor {
	
	

	
	public Driver(int id, String firstName, String lastName, String email, String propic, String userName,
			String password, String NIC, String phoneNo, String streetName, String city, String homeNo,
			String carexpertLevel, String bikeexpertLevel, String vanexpertLevel, String jeepexpertLevel,
			String driverlicense) {
		super(id, firstName, lastName, email, propic, userName, password, NIC, phoneNo, streetName, city, homeNo);
		this.carexpertLevel = carexpertLevel;
		this.bikeexpertLevel = bikeexpertLevel;
		this.vanexpertLevel = vanexpertLevel;
		this.jeepexpertLevel = jeepexpertLevel;
		this.driverlicense = driverlicense;
	}
	private String carexpertLevel;
	private String bikeexpertLevel;
	private String vanexpertLevel;
	private String jeepexpertLevel;
	private String driverlicense;
    public String getCarexpertLevel() {
		return carexpertLevel;
	}
	
	public String getVanexpertLevel() {
		return vanexpertLevel;
	}
	public String getJeepexpertLevel() {
		return jeepexpertLevel;
	}
	public String getDriverlicense() {
		return driverlicense;
	}
	public void setCarexpertLevel(String carexpertLevel) {
		this.carexpertLevel = carexpertLevel;
	}

	public void setVanexpertLevel(String vanexpertLevel) {
		this.vanexpertLevel = vanexpertLevel;
	}
	public void setJeepexpertLevel(String jeepexpertLevel) {
		this.jeepexpertLevel = jeepexpertLevel;
	}
	public void setDriverlicense(String driverlicense) {
		this.driverlicense = driverlicense;
	}
	public String getBikeexpertLevel() {
		return bikeexpertLevel;
	}
	public void setBikeexpertLevel(String bikeexpertLevel) {
		this.bikeexpertLevel = bikeexpertLevel;
	}





}
