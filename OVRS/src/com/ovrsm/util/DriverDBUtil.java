package com.ovrsm.util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import com.ovrsm.model.EmployeeManager;
import com.ovrsm.model.Payment;
import com.ovrsm.model.RecommendJob;
import com.ovrsm.model.Reservation;
import com.ovrsm.model.Vehicle;

public class DriverDBUtil {
	private static boolean isSuccess;
	private static Connection con =null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	private static ResultSet rs2 = null;
	private static ResultSet rs3 = null;
	private static PreparedStatement mystmt=null;
	private static PreparedStatement mystmt2=null;
	
	public  static int updateProfile(int userID,String firstName,String lastName,String userName,String password,String email,String propic
			,String NIC,int phoneNo,String homeNo,String streetName,String city) {
		
		int number=0;
		propic="https://st3.depositphotos.com/15648834/17930/v/600/depositphotos_179308454-stock-illustration-unknown-person-silhouette-glasses-profile.jpg";
		ArrayList<String> userNames= new ArrayList<String>();
		try{
			 con = DBConnection.getDBConnection();
		
	        
		    stmt = con.createStatement();
		  
		 //   System.out.println("sdfksdklfjlkdjlkfldk");
		    String query="select userName from user";
		//    System.out.println("sdfksdklfjlkdjlkfldksdffffffdff");
		    rs=stmt.executeQuery(query);
		  //  System.out.println("sdfksdklfjlkdjlkfldksdfffffffffffffffff");
		    
		    while(rs.next()) {
		    	String uName=rs.getString(1);
		    	//System.out.println("sdfksdklfjlkdjlkfldksaddddddddddddddddddddd");
		    	userNames.add(uName);
		    }
		   
		    String query2="select userName from user where userID='"+userID+"'";
		    stmt = con.createStatement();
		    rs=stmt.executeQuery(query2);
		    String previousUserName=null;
		    while(rs.next()) {
		    	previousUserName=rs.getString(1);
		    }
		    
		    userNames.remove(previousUserName);
		    
		    
		   int index= Collections.binarySearch(userNames, userName);
		  // System.out.println("sdfksdklfjlkdjlkfldksdffffffffffffffffffffffffffffffffff");
		    
		   if(index <0) {
			   
			    
			    stmt = con.createStatement();
			    String sql="update user set firstName = '"+firstName+"',lastName='"+lastName+"',userName='"+userName+"',password='"+password+"',email='"+email+"',propic='"+propic+"'where userID='"+userID+"'";
			    
			    int r= stmt.executeUpdate(sql);
			    
			    
			    stmt = con.createStatement();
			    String sql1="update externaluser set NIC ='"+NIC+"',phoneNo='"+phoneNo+"',homeNo='"+homeNo+"',streetName='"+streetName+"',city='"+city+"'where exuserID='"+userID+"'";
			    
			    int r2=stmt.executeUpdate(sql1);
			   if(r>0 ) {
				   if(r2>0) {
					   
					   System.out.println("User updation successed");
					   number=3;
					   
					   return number;
				   }else {
					   System.out.println("updation of external user table failed..");
					   number=2;
					   return number;
				   }
			   }else {
				   System.out.println("Updation of user table is failed");
				   number=1;
				   return number;
			   }
			   
			   
			   
			   
		   }else {
			   
			   System.out.println("User name already exists..");
			   number=-1;
			   return number;
		   } 
		    
		
		    
		    
		    
		    
		    
		    
		    
		    
		  
		    
		    
		}catch(Exception e) {
			e.printStackTrace();
		
		}
		
		
		
		return number;
	}
	
	public static List<RecommendJob> getJobs(int driverID){
		
		ArrayList<RecommendJob> jobs = new ArrayList<RecommendJob>();
	

	   Reservation reservation=null;
		try {
            con = DBConnection.getDBConnection();
		
	        
		    stmt = con.createStatement();
		    String query="select  *from recommendjobs where driverID = '"+driverID+"'";
		    String query1="select vehicle_type,pickUpdate,pickUpTime,hours,days,minutes,driverexp,driverstatus,how_far,pickup_location,fullPaid,journey_status from reservation where reservationID= ? and cusID= ?";
		  
		   	mystmt = con.prepareStatement(query1);
		 
		   	rs=stmt.executeQuery(query);
		    while(rs.next()) {
		    	int reservationID=rs.getInt(1);
		    	int cusID=rs.getInt(2);
		    	int managerID=rs.getInt(4);
		    	String dateTime=rs.getString(5);
		    	int driverAccept =rs.getInt(6);
		    	int vehicleID=rs.getInt(7);
		    	
		 
		    	mystmt.setInt(1, reservationID);
		    	mystmt.setInt(2, cusID);
		  
		        rs2=mystmt.executeQuery();
		    	while(rs2.next()) {
		    		System.out.println("I was reserved");
		    		String vehicle_type=rs2.getString(1);
		    		String pickUpDate=rs2.getString(2);
		    		String pickUpTime=rs2.getString(3);
		    	    int hours=rs2.getInt(4);
		    	    int days=rs2.getInt(5);
		    	    int minutes=rs2.getInt(6);
		    	    String driverexp=rs2.getString(7);
		    	    int driverStatus=rs2.getInt(8);
		    	    double how_far=rs2.getDouble(9);
		    	    String pickup_location=rs2.getString(10);
		    	    int fullPaid=rs2.getInt(11);
		    	    int journey_status=rs2.getInt(12);

		    	    reservation= new Reservation(reservationID,cusID,vehicle_type,pickUpDate,pickUpTime,
		    	    hours,days,minutes,driverexp,driverStatus,how_far,pickup_location,fullPaid,journey_status);
		    	}
		    	
		    	int owneruserID=0;
		    	String fuel_type=null;
		    	String license_no =null;
		    	String vehi_type=null;
		    	String color =null;
		    	String body_type=null;
		    	String model=null;
		    	int noOfPeeps=0;
		    	String edition=null;
		    	double pricePerKm=0;
		    	String specialNote=null;
		    	String brand= null;
		    	String registrationNo=null;
		    	String transmission=null;
		    	String vehiclePic=null;
		    	
		    	String query2="select *from vehicle where vehicleID='"+vehicleID+"'";
		    	stmt = con.createStatement();
		    	rs3=stmt.executeQuery(query2);
		    	while(rs3.next()) {
		    	owneruserID=rs3.getInt(1);
		        fuel_type=rs3.getString(3);
		    	license_no =rs3.getString(4);
		    	vehi_type=rs3.getString(5);
		    	color =rs3.getString(6);
		    	body_type=rs3.getString(7);
		    	 model=rs3.getString(8);
		    	noOfPeeps=rs3.getInt(9);
		    	edition=rs3.getString(10);
		    	pricePerKm=rs3.getDouble(11);
		    	specialNote=rs3.getString(12);
		    	brand= rs3.getString(13);
		    	registrationNo=rs3.getString(14);
		    	transmission=rs3.getString(15);
		    	vehiclePic=rs3.getString(16);
		    	}
		    	
		    	
		    	
		    	Vehicle vehi=new Vehicle(owneruserID,vehicleID,
		    			fuel_type,license_no
		    			,vehi_type,color,body_type,
		    			model,noOfPeeps,edition,pricePerKm,specialNote,
		    			brand,registrationNo,transmission,vehiclePic);
		    	
		    	
		        System.out.println(reservation.getCusID()+"\n"
		        		+reservation.getDriverStatus()+"VehicleID"+vehicleID);
		        
		    	
		    	RecommendJob rc=new RecommendJob(vehi,managerID,reservation,driverID,dateTime,driverAccept);
		    	vehi=null;
		    	jobs.add(rc);
		    }
			
		}catch(Exception e) {
			System.out.println("I was  failed here");
			e.printStackTrace();
		}
		
		
		
		
		return jobs;
	}
	
	public static List<Payment> getPayments(int driverID){
		
		ArrayList<Payment> ps= new ArrayList<Payment>();
		Payment pay=null;
		try {
			  con = DBConnection.getDBConnection();
				
		        
			    stmt = con.createStatement();
			    String query="select  *from driverpayment where driverID = '"+driverID+"'";
			    String query1="select  amount,paymentType,paydateTime,paymethod from payment where paymentID = ? ";
			  	mystmt = con.prepareStatement(query1);
			    rs=stmt.executeQuery(query);
			    while(rs.next()) {
			    	int paymentID=rs.getInt(1);
			  
			    	mystmt.setInt(1, paymentID);
			    
			        rs2=mystmt.executeQuery();
					    while(rs2.next()) {
					    	double amount=rs2.getDouble(1);
					    	String paymentType=rs2.getString(2);
					    	String paydateTime=rs2.getString(3);
					    	String paymenthod=rs2.getString(4);
					    	
					  System.out.println("Payment was retrived");
					 System.out.println(amount+"\n"+paymentType+"\n"
							 +paydateTime+"\n"+paymenthod);
					    	
					    	pay= new Payment(paymentID,amount,paymentType,paydateTime,paymenthod);
					    }
					    ps.add(pay);
			    	System.out.println("i was here for ");
			    }
		}catch(Exception e) {
			System.out.println("it was payment who failed");
			e.printStackTrace();
		}
		
		return ps;
		
	}
}
