<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <%
      if(session.getAttribute("userNames")==null){
    	   response.sendRedirect("login.jsp");
     }
   
 %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<a href="vehicleRental.jsp">Click here to go to rent a vehicle page</a>
   <br/>
   <br/> 
    <c:forEach var="vehi" items="${vehiDetails}">
     ${vehi.vehicleID}
     ${vehi.fuel_type}
     ${vehi.license_no} 
     ${vehi.vehi_type}
     ${vehi.color}    
    
    </c:forEach>
</body>
</html>