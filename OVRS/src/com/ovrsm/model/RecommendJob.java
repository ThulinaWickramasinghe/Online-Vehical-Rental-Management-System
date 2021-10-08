package com.ovrsm.model;

public class RecommendJob {
	
	private Vehicle vehicle;
    private int empID;
    private Reservation reservation;
    private int driverID;
    
    private String dateTime;
    private int driverAccept;
    
      public RecommendJob(Vehicle vehicle, int empmanager, Reservation reservation, int driverID,
			String dateTime, int driverAccept) {
	
		this.vehicle = vehicle;
		this.empID = empmanager;
		this.reservation = reservation;
		this.driverID = driverID;
		this.dateTime = dateTime;
		this.driverAccept = driverAccept;
	}
	public Vehicle getVehicle() {
		return vehicle;
	}
	
	public Reservation getReservation() {
		return reservation;
	}
	public int getDriverID() {
		return driverID;
	}
	public String getDateTime() {
		return dateTime;
	}
	public int getDriverAccept() {
		return driverAccept;
	}
	public void setVehicle(Vehicle vehicle) {
		this.vehicle = vehicle;
	}
	
	public void setReservation(Reservation reservation) {
		this.reservation = reservation;
	}
	public void setDriverID(int driverID) {
		this.driverID = driverID;
	}
	public void setDateTime(String dateTime) {
		this.dateTime = dateTime;
	}
	public void setDriverAccept(int driverAccept) {
		this.driverAccept = driverAccept;
	}
	public int getEmpID() {
		return empID;
	}
	public void setEmpID(int empID) {
		this.empID = empID;
	}

   
	
      
}
