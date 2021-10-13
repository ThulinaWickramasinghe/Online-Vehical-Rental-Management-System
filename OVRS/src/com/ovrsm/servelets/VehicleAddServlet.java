package com.ovrsm.servelets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ovrsm.model.Vehicle;
import com.ovrsm.util.VehicleOwnerUtil;

/**
 * Servlet implementation class VehicleReservationServelet
 */
@WebServlet("/VehicleReservationServelet")
public class VehicleAddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
   
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		//Use a print writer object to write html  content as response
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		//Access httpservletrequest parameter and get the values of given parameter name
	    //get the vehicle details
		int veOID=Integer.parseInt(request.getParameter("veOID"));
		String fuel_type=request.getParameter("fuelType");
		String license_no=request.getParameter("licenseNo");
		String vehi_type=request.getParameter("vehicleType");
		String color=request.getParameter("Color");
		String body_type=request.getParameter("bodyType");
		String model=request.getParameter("model");
		int noOfPeeps=Integer.parseInt(request.getParameter("maxPas"));
		String edition=request.getParameter("tried");
		double pricePerKm=Double.valueOf(request.getParameter("pricePerKm"));
		String specialNote=request.getParameter("specialNote");
		String brand=request.getParameter("brand");
		String registration=request.getParameter("registrationNo");
		String transmission=request.getParameter("transmission");
		String vehiclePic=null;
		
		//returns true if the vehicle is added successfully else false 
		boolean isSuccess=VehicleOwnerUtil.addVehicle(veOID, fuel_type, license_no, vehi_type,color, body_type, model, noOfPeeps, edition, 
				pricePerKm, specialNote, brand, registration,transmission,vehiclePic);
		//check if the adding vehicle is successful
		if(isSuccess==true) {
			  
				//Alert user that vehicle is added successfully
			    //redirect user to the vehicle rental page
				out.println("<script type='text/javascript'>");
				out.println("alert('Vehicle was  added successfully');");
				out.println("location='vehicleRental.jsp'");
				out.println("</script>");
			
		}else {
			   //if the vehicle addition is not sucessful alert user and redirect to vehicle rental page
				
				out.println("<script type='text/javascript'>");
				out.println("alert('Vehicle was not added successfully');");
				out.println("location='vehicleRental.jsp'");
				out.println("</script>");
			
		}
	}

}
