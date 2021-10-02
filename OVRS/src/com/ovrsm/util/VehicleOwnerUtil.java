package com.ovrsm.util;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.ovrsm.model.*;

public class VehicleOwnerUtil {

	private static boolean isSuccess;
	private static Connection con =null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	//return vehicle array
	public static boolean addVehicle(
	int veOID,String fuel_type,String license_no,
	String vehi_type,String color,String body_type,String model
	,int noOfPeeps,String edition,
	double pricePerKm,String specialNote,
	String brand,String registrationNo,String transmission,
	String vehiclePic) {
		
		try{
			vehiclePic="/images/cars/car.jpg";		
		
		String query="insert into vehicle values('"+veOID+"' ,'"+0+
				"','"+fuel_type+"','"+license_no+"','"+vehi_type+"','"+color+
				"','"+body_type+"','"+model+"','"+noOfPeeps+"','"
				+edition+"','"+pricePerKm+"','"
				+specialNote+"','"+brand+"','"
				+registrationNo+"','"+transmission+"','"+vehiclePic+"')";
		con = DBConnection.getDBConnection();
		stmt = con.createStatement();
		
		int rs = stmt.executeUpdate(query);
		
		if(rs>0) {
			System.out.println("Successfully inserted");
			isSuccess=true;
		}else {
			System.out.println("Insertion not successfull");
			isSuccess=false;
		}
		
		}catch(Exception e) {
			System.out.println("Insertion failed!");
			e.printStackTrace();
		}
		return isSuccess;
		
		
		
	}
	//String has to converted into integer in the servelet
	public static boolean removeVehicle(int vehiID,int ownerID) {
		String query="delete from vehicle where vehicleID= '"+vehiID+"'and veOID ="+ownerID+"')";
		return false;
	}
	
	
	
	 public static boolean updateVehicleDetails(
				int veOID,int vehicleID,String fuel_type,String license_no,
				String vehi_type,String color,String body_type,String model
				,int noOfPeeps,String edition,
				double pricePerKm,String specialNote,
				String brand,String registrationNo,String transmission,
				String vehiclePic) {
		
		
	  return false;	
	}
	
	
	
	
	
	
	
	
	public static List<Vehicle> getVehicleDetails(int owneruserID) {
		
		System.out.println(owneruserID);
		List<Vehicle> vehicles=new ArrayList<Vehicle>();
		
		String query="select * from vehicle where veOID='"+owneruserID+"'";
		try{
			con = DBConnection.getDBConnection();
		
		    stmt = con.createStatement();
		    rs=stmt.executeQuery(query);
		    
		    
		    while(rs.next()) {
		    	int vehicleID=rs.getInt(2);
		    	String fuel_type=rs.getString(3);
		    	String license_no =rs.getString(4);
		    	String vehi_type=rs.getString(5);
		    	String color =rs.getString(6);
		    	String body_type=rs.getString(7);
		    	String model=rs.getString(8);
		    	int noOfPeeps=rs.getInt(9);
		    	String edition=rs.getString(10);
		    	double pricePerKm=rs.getDouble(11);
		    	String specialNote=rs.getString(12);
		    	String brand= rs.getString(13);
		    	String registrationNo=rs.getString(14);
		    	String transmission=rs.getString(15);
		    	String vehiclePic=rs.getString(16);
		    	System.out.println("**************");
		    	System.out.println(vehicleID+"\n"+
		    			fuel_type+"\n"+license_no+"\n"+
		    			vehi_type+"\n"+color+"\n"+
		    			body_type+"\n"+model+"\n"+
		    			noOfPeeps+"\n"+edition+"\n"+
		    			pricePerKm+"\n"+specialNote+"\n"+
		    			brand+"\n"+registrationNo+"\n"+
		    			transmission+"\n"+vehiclePic+"\n");
		    	
		    	
		    	
		    	Vehicle vehi=new Vehicle(owneruserID,vehicleID,
		    			fuel_type,license_no
		    			,vehi_type,color,body_type,
		    			model,noOfPeeps,edition,pricePerKm,specialNote,
		    			brand,registrationNo,transmission,vehiclePic);
		    	System.out.println(vehi.getDetails());
		    	vehicles.add(vehi);
		    }
		
		
		}catch(Exception e) {
			System.out.println("Vehicle getting vehicles not completed");
			e.printStackTrace();
			
		}
		    return vehicles;
	}
    
}
