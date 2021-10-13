package com.ovrsm.util;


import java.util.ArrayList;
import java.util.Collections;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;



public class CustomerDBUtill {
	private static boolean isSuccess;
	private static Connection con =null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	//create the prepared statement 
    private static PreparedStatement ps=null;

	
	public static final Logger log = Logger.getLogger(CustomerDBUtill.class.getName());
	
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
	
	
	public static  int makeReservation(int cusID, String vehicle_type, String pickupDate, 
			String pickupTime, int hours, int days, int minutes, String driverExp, int driverStatus,
			double how_far, String pickup_location) {
		int reservationID=0;
		

		try{
			//Get data base connection
			con = DBConnection.getDBConnection();
		   //Sql query to  insert reservation details into the reservation table
		    String query="insert into reservation(cusID,vehicle_type,pickupdate,pickuptime,hours,days,minutes,driverexp,driverstatus,how_far,pickup_location,fullPaid,journey_status)"
		    		+ "values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
		    
		//create the prepared statement 
		    ps=con.prepareStatement(query,Statement.RETURN_GENERATED_KEYS);
		//set values for each column	
		    ps.setInt(1, cusID);
		    ps.setString(2, vehicle_type);
		    ps.setString(3, pickupDate);
		    ps.setString(4, pickupTime);
			ps.setInt(5, hours);
			ps.setInt(6, days);
			ps.setInt(7, minutes);
			ps.setString(8, driverExp);
			ps.setInt(9,driverStatus);
			ps.setDouble(10, how_far);
			ps.setString(11,pickup_location);
			ps.setInt(12,0);
			ps.setInt(13,0);
	
			ps.addBatch();
	
	
			ps.executeBatch();
	
			
			rs=ps.getGeneratedKeys();
		
			while(rs.next()) {
				reservationID=rs.getInt(1);
			}
			

			
		}catch(Exception e) {
			log.log(Level.SEVERE, e.getMessage());
		}finally {
			try {
				//close the statement
				if (ps != null) {
					ps.close();
				}
				//close the connection
				if (con != null) {
					con.close();
				}
				
				
			
			} catch (SQLException e) {
				log.log(Level.SEVERE, e.getMessage());
			}
		}
		return reservationID;
		
	}
	
	public static boolean makePayment(double amount, String paymentType, String dateTime, String paymethod, int reservationID, int cusID,String  recieptNumber) {

	
        int paymentID=0;
		try{
			//get data base connection
			con = DBConnection.getDBConnection();
		   
		   //Sql statement to insert values to payment entity
			String query="insert into payment(amount,paymentType,paydateTime,paymethod) values(?,?,?,?)";
		/*
		 * Prepared statement is used here to get the generated primary key for payment
		 */
		    ps=con.prepareStatement(query,Statement.RETURN_GENERATED_KEYS);
		    //set values for each column
		    ps.setDouble(1, amount);
		    ps.setString(2, paymentType);
		    ps.setString(3,dateTime);
		    ps.setString(4,paymethod);
		    
		    ps.addBatch();
		    
		    ps.executeBatch();
		  //returns the generated key  
		    rs=ps.getGeneratedKeys();
		    
		    while(rs.next()) {
		    	
		    	paymentID=rs.getInt(1);
		    }
		   
		 //Sql query to insert reservation Payments into reservation payment entity
		    String query2="insert into resPayment values('"+paymentID+"','"+reservationID+"','"+cusID+"','"+recieptNumber+"')";
		   
		    //Creates a Statement object for sending SQL statements
		    stmt = con.createStatement();
			//execute the create statement and assign number of  effected rows to rs variable
		    int rs = stmt.executeUpdate(query2);
			//check if the number of rows effected are more than zero
			//if it is set isSuccess as true else false
		    if(rs>0) {
			
				isSuccess=true;
			}else {
			
				isSuccess=false;
			}
		}catch(Exception e) {
			//write that error to logger
			log.log(Level.SEVERE, e.getMessage());
		}finally {
			try {
				//close the statement
				if (stmt != null) {
					stmt.close();
				}
				//close prepared statement
				if (ps != null) {
					ps.close();
				}
				//close db  connection
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
