
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
<title>Employee Manager Dashboard</title>

        <!--naviagtion bar-->

        <!--end of naviagtion bar-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
<!-- <link rel="stylesheet" href="css/emp_mng.css"> -->
<link rel="stylesheet" href="css/emp_mngStyle.css">

</head>
<body>
	


	<!--header-->
	<div class="full-background">
		<div class="full-page">
			<div class="inside-container">
				<div class="container-fluid w-auto">
					<div class="row h-27">
						<div class="col col-lg-5 col-sm-6 bg-dark">
							<div class="logo">
								<img src="images/samartRentLogo.png" class="img-fluid h-100"
									style="max-width: 100%; height: auto;" alt="responsive image">
							</div>
						</div>
						<div class="col col-lg-7 col-sm-6 bg-dark">
							<h2 class="my-header-title text-white">Smart Rent</h2>
							<h3>Employee Manager Dashboard</h3>
						</div>

					</div>
				</div>
				<!--naviagtion bar-->
				<jsp:include page="MainNavBar.jsp" />

				<!--end of naviagtion bar-->
				<!--start admin menu-->

				<!--end admin menu-->

				<div class="row">
					<div class="col-12 col-lg-2 col-sm-12 col-xs-12">
						<div class="sidebar">
							<a href="emp_manager_Dashboard.jsp">Home</a> <a
								href="deleteJobs.jsp">Delete Recommended Jobs</a> <a href="#">View
								All Requests</a> <a href="#">View All Drivers</a> <a
								href="insertemployee.jsp">Add New Driver</a> <a href="#">Logout</a>
						</div>
					</div>

					<div class="col-12 col-lg-10 col-sm-12 col-xs-12">
						<div class="text-center pt-5">
							<h1>Assign Job</h1>
						</div>

						<%
						String resID = request.getParameter("reservationID");
						String cusID = request.getParameter("cusID");
						String driverID = request.getParameter("driverID");
						String managerID = request.getParameter("managerID");
						String dateTime = request.getParameter("dateTime");
						//String dateTime= (request.getParameter("date"))+" "+(request.getParameter("time"));
						String driverAccept = request.getParameter("driverAccept");
						String vehicleID = request.getParameter("vehicleID");
						%>

						<form action="updatejobs" method="post">
							<div class="form-group">
								<!-- <label for="reservationId">ReservationID</label> -->
								<input type="text" name="resID" placeholder="ReservationID"value="<%=resID %>"></input>
							</div>
							<div class="form-group">
								<!-- <label for="customerId">CustomerID</label> -->
								<input type="text" name="cusID" placeholder="customerID" value="<%= cusID %> "readonly></input>
							</div>
							<div class="form-group">
								<!-- <label for="driverId">DriverID</label> -->
								<input type="text" name="dateTime" placeholder="DateTime" value="<%=dateTime %>"></input>
							</div>

							<input type="text" name="driverAccept" placeholder="DriverAccept" value="<%= driverAccept %>">

							
							<!--<button type="submit" name="Assign job">Create Job</button>-->
							<input type="submit" class="btn btn-primary" name="update" value="Update">
							<!--<input type="submit" name="Assign job" value="Create job">-->
						</form>
						<br> <br>
					</div>
				</div>


			</div>
		</div>
</body>
</html>
<jsp:include page="footer.jsp" />