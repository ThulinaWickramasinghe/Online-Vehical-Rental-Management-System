package com.ovrsm.servelets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ovrsm.util.UserDBUtil;

/**
 * Servlet implementation class DriverAccountDelete
 */
@WebServlet("/DriverAccountDelete")
public class DriverAccountDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
	    PrintWriter out = response.getWriter();
	    response.setContentType("text/html");
         
	    int userID=Integer.parseInt(request.getParameter("driverID"));
         
        boolean isSuccess=UserDBUtil.deleteUser(userID);
        
        if(isSuccess) {
        	
			System.out.println("Deletion successful");
			
			out.println("<script type='text/javascript'>");
			out.println("alert('You have deleted your account');");
			out.println("location='login.jsp?page=5'");
			out.println("</script>");
        }else {
        	
			System.out.println("Deletion unsuccessful");
			
			out.println("<script type='text/javascript'>");
			out.println("alert('Account deletion was  not successful');");
			out.println("location='Driver-DashBoard.jsp?page=7'");
			out.println("</script>");
        }
	}

}
