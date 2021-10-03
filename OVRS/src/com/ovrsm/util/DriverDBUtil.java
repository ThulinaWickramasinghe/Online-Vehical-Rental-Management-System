package com.ovrsm.util;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collections;

public class DriverDBUtil {
	private static boolean isSuccess;
	private static Connection con =null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	
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
}
