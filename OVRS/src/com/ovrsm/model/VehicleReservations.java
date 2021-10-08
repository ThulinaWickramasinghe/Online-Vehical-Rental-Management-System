package com.ovrsm.model;

public class VehicleReservations {
	
	private int reservationID;
	private int cusID;
	private String vehicle_Type;
	private String pickupDate;
	private String pickupTime;
	private int hours;
	private int days;
	private int minutes;
	private String  driverExp;
	private int driverStatus;
	private double how_far;
	private String pickupLocation;
	private int fullPaid;
	private String journeyStatus;
	public VehicleReservations(int reservationID, int cusID, String vehicle_Type, String pickupDate, String pickupTime,
			int hours, int days, int minutes, String driverExp, int driverStatus, double how_far, String pickupLocation,
			int fullPaid, String journeyStatus) {

		this.reservationID = reservationID;
		this.cusID = cusID;
		this.vehicle_Type = vehicle_Type;
		this.pickupDate = pickupDate;
		this.pickupTime = pickupTime;
		this.hours = hours;
		this.days = days;
		this.minutes = minutes;
		this.driverExp = driverExp;
		this.driverStatus = driverStatus;
		this.how_far = how_far;
		this.pickupLocation = pickupLocation;
		this.fullPaid = fullPaid;
		this.journeyStatus = journeyStatus;
	}
	public int getReservationID() {
		return reservationID;
	}
	public int getCusID() {
		return cusID;
	}
	public String getVehicle_Type() {
		return vehicle_Type;
	}
	public String getPickupDate() {
		return pickupDate;
	}
	public String getPickupTime() {
		return pickupTime;
	}
	public int getHours() {
		return hours;
	}
	public int getDays() {
		return days;
	}
	public int getMinutes() {
		return minutes;
	}
	public String getDriverExp() {
		return driverExp;
	}
	public int getDriverStatus() {
		return driverStatus;
	}
	public double getHow_far() {
		return how_far;
	}
	public String getPickupLocation() {
		return pickupLocation;
	}
	public int getFullPaid() {
		return fullPaid;
	}
	public String getJourneyStatus() {
		return journeyStatus;
	}
	public void setReservationID(int reservationID) {
		this.reservationID = reservationID;
	}
	public void setCusID(int cusID) {
		this.cusID = cusID;
	}
	public void setVehicle_Type(String vehicle_Type) {
		this.vehicle_Type = vehicle_Type;
	}
	public void setPickupDate(String pickupDate) {
		this.pickupDate = pickupDate;
	}
	public void setPickupTime(String pickupTime) {
		this.pickupTime = pickupTime;
	}
	public void setHours(int hours) {
		this.hours = hours;
	}
	public void setDays(int days) {
		this.days = days;
	}
	public void setMinutes(int minutes) {
		this.minutes = minutes;
	}
	public void setDriverExp(String driverExp) {
		this.driverExp = driverExp;
	}
	public void setDriverStatus(int driverStatus) {
		this.driverStatus = driverStatus;
	}
	public void setHow_far(double how_far) {
		this.how_far = how_far;
	}
	public void setPickupLocation(String pickupLocation) {
		this.pickupLocation = pickupLocation;
	}
	public void setFullPaid(int fullPaid) {
		this.fullPaid = fullPaid;
	}
	public void setJourneyStatus(String journeyStatus) {
		this.journeyStatus = journeyStatus;
	}
	

}
