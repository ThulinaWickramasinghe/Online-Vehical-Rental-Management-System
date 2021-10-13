package com.ovrsm.servelets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ovrsm.model.Driver;
import com.ovrsm.util.DriverDBUtil;
import com.ovrsm.util.UserDBUtil;

/**
 * Servlet implementation class DriverAccountUpdate
 */
@WebServlet("/DriverAccountUpdate")
public class DriverAccountUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		
		int userID=Integer.parseInt(request.getParameter("driverID"));
		String firstName=request.getParameter("firstName");
		String lastName=request.getParameter("lastName");
		String userName=request.getParameter("userNames");
		String password=request.getParameter("passwords");
		String email=request.getParameter("email");
		String propic=request.getParameter("propic");
		String NIC=request.getParameter("NIC");
		int phoneNo=Integer.parseInt(request.getParameter("phoneNo"));
		String homeNo=request.getParameter("homeNo");
		String streetName=request.getParameter("streetName");
		String city=request.getParameter("city");
		
		
		int number=DriverDBUtil.updateProfile(userID, firstName,lastName, userName,password, email, propic, NIC, phoneNo, homeNo, streetName, city);
	
	
	   if(number==3) {
		   
		 try {
			HttpSession session=request.getSession();
		    System.out.println("Sucess");
		    Driver driver = UserDBUtil.getDriver(userName);
			session.setAttribute("driverID",driver.getUserID());
			session.setAttribute("firstName", driver.getFirstName());
			session.setAttribute("lastName", driver.getLastName());
			session.setAttribute("email", driver.getEmail());
			session.setAttribute("propic", driver.getPropic());
			session.setAttribute("userNames", userName);
			session.setAttribute("passwords", driver.getPassword());
			session.setAttribute("NIC", driver.getNIC());
			session.setAttribute("phoneNo", driver.getPhoneNo());
			session.setAttribute("streetName", driver.getStreetName());
			session.setAttribute("city", driver.getCity());
			session.setAttribute("homeNo", driver.getHomeNo());
			
			response.sendRedirect("Driver-DashBoard.jsp");
		 }catch(Exception  e) {
			 e.printStackTrace();
		 }   
	   
		}
	   if(number==-1) {
		   System.out.println("Sucess");
			
			out.println("<script type='text/javascript'>");
			out.println("alert('User name already exists');");
			out.println("location='ProfileUpdate.jsp'");
			out.println("</script>");
	   }
	   if(number==1) {
		   System.out.println("Sucess");
			
			out.println("<script type='text/javascript'>");
			out.println("alert('Updating failed');");
			out.println("location='ProfileUpdate.jsp'");
			out.println("</script>");
	   }
	   if(number==2) {
		   System.out.println("Sucess");
			
			out.println("<script type='text/javascript'>");
			out.println("alert('Updation failed');");
			out.println("location='ProfileUpdate.jsp'");
			out.println("</script>");
	   }
	}

}
