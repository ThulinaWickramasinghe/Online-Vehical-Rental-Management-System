package com.ovrsm.util;


import java.util.logging.Level;
import java.util.logging.Logger;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class EmloyeeManagerUtil {
	private static boolean isSuccess;
	private static Connection con =null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	
	public static final Logger log = Logger.getLogger(EmloyeeManagerUtil.class.getName());
	public static boolean assignJobs(int resID,int cusID,int driverID,int managerID,
			String dateTime,int vehicleID) {
		
		try{
			con = DBConnection.getDBConnection();
		    stmt = con.createStatement();
		    String query="insert into recommendjobs values ('"+resID+"','"+cusID
		    		+"','"+driverID+"','"+managerID+"','"+dateTime+"','"+0+"','"+vehicleID+"')";
		    
			int r = stmt.executeUpdate(query);
			
			if(r>0) {
				System.out.println("Job created");
				isSuccess=true;
			}else {
				System.out.println("Job is not created");
				isSuccess=false;
			}
			
		    
		}catch(Exception e) {
			log.log(Level.SEVERE, e.getMessage());
		}finally {
			try {
				if (stmt != null) {
					stmt.close();
				}
				
			} catch (SQLException e) {
				log.log(Level.SEVERE, e.getMessage());
			}
		}
		
		return isSuccess;
		
	}
	public  static boolean deleteJobs(int reservationID) {
		
		try{
			con = DBConnection.getDBConnection();
		    stmt = con.createStatement();
		    String query="delete from recommendjobs where reservationID = '"+reservationID+"'";
		    
			int r = stmt.executeUpdate(query);
			
			if(r>0) {
				System.out.println("Job deleted");
				isSuccess=true;
			}else {
				System.out.println("Job is not delete");
				isSuccess=false;
			}
			
		    
		}catch(Exception e) {
			log.log(Level.SEVERE, e.getMessage());
		}finally {
			try {
				if (stmt != null) {
					stmt.close();
				}
			
			} catch (SQLException e) {
				log.log(Level.SEVERE, e.getMessage());
			}
		}
		return isSuccess;
	}

}
