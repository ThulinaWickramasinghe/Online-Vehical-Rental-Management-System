package com.connectionDB;
import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
	//change your url  and password accordingly
         	private static String url = "jdbc:mysql://localhost:33061/ovrs";
	        private static String userName = "root";
            private static String password = "12345678";
             private static Connection conn= null;
             private DBConnection() {
            	 
             }

             public  static Connection getDBConnection() {
            	 try {
            		 if(conn==null) {
            			 Class.forName("com.mysql.jdbc.Driver");
            			 conn=DriverManager.getConnection(url,userName,password);
            		 }
            		 System.out.println("Connection successful..");
            	 }catch(Exception e) {
            		 System.out.println("Connection failed...Please check your password url and userName does matches");
            		 e.printStackTrace(); 
            	 }
            	 
            	 return conn;
             }
}

