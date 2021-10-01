package com.ovrsm.servelets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ovrsm.util.EmloyeeManagerUtil;

/**
 * Servlet implementation class RecommendJobs
 */
@WebServlet("/RecommendJobs")
public class RecommendJobsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		int reservationID=Integer.parseInt(request.getParameter("reserveID"));
		int cusID=Integer.parseInt(request.getParameter("cusID"));
		int driverID=Integer.parseInt(request.getParameter("driverID"));
		int managerID=Integer.parseInt(request.getParameter("managerID"));
		
		String dateTime= (request.getParameter("date"))+" "+(request.getParameter("time"));
		int vehicleID=Integer.parseInt(request.getParameter("vehicleID"));
		boolean isSuccess=EmloyeeManagerUtil.assignJobs(reservationID, cusID, driverID, managerID, dateTime,vehicleID);
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		if(isSuccess) {
            System.out.println("Sucess");
			
			out.println("<script type='text/javascript'>");
			out.println("alert('Job is created successfully');");
			out.println("location='#'");
			out.println("</script>");
			
		}else {
			
            System.out.println("Unsucess");
			
			out.println("<script type='text/javascript'>");
			out.println("alert('Job creation was not successful');");
			out.println("location='#'");
			out.println("</script>");
			
		}
		
	
		
	}

}
