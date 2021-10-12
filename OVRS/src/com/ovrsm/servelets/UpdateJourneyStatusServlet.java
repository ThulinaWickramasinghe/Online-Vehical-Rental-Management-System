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

import com.ovrsm.model.Payment;
import com.ovrsm.model.RecommendJob;
import com.ovrsm.util.DriverDBUtil;

/**
 * Servlet implementation class UpdateJourneyStatusServlet
 */
@WebServlet("/UpdateJourneyStatusServlet")
public class UpdateJourneyStatusServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	    PrintWriter out = response.getWriter();
	    response.setContentType("text/html");
		
		int resID=Integer.parseInt(request.getParameter("resID"));
		int cusID=Integer.parseInt(request.getParameter("cusID"));
	
		int driverID=Integer.parseInt(request.getParameter("driverID"));
		
		boolean updated=DriverDBUtil.updateJourneyStatus(resID, cusID);
	   
		if(updated) {
			 System.out.println("updation sucessfully");
				
				out.println("<script type='text/javascript'>");
				out.println("alert('Journey Status is updated <br> you will get  paid soon');");
				out.println("location='login.jsp?page=5'");
				out.println("</script>");
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
			    	 
		}else {
	      System.out.println("updation unsucessfully");
			
			out.println("<script type='text/javascript'>");
			out.println("alert('Journey Status is not updated');");
			out.println("location='login.jsp?page=5'");
			out.println("</script>");
			
		}
	}
}
