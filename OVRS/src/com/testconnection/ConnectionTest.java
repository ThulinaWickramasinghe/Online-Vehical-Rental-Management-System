package com.testconnection;

import com.connectionDB.*;
import java.sql.*;
public class ConnectionTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
      Connection conn = DBConnection.getDBConnection();
	  try {
		  String query ="select *from user";
		  Statement statement = conn.createStatement();
		  ResultSet resultSet = statement.executeQuery(query);
		  while(resultSet.next()) {
			  System.out.println(resultSet.getString(1)+" "+resultSet.getString(2));
		  }
		  //forgot to close connection
		  conn.close();
	  }catch(Exception e) {
		  System.out.println("Got some error during connectin.");
	  }
	}

}
