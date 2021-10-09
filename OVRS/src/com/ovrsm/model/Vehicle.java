package com.ovrsm.model;

public class Vehicle {
    private int owneruserID;
    private int vehicleID;
    private String fuel_type;
    private String license_no;
    private String vehi_type;
    private String color;
    private String body_type;
    private String model;
    private int noOfPeeps;
    private String edition;
    private double pricePerKm;
    private String specialNote;
    private String brand;
    private String registrationNo;
    private String vehiclePic; 

	private String transmission;
    
    

    public Vehicle(int owneruserID, int vehicleID, String fuel_type, String license_no, String vehi_type, String color,
			String body_type, String model, int noOfPeeps, String edition, double pricePerKm, String specialNote,
			String brand, String registrationNo,String transmission,String vehiclePic) {
	
		this.owneruserID = owneruserID;
		this.vehicleID = vehicleID;
		this.fuel_type = fuel_type;
		this.license_no = license_no;
		this.vehi_type = vehi_type;
		this.color = color;
		this.body_type = body_type;
		this.model = model;
		this.noOfPeeps = noOfPeeps;
		this.edition = edition;
		this.pricePerKm = pricePerKm;
		this.specialNote = specialNote;
		this.brand = brand;
		this.registrationNo = registrationNo;
		this.vehiclePic = vehiclePic;
		this.transmission = transmission;
	}


	public int getOwneruserID() {
		return owneruserID;
	}


	public int getVehicleID() {
		return vehicleID;
	}


	public String getFuel_type() {
		return fuel_type;
	}


	public String getLicense_no() {
		return license_no;
	}


	public String getVehi_type() {
		return vehi_type;
	}


	public String getColor() {
		return color;
	}


	public String getBody_type() {
		return body_type;
	}


	public String getModel() {
		return model;
	}


	public int getNoOfPeeps() {
		return noOfPeeps;
	}


	public String getEdition() {
		return edition;
	}


	public double getPricePerKm() {
		return pricePerKm;
	}


	public String getSpecialNote() {
		return specialNote;
	}


	public String getBrand() {
		return brand;
	}


	public String getRegistrationNo() {
		return registrationNo;
	}


	public String getVehiclePic() {
		return vehiclePic;
	}


	public String getTransmission() {
		return transmission;
	}


	public void setOwneruserID(int owneruserID) {
		this.owneruserID = owneruserID;
	}


	public void setVehicleID(int vehicleID) {
		this.vehicleID = vehicleID;
	}


	public void setFuel_type(String fuel_type) {
		this.fuel_type = fuel_type;
	}


	public void setLicense_no(String license_no) {
		this.license_no = license_no;
	}


	public void setVehi_type(String vehi_type) {
		this.vehi_type = vehi_type;
	}


	public void setColor(String color) {
		this.color = color;
	}


	public void setBody_type(String body_type) {
		this.body_type = body_type;
	}


	public void setModel(String model) {
		this.model = model;
	}


	public void setNoOfPeeps(int noOfPeeps) {
		this.noOfPeeps = noOfPeeps;
	}


	public void setEdition(String edition) {
		this.edition = edition;
	}


	public void setPricePerKm(double pricePerKm) {
		this.pricePerKm = pricePerKm;
	}


	public void setSpecialNote(String specialNote) {
		this.specialNote = specialNote;
	}


	public void setBrand(String brand) {
		this.brand = brand;
	}


	public void setRegistrationNo(String registrationNo) {
		this.registrationNo = registrationNo;
	}


	public void setVehiclePic(String vehiclePic) {
		this.vehiclePic = vehiclePic;
	}


	public void setTransmission(String transmission) {
		this.transmission = transmission;
	}
	public String getDetails() {
		String str=this.registrationNo +"\n"+this.vehiclePic+"\n"
	+"\n"+this.transmission ;
		return str;
	}


}
