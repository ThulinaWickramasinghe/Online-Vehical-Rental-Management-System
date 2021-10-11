<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
        <%
      if(session.getAttribute("userNames")==null){
    	   response.sendRedirect("login.jsp");
     }
   
   %>
 <jsp:include page="MainNavBar.jsp" />
 <% 
       String id=request.getParameter("vehicleID");
 String fuel_type=request.getParameter("fuel_type");
 String license_no=request.getParameter("license_no");
 String vehi_type=request.getParameter("vehi_type");
 String color=request.getParameter("color");
 String model=request.getParameter("model");
 String body_type=request.getParameter("body_type");
 String brand=request.getParameter("brand");
 String edition=request.getParameter("edition");
 String registrationNo=request.getParameter("registrationNo");
 String specialNote=request.getParameter("specialNote");
 String pricePerKm=request.getParameter("pricePerKm" );
 String transmission=request.getParameter("transmission");
 String owneruserID=request.getParameter("owneruserID");
 String noOfPeeps=request.getParameter("noOfPeeps");
 
 
 %>
 <form action="updateVehicle" method="post">
 <table>
 
 <tr>
 <td>
 vehicleID
 </td>
 <td>
 <input name="vehicleID" value="<%=id %>" readonly/>
 </td>
 </tr>
 <tr>
  <td>
  Fuel type
 </td>
 <td>
 <input name="fuel_type" value="<%=fuel_type %>" />
 </td>
 </tr>
 <tr>
  <td>
  license Number
 </td>
 <td>
 <input name="license_no" value="<%=license_no%>" />
 </td>
 </tr>
 <tr>
  <td>Vehicle Type
 </td>
 <td>
 <input name="vehi_type" value="<%=vehi_type %>" />
 </td>
 </tr>
 <tr>
  <td>
  Color
 </td>
 <td>
 <input name="color" value="<%=color %>" />
 </td>
 </tr>
 <tr>
  <td>
  Model
 </td>
 <td>
 <input name="model"  value="<%= model%>" />
 </td>
 </tr>
  <tr>
  <td>
  No: of people
 </td>
 <td>
 <input name="noOfPeeps"  value="<%= noOfPeeps%>" />
 </td>
 </tr>
 <tr>
  <td>
 Body Type 
 </td>
 <td>
 <input name="body_type"  value="<%=body_type %>" />
 </td>
 </tr>
 <tr>
  <td>
 Brand
 </td>
 <td>
 <input  name="brand" value=<%= brand%> />
 </td>
 </tr>
 <tr>
  <td>
  Edition 
 </td>
 <td>
 <input name="edition"  value="<%=edition %>" />
 </td>
 </tr>
 <tr>
  <td>
  Registration Number
 </td>
 <td>
 <input name="registrationNo" value="<%= registrationNo%>" />
 </td>
 </tr>
 <tr>
  <td>
  Special Note
 </td>
 <td>
 <input  name="specialNote" value="<%=specialNote %>" />
 </td>
 </tr>
 <tr>
  <td>
  Price per KM
 </td>
 <td>
 <input name="pricePerKm"  value="<%=pricePerKm %>" />
 </td>
 </tr>
 <tr>
  <td>
  Transmission
 </td>
 <td>
 <input name="transmission" value="<%=transmission %>" />
 </td>
 </tr>

 <tr>
<td>
 <input name="veOID" value="${veOID}" hidden/>
 </td>
  <td>
 <input type="submit" value="update"/>
 </td>
</tr>
</table>
</form>
        <jsp:include page='footer.jsp' />