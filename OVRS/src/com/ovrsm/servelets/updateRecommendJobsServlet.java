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
 * Servlet implementation class updateRecommendJobsServlet
 */
@WebServlet("/updateRecommendJobsServlet")
public class updateRecommendJobsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updateRecommendJobsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String resID = request.getParameter("resID");
		String cusID = request.getParameter("cusID");
		String driverID = request.getParameter("driverID");
		String managerID = request.getParameter("managerID");
		String dateTime = request.getParameter("dateTime");
		//String dateTime= (request.getParameter("date"))+" "+(request.getParameter("time"));
		String driverAccept = request.getParameter("driverAccept");
		String vehicleID = request.getParameter("vehicleID");
		
	
		
	    PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		boolean isSuccess;
		isSuccess=EmloyeeManagerUtil.updatejobs(resID,cusID,driverID,managerID,dateTime,driverAccept,vehicleID);
		if(isSuccess) {
            System.out.println("Sucess");
			
			out.println("<script type='text/javascript'>");
			out.println("alert('Updated successfully');");
			out.println("location='#'");
			out.println("</script>");
			
		}else {
			
            System.out.println("Unsucess");
			
			out.println("<script type='text/javascript'>");
			out.println("alert('Updation was not successful');");
			out.println("location='#'");
			out.println("</script>");
			
		}
	}

	
}
