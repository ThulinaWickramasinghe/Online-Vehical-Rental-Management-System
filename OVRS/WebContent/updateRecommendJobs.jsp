<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	<style type="text/css">
		table {
  			border-collapse: collapse;
		}

		table, th, td {
		  border: 1px solid black;
		}
	</style>
</head>
<body>

	<%
		String resID = request.getParameter("resID");
		String cusID = request.getParameter("cusID");
		String driverID = request.getParameter("driverID");
		String managerID = request.getParameter("managerID");
		String dateTime = request.getParameter("dateTime");
		//String dateTime= (request.getParameter("date"))+" "+(request.getParameter("time"));
		String driverAccept = request.getParameter("driverAccept");
		String vehicleID = request.getParameter("vehicleID");
	%>
	
	
	<form action="update" method="post">
	<table>
		<tr>
			<td>reservationID</td>
			<td><input type="text" name="resID" value="<%=resID %>readonly"></td>
		</tr>
		<tr>
			<td>CustomerID</td>
			<td><input type="text" name="cusID" value="<%= cusID %> readonly"></td>
		</tr>
		<tr>
		<td>DriverID</td>
		<td><input type="text" name="driverID" value="<%= driverID%>"></td>
	</tr>
	<tr>
		<td>ManagerID</td>
		<td><input type="text" name="managerID" value="<%=managerID %> readonly"></td>
	</tr>
	<tr>
		<td>DateTime</td>
		<td><input type="text" name="dateTime" value="<%=dateTime %>"></td>
	</tr> 
	<tr>
		<td>VehicleID</td>
		<td><input type="text" name="vehicleID" value="<%=vehicleID %>"></td>
	</tr>	
	<tr>
		<td>DriverAccept</td>
		<td><input type="text" name="driverAccept" value="<%= driverAccept %>"></td>
	</tr>		
	</table>
	<br>
	<input type="submit" name="submit" value="Update">
	</form>

</body>
</html>