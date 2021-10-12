package com.ovrsm.util;

import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.ovrsm.model.*;


public class UserDBUtil {
	
	private static String isSuccess;
	private static Connection con =null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
    
	public static final Logger log = Logger.getLogger(UserDBUtil.class.getName());
	public static String validate(String username, String password) {
		System.out.println("I was called");
		try {
			con = DBConnection.getDBConnection();
			stmt = con.createStatement();
			String sql = "select * from user where userName='"+username+"' and password='"+password+"'";
			rs = stmt.executeQuery(sql);
		    int userID=0;
		
			if (rs.next()) {
			
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
					
					isSuccess="driver";
					return isSuccess;
				}
				String sql3 = "select * from vehicleOwner where veOID='"+userID+"'";
					
			   rs=stmt.executeQuery(sql3);
				if(rs.next()) {
					
					isSuccess="carowner";
					return isSuccess;
				}
				String sql4 = "select * from customer where cusID='"+userID+"'";
					
				rs=stmt.executeQuery(sql4);
				if(rs.next()) {
				
					isSuccess="customer";
					return isSuccess;
				}
				
			
			} else {
		
				isSuccess = null;
			}
			
		} catch(Exception e) {
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
	
	public static VehicleOwner getVehicleOwner(String userName) {
	    VehicleOwner vehicleOwner=null;
	    
		  //all user attrributes 
	
	    String firstName = null;
	    String lastName = null;
	    String email=null;
	    String propic=null;
	  
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
																			
																																														
		                                       stmt = con.createStatement();
												rs = stmt.executeQuery(sql);
												
												while (rs.next()) {
													   userID = rs.getInt(1);
													   firstName=rs.getString(2);			
											           lastName=rs.getString(3);	
											           userName=rs.getString(4);	
											           password=rs.getString(5);	
													   email=rs.getString(6);
													   propic=rs.getString(7);
									
												
												}
												String sql1 = "select * from externaluser where exuserID='"+userID+"'";
												stmt = con.createStatement();
												rs = stmt.executeQuery(sql1);
												while(rs.next()) {
													NIC=rs.getString(2);
													phoneNo=rs.getString(3);
													homeNo=rs.getString(4);
													streetName=rs.getString(5);				
											        city=rs.getString(6);
												} 
											
										
									
										vehicleOwner = new VehicleOwner(userID,firstName,lastName,email,propic,
												  userName,password,NIC,phoneNo,streetName,city,homeNo);
										
										
						 
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
		
		
				return vehicleOwner;
	}
		
	public static Customer getCustomer(String userName) {
	   Customer customer=null;

		  //all user attrributes 
	
	    String firstName = null;
	    String lastName = null;
	    String email=null;
	    String propic=null;
	  
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
							
							String sql = "select * from user where username='"+userName+"'";
						
							
							
							
							
												
												stmt = con.createStatement();
												rs = stmt.executeQuery(sql);
											
											
												
												
												while (rs.next()) {
													   userID = rs.getInt(1);
													   firstName=rs.getString(2);			
											           lastName=rs.getString(3);	
											           userName=rs.getString(4);
											          
											           password=rs.getString(5);	
													   email=rs.getString(6);
													   propic=rs.getString(7);
												
												}
												String sql1 = "select * from externaluser where exuserID='"+userID+"'";
												stmt = con.createStatement();
												rs = stmt.executeQuery(sql);
												
												
												while(rs.next()) {
													NIC=rs.getString(2);
													phoneNo=rs.getString(3);
													homeNo=rs.getString(4);
													streetName=rs.getString(5);				
											        city=rs.getString(6);
												}    
												
									
										 
										 
										  customer = new Customer(userID,firstName,lastName,email,propic,
												  userName,password,NIC,phoneNo,streetName,city,homeNo);	
										  
										 
						
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
		
		
				return customer;
	}
	public static Driver getDriver(String userName) {
	    Driver driver=null;
	   
		  //all user attrributes 
	
	    String firstName = null;
	    String lastName = null;
	    String email=null;
	    String propic=null;
	  
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
						
							String sql = "select * from user where username='"+userName+"'";
						
						
												
												
											
											
											
											
							                   stmt = con.createStatement();
												rs = stmt.executeQuery(sql);
												
												
												
												
												while (rs.next()) {
													  userID = rs.getInt(1);
													   firstName=rs.getString(2);			
											           lastName=rs.getString(3);	
											           userName=rs.getString(4);	
											           password=rs.getString(5);	
													   email=rs.getString(6);
													   propic=rs.getString(7);
												
												}
												
												String sql1 = "select * from externaluser where exuserID='"+userID+"'";
												stmt = con.createStatement();
												rs = stmt.executeQuery(sql1);
												while(rs.next()) {
													NIC=rs.getString(2);
													phoneNo=rs.getString(3);
													homeNo=rs.getString(4);
													streetName=rs.getString(5);				
											        city=rs.getString(6);
												}
												
												String sql2 = "select * from driver where driverID='"+userID+"'";
												stmt = con.createStatement();
												rs = stmt.executeQuery(sql2);
												while(rs.next()) {
													carexpertLevel=rs.getString(2);
													bikeexpertLevel=rs.getString(3);
													vanexpertLevel=rs.getString(4);
													driverlicense=rs.getString(5);				
													jeepexpertLevel=rs.getString(6);
												} 
											
										

												
										driver = new Driver(userID,firstName,lastName,email,propic,
												  userName,password,NIC,phoneNo,streetName,city,homeNo,
												  carexpertLevel,bikeexpertLevel,vanexpertLevel,jeepexpertLevel,
												  driverlicense);	
								
							  
						
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
		
		
				return driver;
	}
	public static EmployeeManager getEmployeeManager(String userName) {
		EmployeeManager emp=null;
	  
		
		  //all user attrributes 
	
	    String firstName = null;
	    String lastName = null;
	    String email=null;
	    String propic=null;
	   
	    String password=null;
	
	
		
		int userID=0;	
		try {	
							con = DBConnection.getDBConnection();
				
							String sql = "select * from user where username='"+userName+"'";
					
							
							rs = stmt.executeQuery(sql);
							
						
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
										 userName,password);
										
											

									
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
		
		
				return emp;
	}
		
	
  public static boolean insertUser(String firstName, String lastName, String userName, String password, String email, String NIC,int phoneNo, String homeNo, String streetName, String city, Object userType, String bankName, String branchName, String carexpertLevel, String bikeexpertLevel, String vanexpertLevel,String driverlicense,String jeepexperLevel, int accountNo) {
    	
    	boolean isSuccess = false;
    	
    	try {
    		con = DBConnection.getDBConnection();
 		   
		    String query="insert into user(firstName,lastName,userName,password,email)"
		    		+ "values(?,?,?,?,?)";
		    
		    System.out.println("My password is"+password);
		    PreparedStatement ps=con.prepareStatement(query,Statement.RETURN_GENERATED_KEYS);
			//int r = stmt.executeUpdate(query);
		    ps.setString(1, firstName);
		    ps.setString(2, lastName);
		    ps.setString(3, userName);
		    ps.setString(4, password);
			ps.setString(5, email);
		
	
			ps.addBatch();
		
	
			ps.executeBatch();
			
			
			rs=ps.getGeneratedKeys();
		
    		
    	int userID=0;
    	 
    	while(rs.next()) {
    		userID=rs.getInt(1);
		}
    
    	String sql="insert into externaluser values('"+userID+"','"+NIC+"','"+
    	    	phoneNo+"','"+homeNo+"','"+streetName+"','"+city+"')";
    	       
    	stmt = con.createStatement();
    	
       int  rs2 = stmt.executeUpdate(sql);
        if(rs2>0) {
        	
        	
        	if(userType.equals("customer")) {
        		stmt = con.createStatement();
              	String sql1="insert into customer values('"+userID+"')";
            	       
               int  rs3 = stmt.executeUpdate(sql1);
                if(rs3>0) {
                	
                	isSuccess=true;
                }else {
                	
                	isSuccess=false;
                }
        	}else if(userType.equals("vehicleOwner")||userType.equals("driver")) {
        	stmt = con.createStatement();
          	String sql1="insert into vendor values('"+userID+"')";
        	       
           int rs4 = stmt.executeUpdate(sql1);
             if(rs4>0) {
            
            	stmt = con.createStatement();
              	String sql2="insert into bankaccount values('"+accountNo+"','"+userID+"','"+bankName+"','"+branchName+"')";
            	       
               int  rs5 = stmt.executeUpdate(sql2);
              
                
                
                if(userType.equals("vehicleOwner")) {
                			stmt = con.createStatement();
                			String sql3="insert into vehicleowner values('"+userID+"')";
            	       
                			int rs7 = stmt.executeUpdate(sql3);
                				if(rs7>0){
                						
                						isSuccess=true;
                				}else {
                				
            						isSuccess=false;
                				}
                }else {
                			stmt = con.createStatement();
                			String sql3="insert into driver values('"+userID+"','"+carexpertLevel+"','"+bikeexpertLevel+"','"+vanexpertLevel+"','"+driverlicense+"','"+ jeepexperLevel+"')";
                	       
                			int rs6 = stmt.executeUpdate(sql3);
                			if(rs6>0){
                				
                				isSuccess=true;
                			}else {
                			
                				isSuccess=false;
                			}
                }
             }
            
        	}
        
        }
    		
    	}
    	catch(Exception e) {
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
