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
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		
		int veOID=Integer.parseInt(request.getParameter("veOID"));
		int vehicleID=Integer.parseInt(request.getParameter("vehicleID"));
		
		boolean isSuccess=VehicleOwnerUtil.removeVehicle(vehicleID, veOID);
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
				out.println("alert('Vehicle deletion failed');");
				out.println("location='vehiclRental.jsp'");
				out.println("</script>");
			 
		}
	}

}
