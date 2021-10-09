<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
  <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <jsp:include page="MainNavBar.jsp" />
<br/>
<h3>Customer requests</h3> 
 <sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/ovrs" user="root" password="12345678" />
 
 <sql:query var="rs" dataSource="${db}">
 select * from reservation
 </sql:query>
 <table>
 <c:forEach var="reservation"  items="${rs.rows}" >
 <tr>
 <td>
 
 <c:out value="${reservation.reservationID}"></c:out>  
 </td>
 <td>
 <c:out value="${reservation.cusID}"></c:out>  
 </td>
 <td>
 <c:out value="${reservation.vehicle_type}"></c:out>  
 </td>
 <td>
 <c:out value="${reservation.pickupdate}"></c:out>  
 </td>
 <td>
 <c:out value="${reservation.pickuptime}"></c:out>  
 </td>
 <td>
 <c:out value="${reservation.hours}"></c:out>  
 </td>
 <td>
 <c:out value="${reservation.days}"></c:out>  
 </td>
 <td>
 <c:out value="${reservation.minutes}"></c:out>  
 </td>
 <td>
 <c:out value="${reservation.driverexp}"></c:out>  
 </td>
 <td>
 <c:out value="${reservation.driverstatus}"></c:out>  
 </td>
 <td>
 <c:out value="${reservation.how_far}"></c:out>  
 </td>
 <td>
 <c:out value="${reservation.pickup_location}"></c:out>  
 </td>
 <td>
 <c:out value="${reservation.fullPaid}"></c:out>  
 </td>
 <td>
 <c:out value="${reservation.journey_status}"></c:out>  
 </td>
 </tr>
 </c:forEach>
</table>
<br/>
<h3> Drivers</h3>
<sql:query var="rs1" dataSource="${db}">
 select * from driver
 </sql:query>
 <table>
 <c:forEach var="driver"  items="${rs1.rows}" >
 <tr>
 <td>
 <c:out value="${driver.driverID}"></c:out>  
 </td>
 <td>
 <c:out value="${driver.carexpertLevel}"></c:out>  
 </td>
 <td>
 <c:out value="${driver.bikeexpertLevel}"></c:out>  
 </td>
 <td>
 <c:out value="${driver.vanexpertLevel}"></c:out>  
 </td>
 <td>
 <c:out value="${driver.jeepexpertLevel}"></c:out>  
 </td>
 <td>
 <c:out value="${driver.driverlicense}"></c:out>  
 </td>
 
 </tr>
 </c:forEach>
</table>
<br/>
<h3>Vehicles</h3>
<sql:query var="rs2" dataSource="${db}">
 select * from vehicle
 </sql:query>
 <table>
 <c:forEach var="vehicle"  items="${rs2.rows}" >
 <tr>
 <td>
 <c:out value="${vehicle.veOID}"></c:out>  
 </td>
 <td>
 <c:out value="${vehicle.vehicleID}"></c:out>  
 </td>
 <td>
 <c:out value="${vehicle.fuel_type}"></c:out>  
 </td>
 <td>
 <c:out value="${vehicle.license_no}"></c:out>  
 </td>
 <td>
 <c:out value="${vehicle.vehi_type}"></c:out>  
 </td>
 <td>
 <c:out value="${vehicle.color}"></c:out>  
 </td>
 <td>
  <c:out value="${vehicle.body_type}"></c:out>  
 </td>
 <td>
 <c:out value="${vehicle.model}"></c:out>  
 </td>
 <td>
 <c:out value="${vehicle.noOfPeeps}"></c:out>  
 </td>
 <td>
 <c:out value="${vehicle.edition}"></c:out>  
 </td>
 <td>
 <c:out value="${vehicle.pricePerKm}"></c:out>  
 </td>
 <td>
  <c:out value="${vehicle.specialNote}"></c:out>  
 </td>
 <td>
 <c:out value="${vehicle.brand}"></c:out>  
 </td>
 <td>
 <c:out value="${vehicle.registrationNo}"></c:out>  
 </td>
 <td>
 <c:out value="${vehicle.transmission}"></c:out>  
 </td>
 
 
 </tr>
 </c:forEach>
</table>
    <jsp:include page="footer.jsp" />