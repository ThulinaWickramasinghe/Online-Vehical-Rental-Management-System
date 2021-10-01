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
	
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
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
		
		boolean isSuccess=VehicleOwnerUtil.addVehicle(veOID, fuel_type, license_no, vehi_type,color, body_type, model, noOfPeeps, edition, 
				pricePerKm, specialNote, brand, registration,transmission,vehiclePic);
		
		if(isSuccess==true) {
			   System.out.println("Sucess");
				
				out.println("<script type='text/javascript'>");
				out.println("alert('Vehicle was  added successfully');");
				out.println("location='vehicleRental.jsp'");
				out.println("</script>");
			
		}else {
			 System.out.println("Unsucess");
				
				out.println("<script type='text/javascript'>");
				out.println("alert('Vehicle was not added successfully');");
				out.println("location='vehicleRental.jsp'");
				out.println("</script>");
			
		}
	}

}
