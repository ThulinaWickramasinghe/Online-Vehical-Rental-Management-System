<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


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



</head>
<body>
<link rel="stylesheet" href="css/emp_mngStyle.css">
	


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

				<!--end admin menu-->


				<div class="row">
					<div class="col-12 col-lg-2 col-sm-12 col-xs-12">
						<div class="sidebar">
							<a href="#">Home</a> 
							<a href="EmpMgrAssignJobs.jsp">Assign a Job</a> 
							<a href="AddDriver.jsp">Add New Driver</a>
								<a href="Reservations-Driver-VehicleView.jsp">View</a>
								<a href="AddDriver.jsp"></a> 
								<a href="#">Logout</a>
						</div>
					</div>


					<div class="col-12 col-lg-10 col-sm-12 col-xs-12">
						<div class="content">
							<div class="pl-sm-0 pl-0 pl-lg-5">
								<h2>Customer Requests</h2>

								<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"
									url="jdbc:mysql://localhost:3306/ovrs" user="root"
									password="M@p199817" />
								<sql:query var="rs" dataSource="${db}">
                                select * from reservation
                               </sql:query>

								<div class="table-responsive">
									<table class="table table-bordered my-table2">
										<thead>
											<tr>
												<th scope="col" bgcolor="#E6E6FA" class="text-center">ResID</th>
												<th scope="col" bgcolor="#E6E6FA" class="text-center">CusID</th>
												<th scope="col" bgcolor="#E6E6FA" class="text-center">Vehicle
													Type</th>
												<th scope="col" bgcolor="#E6E6FA" class="text-center">PickupDate</th>
												<th scope="col" bgcolor="#E6E6FA" class="text-center">Pickuptime</th>
												<th scope="col" bgcolor="#E6E6FA" class="text-center">Days</th>
												<th scope="col" bgcolor="#E6E6FA" class="text-center">Hours</th>
												<th scope="col" bgcolor="#E6E6FA" class="text-center">Minutes</th>
												<th scope="col" bgcolor="#E6E6FA" class="text-center">DriverExp</th>
												<th scope="col" bgcolor="#E6E6FA" class="text-center">Driver
													Status</th>
												<th scope="col" bgcolor="#E6E6FA" class="text-center">HowFar</th>
												<th scope="col" bgcolor="#E6E6FA" class="text-center">Pickup
													Location</th>
												<th scope="col" bgcolor="#E6E6FA" class="text-center">FullPaid</th>
												<th scope="col" bgcolor="#E6E6FA" class="text-center">Journey
													Status</th>
												<!-- <th scope="col" bgcolor="#E6E6FA" class="text-center">Approve</th>
							<th scope="col" bgcolor="#E6E6FA" class="text-center">Dispprove</th> -->
											</tr>
										</thead>
										<tbody>
											<c:forEach var="reservation" items="${rs.rows}">
												<tr>
													<!--  <td>{}</td>
							<td>{}</td>
							<td>{}</td>
							<td>{}</td>
							<td>{}</td>
							<td>{}</td>-->
													<td><c:out value="${reservation.reservationID}"></c:out>
													</td>
													<td><c:out value="${reservation.cusID}"></c:out></td>
													<td><c:out value="${reservation.vehicle_type}"></c:out>
													</td>
													<td><c:out value="${reservation.pickupdate}"></c:out>
													</td>
													<td><c:out value="${reservation.pickuptime}"></c:out>
													</td>

													<td><c:out value="${reservation.days}"></c:out></td>
													<td><c:out value="${reservation.hours}"></c:out></td>
													<td><c:out value="${reservation.minutes}"></c:out></td>
													<td><c:out value="${reservation.driverexp}"></c:out></td>
													<td><c:out value="${reservation.driverstatus}"></c:out>
													</td>
													<td><c:out value="${reservation.how_far}"></c:out></td>
													<td><c:out value="${reservation.pickup_location}"></c:out>
													</td>
													<td><c:out value="${reservation.fullPaid}"></c:out></td>
													<td><c:out value="${reservation.journey_status}"></c:out>
													</td>

												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>



							</div>
							<br>
							<div class="pl-sm-0 pl-0 pl-lg-5">
								<h2>Recommend Jobs</h2>
								<sql:query var="rs1" dataSource="${db}">
                                select * from recommendjobs
                                </sql:query>
								<div class="table-responsive">
									<table class="table table-bordered my-table2">
										<thead>
											<tr>
												<th scope="col" bgcolor="#E6E6FA" class="text-center">ResID</th>
												<th scope="col" bgcolor="#E6E6FA" class="text-center">CustomerID</th>
												<th scope="col" bgcolor="#E6E6FA" class="text-center">DriverID</th>
												<th scope="col" bgcolor="#E6E6FA" class="text-center">DateTime</th>
												<th scope="col" bgcolor="#E6E6FA" class="text-center">Driver
													Accept</th>
												<th scope="col" bgcolor="#E6E6FA" class="text-center">Vehicle
													ID</th>
												<th scope="col" bgcolor="#E6E6FA" class="text-center">Update</th>
												<th scope="col" bgcolor="#E6E6FA" class="text-center">Delete</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="recjobs" items="${rs1.rows}">

												<tr>


													<td><c:out value="${recjobs.reservationID}"></c:out></td>
													<td><c:out value="${recjobs.cusID}"></c:out></td>
													<td><c:out value="${recjobs.driverID}"></c:out></td>
													<td><c:out value="${recjobs.dateTime}"></c:out></td>
													<td><c:out value="${recjobs.driverAccept}"></c:out></td>
													<td><c:out value="${recjobs.vehicleID}"></c:out></td>
													
													
												    <td>
						                            <c:url value="updateRecommendJobs.jsp" var="url">
			            	                        <c:param name="reservationID" value="${recjobs.reservationID}" />
			            	                        <c:param name="cusID" value="${recjobs.cusID}" />
			            	                        <c:param name="driverID" value="${recjobs.driverID}" />
			            	                        <c:param name="dateTime" value="${recjobs.dateTime}" />
			            	                        <c:param name="driverAccept" value="${recjobs.driverAccept}" />
			            	                         <c:param name="vehicleID" value="${recjobs.vehicleID}" />
			            	
			                                        </c:url>
						                            <a href="${url}">
							                       <input type="button" class="btn btn-warning btn-sm" name="update" value="Update">
						                           </a>
					                               </td>	


													<td><a href="deleteJobs.jsp"> <input type="button"
															class="btn btn-danger btn-sm" name="deletejobs"
															value="Delete">
													</a></td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
							<br>
							<div class="pl-5">
								<h2>Available Drivers</h2>
								<sql:query var="rs2" dataSource="${db}">
                                 select * from driver
                                </sql:query>
								<div class="table-responsive">
									<table class="table table-bordered my-table2">
										<thead>
											<tr>
												<th scope="col" bgcolor="#E6E6FA" class="text-center">DriverID</th>
												<th scope="col" bgcolor="#E6E6FA" class="text-center">Car
													Expert Level</th>
												<th scope="col" bgcolor="#E6E6FA" class="text-center">Bike
													Expert Level</th>
												<th scope="col" bgcolor="#E6E6FA" class="text-center">Van
													Expert Level</th>
												<th scope="col" bgcolor="#E6E6FA" class="text-center">Jeep
													Expert Level</th>
												<th scope="col" bgcolor="#E6E6FA" class="text-center">Driver
													License</th>

											</tr>
										</thead>
										<tbody>
											<c:forEach var="driver" items="${rs2.rows}">
												<tr>
													<td><c:out value="${driver.driverID}"></c:out></td>
													<td><c:out value="${driver.carexpertLevel}"></c:out></td>
													<td><c:out value="${driver.bikeexpertLevel}"></c:out>
													</td>
													<td><c:out value="${driver.vanexpertLevel}"></c:out></td>
													<td><c:out value="${driver.jeepexpertLevel}"></c:out>
													</td>
													<td><c:out value="${driver.driverlicense}"></c:out></td>





												</tr>

											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- footer -->
</body>
</html>
    <jsp:include page='footer.jsp' />