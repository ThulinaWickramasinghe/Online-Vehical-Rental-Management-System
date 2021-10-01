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
 * Servlet implementation class DeleteRecommendJobServlet
 */
@WebServlet("/DeleteRecommendJobServlet")
public class DeleteRecommendJobServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		 int reservationID =Integer.parseInt(request.getParameter("reservationID"));

		 boolean isSuccess=EmloyeeManagerUtil.deleteJobs(reservationID);
		 
			if(isSuccess) {
	            System.out.println("Sucess");
				
				out.println("<script type='text/javascript'>");
				out.println("alert('Job is Deleted successfull');");
				out.println("location='#'");
				out.println("</script>");
				
			}else {
				
	            System.out.println("Unsucess");
				
				out.println("<script type='text/javascript'>");
				out.println("alert('Job Deletion was not successfull');");
				out.println("location='#'");
				out.println("</script>");
				
			}
	}

}
