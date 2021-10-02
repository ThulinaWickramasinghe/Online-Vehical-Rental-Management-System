package com.ovrsm.servelets;

import java.time.format.DateTimeFormatter;  
import java.time.LocalDateTime; 
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ovrsm.util.CustomerDBUtill;

/**
 * Servlet implementation class VehicleReservationServlet
 */
@WebServlet("/VehicleReservationServlet")
public class VehicleReservationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		
		
		
	  
	      int cusID=Integer.parseInt(request.getParameter("cusID"));
	    
	      String vehicleType=request.getParameter("vehicleType");	
	      String pickUpDate = request.getParameter("pickupDate");
	      String pickupTime = request.getParameter("pickupTime");
	      int hours =Integer.parseInt(request.getParameter("hours"));
	      int days =Integer.parseInt(request.getParameter("days"));
	      int minutes=Integer.parseInt(request.getParameter("minutes"));
	      int driverStatus=Integer.parseInt(request.getParameter("driverStatus"));
	      double how_far=Double.valueOf(request.getParameter("howFar"));
	      String expLevel =request.getParameter("explevel");
	      String pickUpLocation=request.getParameter("pickUpLocation");
	      String recieptNumber=request.getParameter("recieptNumber");
	      double amount=Double.valueOf(request.getParameter("prePay"));
	     //fullPaid and Journey_Status has to be changed Later;
	      //
	      DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
	      
	      LocalDateTime now = LocalDateTime.now();  
	      String dateTime=dtf.format(now);
	      
	      int reservationID=CustomerDBUtill.makeReservation(cusID, vehicleType, pickUpDate, pickupTime, hours, days, minutes,expLevel, driverStatus, how_far, pickUpLocation );
	      System.out.println(reservationID);
	      if( reservationID>0) {
	    	  System.out.println("I was sucessed");
	    	 	      
		     
		      System.out.println("I 8888");
		      String paymentType="debited";
		      System.out.println("I 8888ere");
		      String paymethod="receipt";
		      System.out.println("I 8888dfsdf");
		      boolean isSuccess=CustomerDBUtill.makePayment(amount,paymentType,dateTime,paymethod,reservationID,cusID,recieptNumber);
		    
		      if(isSuccess) {
		    	  
		             RequestDispatcher rd=request.getRequestDispatcher("VehicleReservation.jsp");
		             rd.forward(request, response);
		      }else {
		    	  System.out.println("Unsucess Payment");
					
					out.println("<script type='text/javascript'>");
					out.println("alert('Payment is not Completed');");
					out.println("location='VehicleReservation.jsp'");
					out.println("</script>"); 
		    	  
		      }
	      }else {
	    	  
	    	    System.out.println("Unsucess");
				
				out.println("<script type='text/javascript'>");
				out.println("alert('Reservation is not Completed');");
				out.println("location='VehicleReservation.jsp'");
				out.println("</script>");
	      }
	      
	    
	   
	}

}
