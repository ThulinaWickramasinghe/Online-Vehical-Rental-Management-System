package com.ovrsm.model;

public class Reservation {
        private int reservationID;
        private int cusID;
      	private String vehicle_type;
        private String pickUpDate;
        private String pickUpTime;
        private int hours;
        private int days;
        private int minutes;
        private String exp;
        private int driverStatus;
        private double how_far;
        private String pickup_location;
        private int fullPaid;
        private int journey_status;
          public Reservation(int reservationID, int cusID, String vehicle_type, String pickUpDate, String pickUpTime,
				int hours, int days, int minutes, String exp, int driverStatus, double how_far, String pickup_location,
				int fullPaid, int journey_status) {
			
			this.reservationID = reservationID;
			this.cusID = cusID;
			this.vehicle_type = vehicle_type;
			this.pickUpDate = pickUpDate;
			this.pickUpTime = pickUpTime;
			this.hours = hours;
			this.days = days;
			this.minutes = minutes;
			this.exp = exp;
			this.driverStatus = driverStatus;
			this.how_far = how_far;
			this.pickup_location = pickup_location;
			this.fullPaid = fullPaid;
			this.journey_status = journey_status;
		}
		public int getReservationID() {
			return reservationID;
		}
		public int getCusID() {
			return cusID;
		}
		public String getVehicle_type() {
			return vehicle_type;
		}
		public String getPickUpDate() {
			return pickUpDate;
		}
		public String getPickUpTime() {
			return pickUpTime;
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
		public String getExp() {
			return exp;
		}
		public int getDriverStatus() {
			return driverStatus;
		}
		public double getHow_far() {
			return how_far;
		}
		public String getPickup_location() {
			return pickup_location;
		}
		public int getFullPaid() {
			return fullPaid;
		}
		public int getJourney_status() {
			return journey_status;
		}
		public void setReservationID(int reservationID) {
			this.reservationID = reservationID;
		}
		public void setCusID(int cusID) {
			this.cusID = cusID;
		}
		public void setVehicle_type(String vehicle_type) {
			this.vehicle_type = vehicle_type;
		}
		public void setPickUpDate(String pickUpDate) {
			this.pickUpDate = pickUpDate;
		}
		public void setPickUpTime(String pickUpTime) {
			this.pickUpTime = pickUpTime;
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
		public void setExp(String exp) {
			this.exp = exp;
		}
		public void setDriverStatus(int driverStatus) {
			this.driverStatus = driverStatus;
		}
		public void setHow_far(double how_far) {
			this.how_far = how_far;
		}
		public void setPickup_location(String pickup_location) {
			this.pickup_location = pickup_location;
		}
		public void setFullPaid(int fullPaid) {
			this.fullPaid = fullPaid;
		}
		public void setJourney_status(int journey_status) {
			this.journey_status = journey_status;
		}
	
          
}
