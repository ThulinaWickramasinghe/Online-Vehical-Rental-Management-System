package com.ovrsm.servelets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ovrsm.util.CommonUtil;

/**
 * Servlet implementation class CommonServlet
 */
@WebServlet("/FeedBackServlet")
public class FeedBackServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String fullName=request.getParameter("fullName");
		
		String email =request.getParameter("email");
		String message=request.getParameter("message");
		
		boolean isSuccess=CommonUtil.storFeedback(email, fullName, message);
		if(isSuccess) {
	       System.out.println("FeedBack successfull");
			
			out.println("<script type='text/javascript'>");
			out.println("alert('FeedBack succesfully given');");
			out.println("location='index.jsp'");
			out.println("</script>");
		}else {
		    System.out.println("FeedBack unsuccessfull");
			
					out.println("<script type='text/javascript'>");
					out.println("alert('FeedBack unsuceesfull ');");
					out.println("location='feedBack.jsp'");
					out.println("</script>");
		}
		
		
	}

}
