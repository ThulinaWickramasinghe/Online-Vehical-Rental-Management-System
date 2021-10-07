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
 * Servlet implementation class SignUpServlet
 */
@WebServlet("/SignUpServlet")
public class SignUpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
			
		String userType=request.getParameter("usertype");		
		String branch=null;
		String bank=null;
		int accountNo;
		String driverLicense=null;
		String carexpertLevel=null;
		String bikeexpertLevel=null;
		String vanexpertLevel=null;
		String jeepexpertLevel=null;
		String firstname=request.getParameter("firstname");
		String lastname=request.getParameter("lastname");
		String username=request.getParameter("username");	
		String password=request.getParameter("password");
		String nic=request.getParameter("nic");
		String email=request.getParameter("email");
		int  phonenumber=Integer.parseInt(request.getParameter("phonenumber"));
		String homeno=request.getParameter("homeno");
		String streetname=request.getParameter("streetname");
		String city=request.getParameter("city");
		if(userType.equals("driver")||userType.equals("vehicleOwner")) {
			bank=request.getParameter("bank");
			branch=request.getParameter("branch");
		    accountNo=Integer.parseInt(request.getParameter("accountnumber"));
		    if(userType.equals("driver")) {
		    	
		    	driverLicense=request.getParameter("driverLicense");
		    	carexpertLevel=request.getParameter("carexpertLevel");
		    	bikeexpertLevel=request.getParameter("bikeexpertLevel");
		    	vanexpertLevel=request.getParameter("vanexpertLevel");
		    	jeepexpertLevel=request.getParameter("jeepexpertLevel");
		    }
		}
		
		boolean isSucess=UserDBUtil.insertUser(firstname, lastname, username, password, email, nic, phonenumber, homeno, streetname, city, userType, bank, branch, carexpertLevel, bikeexpertLevel, vanexpertLevel, driverLicense, jeepexpertLevel);
		if(isSucess) {
            System.out.println("Sucessfully user Created");
			
			out.println("<script type='text/javascript'>");
			out.println("alert('Welcome to our comunity please login');");
			out.println("location='login.jsp'");
			out.println("</script>");
		}else {
		    System.out.println(" User creation unsuccessfull please check again");
			
					out.println("<script type='text/javascript'>");
					out.println("alert('Please check your details again');");
					out.println("location='Register.jsp'");
					out.println("</script>");
		}
	}

}
