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
 * Servlet implementation class JobRemoveServlet
 */
@WebServlet("/JobRemoveServlet")
public class JobRemoveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	    PrintWriter out = response.getWriter();
	    response.setContentType("text/html");
		
		int resID=Integer.parseInt(request.getParameter("resID"));
		int cusID=Integer.parseInt(request.getParameter("cusID"));
		int empID=Integer.parseInt(request.getParameter("empID"));
		int driverID=Integer.parseInt(request.getParameter("driverID"));
		
		boolean deleted=DriverDBUtil.removeJob(resID, cusID, driverID, empID);
	   
		if(deleted) {

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
	      System.out.println("Deleted unsucessfully");
			
			out.println("<script type='text/javascript'>");
			out.println("alert('Job is not rejected successfully');");
			out.println("location='login.jsp?page=5'");
			out.println("</script>");
			
		}
	
	
	}

}
