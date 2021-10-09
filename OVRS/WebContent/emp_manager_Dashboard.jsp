<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Employee Manager Dashboard</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
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
                        <img src="images/samartRentLogo.png" class="img-fluid h-100" style="max-width: 100%; height:auto;" alt="responsive image">
                    </div>
                </div>
                <div class="col col-lg-7 col-sm-6 bg-dark">
                    <h2 class="my-header-title text-white">Smart Rent</h2>
                    <h3>Employee Manager Dashboard</h3>
                </div>
                
            </div>
        </div>
        
    <!--end admin menu-->
	
	
	<div class="row">
		<div class="col-12 col-lg-2 col-sm-12 col-xs-12">
        	<div class="sidebar">
        		<a href="#">Home</a>
	            <a href="#">Assign a Job</a>
	            <a href="AddDriver.jsp">Add New Driver</a>
	            <a href="#">View All Drivers</a>
	            <a href="AddDriver.jsp"></a>     
	            <a href="#">Logout</a>          
            </div>
        </div>
        
        
        <div class="col-12 col-lg-10 col-sm-12 col-xs-12">
        	<div class="content"> 	
        	<div class="pl-sm-0 pl-0 pl-lg-5">
        		<h2>Customer Requests</h2>
	        		<div class="table-responsive">
						<table class="table table-bordered my-table2">
						<thead>
						<tr>
							<th scope="col" bgcolor="#E6E6FA" class="text-center">CustomerID</th>
							<th scope="col" bgcolor="#E6E6FA" class="text-center">Vehicle Type</th>
							<th scope="col" bgcolor="#E6E6FA" class="text-center">Pickup Date</th>
							<th scope="col" bgcolor="#E6E6FA" class="text-center">Pickup Time</th>
							<th scope="col" bgcolor="#E6E6FA" class="text-center">Pickup Location</th>
							<th scope="col" bgcolor="#E6E6FA" class="text-center">Description</th>
							<!-- <th scope="col" bgcolor="#E6E6FA" class="text-center">Approve</th>
							<th scope="col" bgcolor="#E6E6FA" class="text-center">Dispprove</th> -->
						</tr>
						</thead>
						<tbody>
					<c:forEach var="loan" items="${loanDetails}"> 
						<tr>
							<td>{}</td>
							<td>{}</td>
							<td>{}</td>
							<td>{}</td>
							<td>{}</td>
							<td>{}</td>
							<!-- <td>
								<c:url value="loanapprove" var="approve">
					            	<c:param name="id" value="${loan.loanId}" />
					            	<c:param name="value" value="approve" />
					            </c:url>
								<a href="${approve}">
									<input type="button" class="btn btn-primary  btn-sm" name="approve" value="Approve">
								</a>
							</td>
							<td>
								<c:url value="loanapprove" var="approve">
					            	<c:param name="id" value="${loan.loanId}" />
					            	<c:param name="value" value="not-approve" />
					            </c:url>
								<a href="${approve}">
									<input type="button" class="btn btn-warning  btn-sm" name="approve" value="Dispprove">
								</a>
							</td>	 -->
						</tr>						
						</c:forEach>
						</tbody>
						</table>
					</div>
					
					<!-- <a href="allloans">
						<button type="button" class="btn btn-info btn-sm">View Approved Loans</button>
					</a> -->
					
			</div>
        	<br>
        	<div class="pl-sm-0 pl-0 pl-lg-5">
        		<h2>Recomend Jobs</h2>
	        		<div class="table-responsive">
						<table class="table table-bordered my-table2">
						<thead>
						<tr>
							<th scope="col" bgcolor="#E6E6FA" class="text-center">ReservationID</th>
							<th scope="col" bgcolor="#E6E6FA" class="text-center">CustomerID</th>
							<th scope="col" bgcolor="#E6E6FA" class="text-center">DriverID</th>
							<th scope="col" bgcolor="#E6E6FA" class="text-center">DateTime</th>
							<th scope="col" bgcolor="#E6E6FA" class="text-center">Update</th>
							<th scope="col" bgcolor="#E6E6FA" class="text-center">Delete</th>
						</tr>
						</thead>
						<tbody>
						<c:forEach var="msg" items="${allMessages}">
						<tr>
							<td>{}</td>
							<td>{}</td>
							<td>{}</td>
							<td>{}</td>
							<td>
								<a href="update?id=${msg.messageId}">
									<input type="button" class="btn btn-warning btn-sm" name="update" value="Update">
								</a>
							</td>
							<td>
								<a href="update?id=${msg.messageId}">
									<input type="button" class="btn btn-danger btn-sm" name="delete" value="Delete">
								</a>
							</td>
						</tr>						
						</c:forEach>
						</tbody>
						</table>
					</div>
				</div>
				<br>
				<div class="pl-5">
				<h2>Available Drivers</h2>
				<div class="table-responsive">
				<table class="table table-bordered my-table2">
				<thead>
				<tr>
					<th scope="col" bgcolor="#E6E6FA" class="text-center">DriverID</th>
					<th scope="col" bgcolor="#E6E6FA" class="text-center">Car Expert Level</th>
					<th scope="col" bgcolor="#E6E6FA" class="text-center">Bike Expert Level</th>
					<th scope="col" bgcolor="#E6E6FA" class="text-center">Van Expert Level</th>
					<th scope="col" bgcolor="#E6E6FA" class="text-center">Driver License</th>
					<th scope="col" bgcolor="#E6E6FA" class="text-center">Phone Number</th>
					<!-- <th scope="col" bgcolor="#E6E6FA" class="text-center">Department</th> -->
					<th scope="col" bgcolor="#E6E6FA" class="text-center">Update</th>
					<th scope="col" bgcolor="#E6E6FA" class="text-center">Delete</th>
				</tr>
				</thead>
				<tbody>
				<c:forEach var="emp" items="${empDetails}">
				<tr>
					<td>{}</td>
					<td>{}</td>
					<td>{}</td>
					<td>{}</td>
					<td>{}</td>
                    <td>{}</td>
					<td>
                        <a href="update?id=${msg.messageId}">
                            <input type="button" class="btn btn-warning btn-sm" name="update" value="Update">
                        </a>
                    </td>
                    <td>
                        <a href="update?id=${msg.messageId}">
                            <input type="button" class="btn btn-danger btn-sm" name="delete" value="Delete">
                        </a>
                    </td>
						
                      
					<!-- </td>
					<td>
						<c:url value="deleteemployee.jsp" var="delete">
			            	<c:param name="empid" value="${emp.empid}" />
			            	<c:param name="empname" value="${emp.name}" />
			            	<c:param name="nic" value="${emp.nic}" />
			            	<c:param name="email" value="${emp.email}" />
			            	<c:param name="address" value="${emp.address}" />
			            	<c:param name="phone" value="${emp.phone}" />
			            	<c:param name="department" value="${emp.department}" />
			            </c:url>
					
					</td> -->
					
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