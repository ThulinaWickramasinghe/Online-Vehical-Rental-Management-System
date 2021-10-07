package com.ovrsm.model;

public class Payment {
         private int paymentID;
         private double amount;
         private String paymentType;
         private String paydateTime;
         private String paymethod;
         
         public Payment(int paymentID, double amount, String paymentType, String paydateTime, String paymethod) {
 			
 			this.paymentID = paymentID;
 			this.amount = amount;
 			this.paymentType = paymentType;
 			this.paydateTime = paydateTime;
 			this.paymethod = paymethod;
 		}
		public int getPaymentID() {
			return paymentID;
		}
		public double getAmount() {
			return amount;
		}
		public String getPaymentType() {
			return paymentType;
		}
		public String getPaydateTime() {
			return paydateTime;
		}
		public String getPaymethod() {
			return paymethod;
		}
		public void setPaymentID(int paymentID) {
			this.paymentID = paymentID;
		}
		public void setAmount(double amount) {
			this.amount = amount;
		}
		public void setPaymentType(String paymentType) {
			this.paymentType = paymentType;
		}
		public void setPaydateTime(String paydateTime) {
			this.paydateTime = paydateTime;
		}
		public void setPaymethod(String paymethod) {
			this.paymethod = paymethod;
		}
		
         
}
