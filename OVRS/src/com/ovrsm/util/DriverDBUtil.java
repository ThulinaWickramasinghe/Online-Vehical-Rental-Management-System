package com.ovrsm.util;


import java.util.logging.Level;
import java.util.logging.Logger;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
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

	
	public static final Logger log = Logger.getLogger(DriverDBUtil.class.getName());
	
	public  static int updateProfile(int userID,String firstName,String lastName,String userName,String password,String email,String propic
			,String NIC,int phoneNo,String homeNo,String streetName,String city) {
		
		int number=0;
		propic="https://st3.depositphotos.com/15648834/17930/v/600/depositphotos_179308454-stock-illustration-unknown-person-silhouette-glasses-profile.jpg";
		
		//Generic type string ArrayList which contains user names
		ArrayList<String> userNames= new ArrayList<String>();
		try{
			//Get the connection
			 con = DBConnection.getDBConnection();
		
	        //Create statment 
		    stmt = con.createStatement();
		  

            //Sql query to return user Name of a user
		    String query="select userName from user";
		
		    //Execute the query  and return a result set  
		    rs=stmt.executeQuery(query);
		  
		    
		    //iterate through the result set until there are no more rows in
		    while(rs.next()) {
		    	String uName=rs.getString(1);
		    
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
		
		    
		   if(index <0) {
			   
			    
			    stmt = con.createStatement();
			    String sql="update user set firstName = '"+firstName+"',lastName='"+lastName+"',userName='"+userName+"',password='"+password+"',email='"+email+"',propic='"+propic+"'where userID='"+userID+"'";
			    
			    int r= stmt.executeUpdate(sql);
			    
			    
			    stmt = con.createStatement();
			    String sql1="update externaluser set NIC ='"+NIC+"',phoneNo='"+phoneNo+"',homeNo='"+homeNo+"',streetName='"+streetName+"',city='"+city+"'where exuserID='"+userID+"'";
			    
			    int r2=stmt.executeUpdate(sql1);
			   if(r>0 ) {
				   if(r2>0) {
					   
					   log.log(Level.INFO,"Externerl user successfully updated");
					  
					   number=3;
					   
					   return number;
				   }else {
					   log.log(Level.SEVERE,"Externerl user updated failed");
					   number=2;
					   return number;
				   }
			   }else {
				   log.log(Level.INFO,"User  updated successfully");
				   number=1;
				   return number;
			   }
			   
			   
			   
			   
		   }else {
			   
			   log.log(Level.SEVERE,"User name already taken");
			   number=-1;
			   return number;
		   } 
		    
		
		    		   		 		  		  			   		    		  		    
		    
		}catch(Exception e) {
			//write the thrown exception to the logger as severe level error in order to trace the error in remote server
			log.log(Level.SEVERE, e.getMessage());
		}finally {
			try {
				//close statement
				if (stmt != null) {
					stmt.close();
				}
				//close the connection
				if (con != null) {
					con.close();
				}
				
				
			
			} catch (SQLException e) {
				//write the thrown exception to the logger as severe level error
				log.log(Level.SEVERE, e.getMessage());
			}
		}
		
		
		//return the number which coresponds different outputs
		return number;
	}
	
	public static List<RecommendJob> getJobs(int driverID){
		//create and arraylist which has generic type of recommend job
	   ArrayList<RecommendJob> jobs = new ArrayList<RecommendJob>();
	
       //create a reservation reference object
	   Reservation reservation=null;
		try {
			//get database connection
            con = DBConnection.getDBConnection();
		
	        //create a sql statement
		    stmt = con.createStatement();
		    //sql statement to get drivers recommend job details
		    String query="select  *from recommendjobs where driverID = '"+driverID+"'";
		    //sql statement to get reseration details
		    String query1="select vehicle_type,pickUpdate,pickUpTime,hours,days,minutes,driverexp,driverstatus,how_far,pickup_location,fullPaid,journey_status from reservation where reservationID= ? and cusID= ?";
		  //create a prepared statement before the loop
		   	mystmt = con.prepareStatement(query1);
		 //execute recommend jobs retrieving statment
		   	rs=stmt.executeQuery(query);
		   	
		   	//loop until all the drivers jobs are over
		    while(rs.next()) {
		    	int reservationID=rs.getInt(1);
		    	int cusID=rs.getInt(2);
		    	int managerID=rs.getInt(4);
		    	String dateTime=rs.getString(5);
		    	int driverAccept =rs.getInt(6);
		    	int vehicleID=rs.getInt(7);
		    	
		   //set values to the prepared statement
		    	mystmt.setInt(1, reservationID);
		    	mystmt.setInt(2, cusID);
		 //execute the prepared statement 
		        rs2=mystmt.executeQuery();
		    	while(rs2.next()) {
		    		//get reservation details and assign them to variable in order to create a reservation object
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
                   
		    	    //initialize a reservation object
		    	    
		    	    reservation= new Reservation(reservationID,cusID,vehicle_type,pickUpDate,pickUpTime,
		    	    hours,days,minutes,driverexp,driverStatus,how_far,pickup_location,fullPaid,journey_status);
		    	}
		    	//initialize the variables 
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
		    	
		    	//query to to get vehicle details
		    	String query2="select *from vehicle where vehicleID='"+vehicleID+"'";
		    	//create a statement 
		    	stmt = con.createStatement();
		    	//execute the query
		    	rs3=stmt.executeQuery(query2);
		    	
		    	//loop the returned result set till no of rows in the tabl
		    	while(rs3.next()) {
		    		
		    	//store retrieved vehicle  details in the variables	
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
		    	
		    	
		    	//initialize a vehicle object
		    	Vehicle vehi=new Vehicle(owneruserID,vehicleID,
		    			fuel_type,license_no
		    			,vehi_type,color,body_type,
		    			model,noOfPeeps,edition,pricePerKm,specialNote,
		    			brand,registrationNo,transmission,vehiclePic);
		    	
		    	
		    	//initiale and recommendjob object
		    	RecommendJob rc=new RecommendJob(vehi,managerID,reservation,driverID,dateTime,driverAccept);
		    	vehi=null;
		    	//add it to the job arraylist
		    	jobs.add(rc);
		    }
			
		}catch(Exception e) {
			//write that thrown exception to the logger
			log.log(Level.SEVERE, e.getMessage());
		}finally {
			try {
				if (stmt != null) {
					stmt.close();
				}
				
				if(mystmt!=null) {
					mystmt.close();
				}
				if (con != null) {
					con.close();
				}
				
				
			} catch (SQLException e) {
				//SEVERE is a message level indicating a serious failure.
				//write that thrown exception to the logger
				log.log(Level.SEVERE, e.getMessage());
			}
		}
						
		
		return jobs;
	}
	
	public static List<Payment> getPayments(int driverID){
		//Create an arrayList which is the generic type of payment
		ArrayList<Payment> payments= new ArrayList<Payment>();
		//create payment reference object
		Payment pay=null;
		try {
			//get the db connection
			  con = DBConnection.getDBConnection();
				
		        //create a statement
			    stmt = con.createStatement();
			    //sql query to retrive driver's paymentID
			    String query="select  *from driverpayment where driverID = '"+driverID+"'";
			    //sql query to retrieve driver payment details
			    String query1="select  amount,paymentType,paydateTime,paymethod from payment where paymentID = ? ";
			  //create the prepared statement
			    mystmt = con.prepareStatement(query1);
			    //execute the query which returns paymentID
			    rs=stmt.executeQuery(query);
			    while(rs.next()) {
			    	//store the payment id retrived
			    	int paymentID=rs.getInt(1);
			  //set the value to first argument of the prepared statement
			    	mystmt.setInt(1, paymentID);
			 //execute the prepared statement   
			        rs2=mystmt.executeQuery();
					    while(rs2.next()) {
					    	//get payment details from the result set
					    	double amount=rs2.getDouble(1);
					    	String paymentType=rs2.getString(2);
					    	String paydateTime=rs2.getString(3);
					    	String paymenthod=rs2.getString(4);
					    	
				           //create a payment object
					    	pay= new Payment(paymentID,amount,paymentType,paydateTime,paymenthod);
					    }
					    //Add that payment to the payments arrayList
					    payments.add(pay);
			
			    }
		}catch(Exception e) {
			//Write thrown errors to the logger
			log.log(Level.SEVERE, e.getMessage());
		}finally {
			try {
				//close the statement
				if (stmt != null) {
					stmt.close();
				}
				//close the prepared statement
				if(mystmt!=null) {
					mystmt.close();
				}
				//close data base connection
				if (con != null) {
					con.close();
				}
				
				
			} catch (SQLException e) {
				log.log(Level.SEVERE, e.getMessage());
			}
		}
		
		return  payments;
		
	}
	public static boolean removeJob(int reservationID, int cusID, int driverID, int managerID) {
		
		
		try {
			 con = DBConnection.getDBConnection();
				
		        
			 stmt = con.createStatement();
			 //remove  recommended jobs from the database
			 String sql="delete from recommendjobs where reservationID='"+reservationID+"'and cusID= ' "+cusID+"' and driverID='"+driverID+"'and managerID= '"+managerID+"'";
		   //execute and deleted the recommended job
			 int rs=stmt.executeUpdate(sql);
			//check if the number of rows affected are more than zero 
			 if(rs>0) {
				 isSuccess=true; 
			 }else {
				 isSuccess=false;
			 }
		
		}catch(Exception e) {
			//write the error to the logger 
			log.log(Level.SEVERE, e.getMessage());
		}finally {
			try {
				//close the statement
				if (stmt != null) {
					stmt.close();
				}
				//close db connection
				if (con != null) {
					con.close();
				}
				
				
			
			} catch (SQLException e) {
				log.log(Level.SEVERE, e.getMessage());
			}
		}
		
		
		
		
		return isSuccess;
	}
	
	public static boolean updateJourneyStatus(int reservationID,int cusID ) {
		
		
		try {
			 con = DBConnection.getDBConnection();
				
		        
			 stmt = con.createStatement();
			 //set journey status as 1 to indicate that journey is over
			 String sql="update reservation set journey_status=1 where reservationID='"+reservationID+"'and cusID= ' "+cusID+"'";
			 //execute the sql statement and returns the number of rows affected  
			 int rs=stmt.executeUpdate(sql);
			 
			 if(rs>0) {
				 isSuccess=true;
			 }else {
				 isSuccess=false;
			 }
		}catch(Exception e) {
			log.log(Level.SEVERE, e.getMessage());
		}finally {
			try {
				if (stmt != null) {
					stmt.close();
				}
				if (con != null) {
					con.close();
				}
				
				
				
			} catch (SQLException e) {
				log.log(Level.SEVERE, e.getMessage());
			}
		}
		return isSuccess;
		
	} 
}
