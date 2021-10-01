package com.ovrsm.model;

public class RecommendJob {
      private int reservationID;
      private int cusID;
      private int driverID;
      private int managerID;
      private String dateTime;
      private int driverAccept;
      private int vehicleID;
	public RecommendJob(int reservationID, int cusID, int driverID, int managerID, String dateTime, int driverAccept,
			int vehicleID) {
		super();
		this.reservationID = reservationID;
		this.cusID = cusID;
		this.driverID = driverID;
		this.managerID = managerID;
		this.dateTime = dateTime;
		this.driverAccept = driverAccept;
		this.vehicleID = vehicleID;
	}
	public int getReservationID() {
		return reservationID;
	}
	public int getCusID() {
		return cusID;
	}
	public int getDriverID() {
		return driverID;
	}
	public int getManagerID() {
		return managerID;
	}
	public String getDateTime() {
		return dateTime;
	}
	public int getDriverAccept() {
		return driverAccept;
	}
	public int getVehicleID() {
		return vehicleID;
	}
	public void setReservationID(int reservationID) {
		this.reservationID = reservationID;
	}
	public void setCusID(int cusID) {
		this.cusID = cusID;
	}
	public void setDriverID(int driverID) {
		this.driverID = driverID;
	}
	public void setManagerID(int managerID) {
		this.managerID = managerID;
	}
	public void setDateTime(String dateTime) {
		this.dateTime = dateTime;
	}
	public void setDriverAccept(int driverAccept) {
		this.driverAccept = driverAccept;
	}
	public void setVehicleID(int vehicleID) {
		this.vehicleID = vehicleID;
	}
      
}
