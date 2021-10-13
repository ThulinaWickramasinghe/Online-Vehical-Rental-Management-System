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


@WebServlet("/VehicleDeleteServlet")
public class VehicleDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Use a print writer object to write html  content as response
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		//Access httpservletrequest parameter and get the values of given parameter name
	    //get the veicle owner details and vehicle details
		int veOID=Integer.parseInt(request.getParameter("veOID"));
		int vehicleID=Integer.parseInt(request.getParameter("vehicleID"));
		
		boolean isSuccess=VehicleOwnerUtil.removeVehicle(vehicleID, veOID);
		if(isSuccess) {
			  try {
				  //get list of remaining vehicle
					List <Vehicle> vehi=VehicleOwnerUtil.getVehicleDetails(veOID);
					//set request attribute named vehiDetails which can be used to fetch list of vehicle in vehicleview.jsp file 	
					request.setAttribute("vehiDetails", vehi);
					}catch(Exception e) {
						e.printStackTrace();
					}
				//send the request to vehicleView.jsp file using requestDispatcher
					RequestDispatcher dis =request.getRequestDispatcher("vehicleView.jsp");
					dis.forward(request, response);
		}else {
			  //alert user that the vehicle deletion is failed
				out.println("<script type='text/javascript'>");
				out.println("alert('Vehicle deletion failed');");
				out.println("location='vehiclRental.jsp'");
				out.println("</script>");
			 
		}
	}

}
