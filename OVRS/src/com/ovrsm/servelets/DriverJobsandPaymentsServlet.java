package com.ovrsm.servelets;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ovrsm.model.Payment;
import com.ovrsm.model.RecommendJob;
import com.ovrsm.util.DriverDBUtil;


@WebServlet("/DriverJobsandPaymentsServlet")
public class DriverJobsandPaymentsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	  
		int driverID= Integer.parseInt(request.getParameter("driverID"));
	     
	    
	
	   try{
	         List<RecommendJob> recommendedjobs=DriverDBUtil.getJobs(driverID);
	         List<Payment> payments=DriverDBUtil.getPayments(driverID);
	         request.setAttribute("jobs", recommendedjobs);
	    	 request.setAttribute("pays", payments);
			}catch(Exception e) {
				System.out.println("NUmber");
				e.printStackTrace();
			}
			RequestDispatcher dis =request.getRequestDispatcher("ViewJobs.jsp");
			dis.forward(request, response);
	    	 
	    
		
	}

}
