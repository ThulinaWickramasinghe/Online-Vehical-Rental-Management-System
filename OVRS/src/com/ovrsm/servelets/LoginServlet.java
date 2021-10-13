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
import javax.servlet.http.HttpSession;

import com.ovrsm.model.Customer;
import com.ovrsm.model.Driver;
import com.ovrsm.model.EmployeeManager;
import com.ovrsm.model.VehicleOwner;
import com.ovrsm.util.UserDBUtil;


@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("I am here");
    PrintWriter out = response.getWriter();
	response.setContentType("text/html");
		
		String userName = request.getParameter("username");
		String password = request.getParameter("password");
		
		String userType = UserDBUtil.validate(userName, password);
		
		if (userType!=null) {
			
			try{		
						HttpSession session=request.getSession();
			
			
						if (userType.equals("customer")) {
			
			
						Customer cus = UserDBUtil.getCustomer(userName);
						session.setAttribute("cusID", cus.getUserID());
						session.setAttribute("firtName", cus.getFirstName());
						session.setAttribute("lastName", cus.getLastName());
						session.setAttribute("email", cus.getEmail());
						session.setAttribute("propic", cus.getPropic());
						session.setAttribute("userNames", userName);
						System.out.println(userName);
						session.setAttribute("passwords", cus.getPassword());
						session.setAttribute("NIC", cus.getNIC());
						session.setAttribute("phoneNo", cus.getPhoneNo());
						session.setAttribute("streetName", cus.getStreetName());
						session.setAttribute("city", cus.getCity());
						session.setAttribute("homeNo", cus.getHomeNo());
						session.setAttribute("user", userType);
						System.out.println("I am  notsdffffffffffffffffffffffffffffff here");
						System.out.println(cus.getUserName());
						System.out.println(cus.getLastName());
						System.out.println(cus.getFirstName());
						System.out.println(cus.getHomeNo());
						response.sendRedirect("CustomerDashBoard.jsp");
						
							
						} else if(userType.equals("driver")){
							
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
							
							session.setAttribute("carexpertLevel",driver.getCarexpertLevel());
							
						
						
						
							session.setAttribute("user", userType);
				            session.setAttribute("bikeexpertLevel", driver.getBikeexpertLevel());
							session.setAttribute("vanexpertLevel", driver.getVanexpertLevel());
							session.setAttribute("jeepexpertLevel", driver.getVanexpertLevel());
							session.setAttribute("driverlicense", driver. getDriverlicense());
							System.out.println(driver.getUserName());
							System.out.println(driver.getLastName());
							System.out.println(driver.getFirstName());
							System.out.println(driver.getHomeNo());
						    response.sendRedirect("Driver-DashBoard.jsp");
						
						
							
						}else if(userType.equals("carowner")){
							
							VehicleOwner vehiowner = UserDBUtil.getVehicleOwner(userName);
							session.setAttribute("veOID", vehiowner.getUserID());
							session.setAttribute("firtName",vehiowner.getFirstName());
							session.setAttribute("lastName", vehiowner.getLastName());
							session.setAttribute("email", vehiowner.getEmail());
							session.setAttribute("propic",vehiowner.getPropic());
							session.setAttribute("userNames", userName);
							session.setAttribute("passwords", vehiowner.getPassword());
							session.setAttribute("NIC", vehiowner.getNIC());
							session.setAttribute("phoneNo", vehiowner.getPhoneNo());
							session.setAttribute("streetName", vehiowner.getStreetName());
							session.setAttribute("city", vehiowner.getCity());
							session.setAttribute("homeNo", vehiowner.getHomeNo());
							session.setAttribute("user", userType);
						    response.sendRedirect("VehicleOwnerDashBoard.jsp");
						
							
						}else if(userType.equals("emp")) {
							
							EmployeeManager emp = UserDBUtil.getEmployeeManager(userName);
							
							session.setAttribute("EmpID", emp.getUserID());
							session.setAttribute("firtName", emp.getFirstName());
							session.setAttribute("lastName", emp.getLastName());
							session.setAttribute("email", emp.getEmail());
							session.setAttribute("propic", emp.getPropic());
							session.setAttribute("userNames", userName);
							session.setAttribute("passwords", emp.getPassword());
						
							session.setAttribute("user", userType);
						    response.sendRedirect("EmployeeManagerDashBoard.jsp");
						
							
						}
			}catch(Exception e) {
				e.printStackTrace();
			}
		}else {
			
			System.out.println("Unsucess");
			
			out.println("<script type='text/javascript'>");
			out.println("alert('Your username or password is incorrect');");
			out.println("location='login.jsp?page=5'");
			out.println("</script>");
			
			
		}
		
		
		
		
		
		
	}

}
