package com.ovrsm.util;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.ovrsm.model.*;


public class UserDBUtil {
	
	private static String isSuccess;
	private static Connection con =null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
    
	public static String validate(String username, String password) {
		System.out.println("I was called");
		try {
			con = DBConnection.getDBConnection();
			stmt = con.createStatement();
			String sql = "select * from user where userName='"+username+"' and password='"+password+"'";
			rs = stmt.executeQuery(sql);
		   int userID=0;
		
			if (rs.next()) {
				System.out.println("Correct credential for any user");
				rs = stmt.executeQuery(sql);
				while(rs.next())
					userID=rs.getInt(1);
				
				
				
				
				
				String sql1 = "select * from emp_manager where empID='"+userID+"'";
				
				rs=stmt.executeQuery(sql1);
				
				if(rs.next()) {
					isSuccess="emp";
					return isSuccess;
				}
				String sql2 = "select * from driver where driverID='"+userID+"'";
				
			   rs=stmt.executeQuery(sql2);
				if(rs.next()) {
					System.out.println("I am a driver");
					isSuccess="driver";
					return isSuccess;
				}
				String sql3 = "select * from vehicleOwner where veOID='"+userID+"'";
					
			   rs=stmt.executeQuery(sql3);
				if(rs.next()) {
					System.out.println("I am a vehicle owner");
					isSuccess="carowner";
					return isSuccess;
				}
				String sql4 = "select * from customer where cusID='"+userID+"'";
					
				rs=stmt.executeQuery(sql4);
				if(rs.next()) {
					System.out.println("I am a customer");
					isSuccess="customer";
					return isSuccess;
				}
				
			
			} else {
			System.out.println("not matched");
				isSuccess = null;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static VehicleOwner getVehicleOwner(String userName) {
	    VehicleOwner vehicleOwner=null;
	    
		  //all user attrributes 
	
	    String firstName = null;
	    String lastName = null;
	    String email=null;
	    String propic=null;
	    String userNamee=null;
	    String password=null;
	 //external user attribues 
	    String NIC=null;
		String phoneNo = null;
		String streetName = null;
		String city=null;
		String homeNo=null;
	 
	
		
		int userID=0;	
		try {	
						
							
			con = DBConnection.getDBConnection();
			System.out.println("meee");
			String sql = "select * from user where username='"+userName+"'";
			System.out.println("meeeffdf");
			rs = stmt.executeQuery(sql);
			System.out.println("meeesdfdfd");
			while(rs.next())
		    userID = rs.getInt(1);
		    System.out.println("meeesdfdfdxcxcxcxc");
			
								
								stmt = con.createStatement();
												
												
											
											
												String sql1 = "select * from externaluser where exuserID='"+userID+"'";
												rs = stmt.executeQuery(sql);
												
												while (rs.next()) {
													
													   firstName=rs.getString(2);			
											           lastName=rs.getString(3);	
											           userName=rs.getString(4);	
											           password=rs.getString(5);	
													   email=rs.getString(6);
													   propic=rs.getString(7);
									
												
												}
												rs = stmt.executeQuery(sql1);
												while(rs.next()) {
													NIC=rs.getString(2);
													phoneNo=rs.getString(3);
													homeNo=rs.getString(4);
													streetName=rs.getString(5);				
											        city=rs.getString(6);
												} 
											
										
											System.out.println(userID+"\n"+firstName+"\n"+lastName+"\n"+email+"\n"+propic+"\n"+
												  userNamee+"\n"+password+"\n"+NIC+"\n"+phoneNo+"\n"+streetName+"\n"+city+"\n"+homeNo);
										vehicleOwner = new VehicleOwner(userID,firstName,lastName,email,propic,
												  userNamee,password,NIC,phoneNo,streetName,city,homeNo);
										
										
						 
		}catch(Exception e) {
			System.out.println("Outter catch block failed");
		   e.printStackTrace();
		}
		
		
				return vehicleOwner;
	}
		
	public static Customer getCustomer(String userName) {
	   Customer customer=null;

		  //all user attrributes 
	
	    String firstName = null;
	    String lastName = null;
	    String email=null;
	    String propic=null;
	    String userNamee=null;
	    String password=null;
	 //external user attribues 
	    String NIC=null;
		String phoneNo = null;
		String streetName = null;
		String city=null;
		String homeNo=null;
	   
	
		
		int userID=0;	
		try {	
							con = DBConnection.getDBConnection();
							System.out.println("meee");
							String sql = "select * from user where username='"+userName+"'";
							System.out.println("meeeffdf");
							rs = stmt.executeQuery(sql);
							System.out.println("meeesdfdfd");
							while(rs.next())
						    userID = rs.getInt(1);
						    System.out.println("meeesdfdfdxcxcxcxc");
							
												
												stmt = con.createStatement();
											
												 System.out.println("meees32423dfdfdxcxcxcxc");
											
												String sql1 = "select * from externaluser where exuserID='"+userID+"'";
												rs = stmt.executeQuery(sql);
												
												while (rs.next()) {
													   firstName=rs.getString(2);			
											           lastName=rs.getString(3);	
											           userName=rs.getString(4);
											          
											           password=rs.getString(5);	
													   email=rs.getString(6);
													   propic=rs.getString(7);
												
												}
												rs = stmt.executeQuery(sql1);
												while(rs.next()) {
													NIC=rs.getString(2);
													phoneNo=rs.getString(3);
													homeNo=rs.getString(4);
													streetName=rs.getString(5);				
											        city=rs.getString(6);
												}    
												
										
										 System.out.println(userID+firstName+lastName+email+propic+"\n"+
												  userNamee+password+NIC+phoneNo+streetName+city+homeNo);
										 
										 
										  customer = new Customer(userID,firstName,lastName,email,propic,
												  userNamee,password,NIC,phoneNo,streetName,city,homeNo);	
										  
										 
						
		}catch(Exception e) {
			System.out.println("Outter catch block failed");
		   e.printStackTrace();
		}
		
		
				return customer;
	}
	public static Driver getDriver(String userName) {
	    Driver driver=null;
	   
		  //all user attrributes 
	
	    String firstName = null;
	    String lastName = null;
	    String email=null;
	    String propic=null;
	    String userNamee=null;
	    String password=null;
	 //external user attribues 
	    String NIC=null;
		String phoneNo = null;
		String streetName = null;
		String city=null;
		String homeNo=null;
	    //Drivers attribute
		String carexpertLevel=null;
		String bikeexpertLevel=null;
		String vanexpertLevel=null;
		String jeepexpertLevel=null;
		String driverlicense=null;
	
		
		int userID=0;	
		try {	
							con = DBConnection.getDBConnection();
							System.out.println("meee");
							String sql = "select * from user where username='"+userName+"'";
							System.out.println("meeeffdf");
							rs = stmt.executeQuery(sql);
							System.out.println("meeesdfdfd");
							while(rs.next())
						    userID = rs.getInt(1);
						    System.out.println("meeesdfdfdxcxcxcxc");
						
												
												stmt = con.createStatement();
											
											
											
												String sql1 = "select * from externaluser where exuserID='"+userID+"'";
												String sql2 = "select * from driver where driverID='"+userID+"'";
												//rs = stmt.executeQuery(sql);
												
												while (rs.next()) {
												
													   firstName=rs.getString(2);			
											           lastName=rs.getString(3);	
											           userName=rs.getString(4);	
											           password=rs.getString(5);	
													   email=rs.getString(6);
													   propic=rs.getString(7);
												
												}
												rs = stmt.executeQuery(sql1);
												while(rs.next()) {
													NIC=rs.getString(2);
													phoneNo=rs.getString(3);
													homeNo=rs.getString(4);
													streetName=rs.getString(5);				
											        city=rs.getString(6);
												} 
												rs = stmt.executeQuery(sql2);
												while(rs.next()) {
													carexpertLevel=rs.getString(2);
													bikeexpertLevel=rs.getString(3);
													vanexpertLevel=rs.getString(4);
													driverlicense=rs.getString(5);				
													jeepexpertLevel=rs.getString(6);
												} 
											
										

												System.out.println(userID+"\n"+firstName+"\n"+lastName+"\n"+email+"\n"+propic+"\n"+
													  userNamee+"\n"+password+"\n"+NIC+"\n"+phoneNo+"\n"+streetName+"\n"+city+"\n"+homeNo);
										driver = new Driver(userID,firstName,lastName,email,propic,
												  userNamee,password,NIC,phoneNo,streetName,city,homeNo,
												  carexpertLevel,bikeexpertLevel,vanexpertLevel,jeepexpertLevel,
												  driverlicense);	
								
							  
						
		}catch(Exception e) {
			System.out.println("Outter catch block failed");
		   e.printStackTrace();
		}
		
		
				return driver;
	}
	public static EmployeeManager getEmployeeManager(String userName) {
		EmployeeManager emp=null;
	  
		
		  //all user attrributes 
	
	    String firstName = null;
	    String lastName = null;
	    String email=null;
	    String propic=null;
	    String userNamee=null;
	    String password=null;
	
	
		
		int userID=0;	
		try {	
							con = DBConnection.getDBConnection();
							System.out.println("meee");
							String sql = "select * from user where username='"+userName+"'";
							System.out.println("meeeffdf");
							
							rs = stmt.executeQuery(sql);
							
							System.out.println("meeesdfdfd");
							while (rs.next()) {
						    userID = rs.getInt(1);
					
												
											
			              firstName=rs.getString(2);			
			              lastName=rs.getString(3);	
			              userName=rs.getString(4);	
			              password=rs.getString(5);	
						  email=rs.getString(6);
						  propic=rs.getString(7);
										}
											
										 emp= new EmployeeManager(userID,firstName,lastName,email,propic,
										 userNamee,password);
										
											

											System.out.println(userID+"\n"+firstName+"\n"+lastName+"\n"+email+"\n"+propic+"\n"+
												  userNamee+"\n"+password+"\n");
									
		}catch(Exception e) {
			System.out.println("Outter catch block failed");
		   e.printStackTrace();
		}
		
		
				return emp;
	}
		
	
/*  public static boolean insertcustomer(String name, String email, String phone, String username, String password) {
    	
    	boolean isSuccess = false;
    	
    	try {
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    	    String sql = "insert into customer values (0,'"+name+"','"+email+"','"+phone+"','"+username+"','"+password+"')";
    		int rs = stmt.executeUpdate(sql);
    		
    		if(rs > 0) {
    			isSuccess = true;
    		} else {
    			isSuccess = false;
    		}
    		
    	}
    	catch (Exception e) {
    		e.printStackTrace();
    	}
 	
    	return isSuccess;
    }
    
    public static boolean updatecustomer(String id, String name, String email, String phone, String username, String password) {
    	
    	try {
    		
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "update customer set name='"+name+"',email='"+email+"',phone='"+phone+"',username='"+username+"',password='"+password+"'"
    				+ "where id='"+id+"'";
    		int rs = stmt.executeUpdate(sql);
    		
    		if(rs > 0) {
    			isSuccess = true;
    		}
    		else {
    			isSuccess = false;
    		}
    		
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}
    	
    	return isSuccess;
    }
 
    public static List<User> getCustomerDetails(String Id) {
    	
    ArrayList userDetails =new ArrayList()
	  //all user attrributes 
	    int userID;
	    String firstName;
	    String lastName;
	    String email;
	    String propic;
	    String userNamee;
	    String password;
	 //external user attribues 
	    String NIC;
		String phoneNo;
		String streetName;
		String city;
		String homeNo;
	    //Drivers attribute
		String carexpertLevel;
		String bikexpertLevel;
		String vanexpertLevel;
		String jeepexpertLevel;
		String driverlicense;
    	int convertedID = Integer.parseInt(Id);
    	
    	ArrayList<User> cus = new ArrayList<>();
    	
    	try {
    		
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "select * from customer where id='"+convertedID+"'";
    		rs = stmt.executeQuery(sql);
    		
    		while(rs.next()) {
    			int id = rs.getInt(1);
    			String name = rs.getString(2);
    			String email = rs.getString(3);
    			String phone = rs.getString(4);
    			String username = rs.getString(5);
    			String password = rs.getString(6);
    			
    			User c = new User(id,name,email,phone,username,password);
    			cus.add(c);
    		}
    		
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}	
    	return cus;	
    }
    
    
    public static boolean deleteCustomer(String id) {
    	
    	int convId = Integer.parseInt(id);
    	
    	try {
    		
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "delete from customer where id='"+convId+"'";
    		int r = stmt.executeUpdate(sql);
    		
    		if (r > 0) {
    			isSuccess = true;
    		}
    		else {
    			isSuccess = false;
    		}
    		
    	}
    	catch (Exception e) {
    		e.printStackTrace();
    	}
    	
    	return isSuccess;
    }
    
    
    
*/    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
