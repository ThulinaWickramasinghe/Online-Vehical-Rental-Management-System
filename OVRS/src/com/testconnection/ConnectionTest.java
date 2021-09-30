package com.testconnection;

import java.sql.*;

import com.ovrsm.util.*;
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
		  
		  conn.close();
	  }catch(Exception e) {
		  System.out.println("Got some error during connectin.");
	  }
	}

}
