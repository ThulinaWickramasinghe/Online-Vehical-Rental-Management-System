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
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		
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
	     boolean isSuccess=VehicleOwnerUtil.updateVehicle(veOID, vehicleID, fuel_type, license_no, vehi_type, color, body_type, model, noOfPeeps, edition, pricePerKm, specialNote, brand, registrationNo, transmission);
	   if(isSuccess) {
		   try {
				List <Vehicle> vehi=VehicleOwnerUtil.getVehicleDetails(veOID);
				request.setAttribute("vehiDetails", vehi);
				}catch(Exception e) {
					e.printStackTrace();
				}
				RequestDispatcher dis =request.getRequestDispatcher("vehicleView.jsp");
				dis.forward(request, response);
	   }else {
		   System.out.println("Unsucess");
			
			out.println("<script type='text/javascript'>");
			out.println("alert('Vehicle Updation failed');");
			out.println("location='vehicleRental.jsp'");
			out.println("</script>");
	   }
	
	
	}

}
