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
	
		//Use a print writer object to write html  content as response
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		
		
		
		//Access httpservletrequest parameter and get the values of given parameter name
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
	      
	      //get current date and time which will be later used to set  payment made time 
	      DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
	      
	      LocalDateTime now = LocalDateTime.now();  
	      String dateTime=dtf.format(now);
	      
	      //return the reservation ID which is generated 
	      int reservationID=CustomerDBUtill.makeReservation(cusID, vehicleType, pickUpDate, pickupTime, hours, days, minutes,expLevel, driverStatus, how_far, pickUpLocation );
	//reservation id always more than zero and if it is more than  zero reservation is successfull
	      
	      if( reservationID>0) {
	    	
	    	 	      		     
	//Payment always debit for the customer	
		      String paymentType="debited";
	//And the payment type always receipt payment	    
		      String paymethod="receipt";
	//if the payment is successful it returns true	 
		      boolean isSuccess=CustomerDBUtill.makePayment(amount,paymentType,dateTime,paymethod,reservationID,cusID,recieptNumber);
		    //check if the payment is successful		    
		      if(isSuccess) {
		    	  //if the reservation is successful redirect user to the vehicle reservation page
		             RequestDispatcher rd=request.getRequestDispatcher("VehicleReservation.jsp");
		             rd.forward(request, response);
		      }else {
		    	 
					/*Alert user that payment is not successful
					 * if the payment was not successful redirect user to vehicle reservation page
					 *
					 */
					out.println("<script type='text/javascript'>");
					out.println("alert('Payment is not Completed');");
					out.println("location='VehicleReservation.jsp'");
					out.println("</script>"); 
		    	  
		      }
	      }else {
	    	  
	    	 
				/*
				 * Alert user that reservation is not completed
				 * Reservation is not completed.
				 */
				out.println("<script type='text/javascript'>");
				out.println("alert('Reservation is not Completed');");
				out.println("location='VehicleReservation.jsp'");
				out.println("</script>");
	      }
	      
	    
	   
	}

}
