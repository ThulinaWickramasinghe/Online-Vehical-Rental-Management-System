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
 * Servlet implementation class VehicleUpdateServlet
 */
@WebServlet("/VehicleUpdateServlet")
public class VehicleUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//Use a print writer object to write html  content as response
	
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		//Access httpservletrequest parameter and get the values of given parameter name
		//get all the  veicle details which has been sent to update as request
		int vehicleID=Integer.parseInt(request.getParameter("vehicleID"));
		 String fuel_type=request.getParameter("fuel_type");
		 String license_no=request.getParameter("license_no");
		 String vehi_type=request.getParameter("vehi_type");
		 String color=request.getParameter("color");
         String	model=request.getParameter("model");	
	      int  noOfPeeps=Integer.parseInt(request.getParameter("noOfPeeps"));
         String body_type=request.getParameter("body_type");
	     String brand=request.getParameter("brand");
	     String edition=request.getParameter("edition");
	     String registrationNo=request.getParameter("registrationNo");
	     String specialNote=request.getParameter("specialNote");
	     double pricePerKm=Double.valueOf(request.getParameter("pricePerKm"));
	     String transmission=request.getParameter("transmission");
	     int veOID=Integer.parseInt(request.getParameter("veOID"));
	     
	     //return true or false if the vehicle updating is failed
	     boolean isSuccess=VehicleOwnerUtil.updateVehicle(veOID, vehicleID, fuel_type, license_no, vehi_type, color, body_type, model, noOfPeeps, edition, pricePerKm, specialNote, brand, registrationNo, transmission);
	   if(isSuccess) {
		   try {
			 //get list of vehicle
				List <Vehicle> vehi=VehicleOwnerUtil.getVehicleDetails(veOID);
				//set request attribute named vehiDetails which can be used to fetch list of vehicle in vehicleview.jsp file 	
				request.setAttribute("vehiDetails", vehi);
				
				//catches any thrown exception
				}catch(Exception e) {
					e.printStackTrace();
				}
			//send the request to vehicleView.jsp file using requestDispatcher
				RequestDispatcher dis =request.getRequestDispatcher("vehicleView.jsp");
				dis.forward(request, response);
	   }else {
		 
			//alert user that vehicle details updating failed using java script
		   //redirect user to the vehicleRental page
			out.println("<script type='text/javascript'>");
			out.println("alert('Vehicle Updation failed');");
			out.println("location='vehicleRental.jsp'");
			out.println("</script>");
	   }
	
	
	}

}
