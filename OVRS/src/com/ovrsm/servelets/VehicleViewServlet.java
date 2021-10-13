package com.ovrsm.servelets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ovrsm.model.*;
import com.ovrsm.util.VehicleOwnerUtil;
import java.util.List;
/**
 * Servlet implementation class VehicleViewServlet
 */
@WebServlet("/VehicleViewServlet")
public class VehicleViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//access the httpservletresuest and get the value of parameter named view
		int veOID=Integer.parseInt(request.getParameter("view"));
	    
		try {
			//get list of vehicle
		List <Vehicle> vehi=VehicleOwnerUtil.getVehicleDetails(veOID);
		//set request attribute named vehiDetails which can be used to fetch list of vehicle in vehicleview.jsp file 
		request.setAttribute("vehiDetails", vehi);
		}catch(Exception e) {
			e.printStackTrace();
		}
		//redirect user to vehicle view page
		RequestDispatcher dis =request.getRequestDispatcher("vehicleView.jsp");
		dis.forward(request, response);
	}

}
