package com.ovrsm.util;


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
			

			System.out.println(reservationID);
		}catch(Exception e) {
			log.log(Level.SEVERE, e.getMessage());
		}finally {
			try {
				//close the statement
				if (ps != null) {
					ps.close();
				}
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
		// TODO Auto-generated method stub
	
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
			//execute the created statement and assign the returned values
		    int rs = stmt.executeUpdate(query2);
			
			if(rs>0) {
			
				isSuccess=true;
			}else {
			
				isSuccess=false;
			}
		}catch(Exception e) {
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
