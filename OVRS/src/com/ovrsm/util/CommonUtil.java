package com.ovrsm.util;


import java.util.logging.Level;
import java.util.logging.Logger;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class CommonUtil {
	private static boolean isSuccess;
	private static Connection con =null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	public static final Logger log = Logger.getLogger( CommonUtil.class.getName());
	public  static  boolean storFeedback(String email,String fullName,String message) {
		
		
		
		try {
			con = DBConnection.getDBConnection();
			stmt = con.createStatement();
			String sql = "insert into feed_back values('"+0+"','"+fullName+"','"+email+"','"+message+"')";
			int rs = stmt.executeUpdate(sql);
			if(rs>0) {
				System.out.println("FeedBack success");
				isSuccess=true;
			}else {
				System.out.println("FeedBack unsuccess");
				isSuccess=false;
			}
		}catch(Exception e) {
			log.log(Level.SEVERE, e.getMessage());
		}finally {
			try {
				if (stmt != null) {
					stmt.close();
				}
				if (con != null) {
					con.close();
				}
				
				
			}catch(SQLException e) {
				log.log(Level.SEVERE,e.getMessage());
			}
			
		}
		
		
		return isSuccess;
	}
}
