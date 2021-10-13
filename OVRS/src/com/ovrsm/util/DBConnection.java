package com.ovrsm.util;

import java.util.logging.Level;
import java.util.logging.Logger;
import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
	/*
	 * since client and server both parties are available in my machine host is localhost
	 * we have to give the port number and database schema name
	 */
         	 private static String url = "jdbc:mysql://localhost:3306/ovrs";
	         private static String userName = "root";
             private static String password = "12345678";
             private static Connection conn= null;
             
             //using singleton pattern to initiate the connection
             private DBConnection() {
            	 
             }

             public  static Connection getDBConnection() {
            	 try {
            		 if(conn==null ||conn.isClosed()) {
            			 //Load and register the JDBC Driver to initialize the driver
            			 
            			 Class.forName("com.mysql.jdbc.Driver");
            			 
            			 //open the connection
            			 conn=DriverManager.getConnection(url,userName,password);
            		 }
                  /*
                   * catches exceptions thrown when loading and registering JDBC driver   
                   * ClassNotFoundException
                   * SQL  Exception thrown by getConnection() method
                   */
            	 }catch(Exception e) {
            	
            		 e.printStackTrace(); 
            	 }
            	 
            	 
            	 
            	 return conn;
             }
}

