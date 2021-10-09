<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/addDriverStyle.css">
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
        <!--naviagtion bar-->

        <!--end of naviagtion bar-->
    <!--start admin menu-->

    <!--end admin menu-->

	<div class="row">
		<div class="col-12 col-lg-2 col-sm-12 col-xs-12">
        	<div class="sidebar">
        		<a href="emp_manager_Dashboard.jsp">Home</a>
	            <a href="#">View all customers</a>
	            <a href="#">View All Requests</a>
	            <a href="#">View All Drivers</a>
	            <a href="insertemployee.jsp">Add New Driver</a>     
	            <a href="#">Logout</a>          
            </div>
        </div>
        
        <div class="col-12 col-lg-10 col-sm-12 col-xs-12">
			<div class="text-center pt-5">
				<h1>Add New Driver</h1>
			</div>
			
			<form action="empinsert" method="post" class="pt-3">
				<div class="form-group">
					<label for="UserName">Name</label>
					<input type="text" class="form-control" name="empname" required>
				</div>
				<div class="form-group">
					<label for="nic">NIC</label>
					<input type="text" class="form-control" name="nic" required>
				</div>
				<div class="form-group">
					<label for="address">Physical Adderss</label>
					<input type="text" class="form-control" name="empaddress" required>
				</div>
				<div class="form-group">
					<label for="address">Email</label>
					<input type="email" class="form-control" name="empemail" required>
				</div>
				<div class="form-group">
					<label for="phone">Phone Number</label>
					<input type="text" class="form-control" name="empphone" required>
				</div>
				<div class="form-group">
					<label for="salary">Driver License</label>
					<input type="text" class="form-control" name="empdep" required>
				</div>
				<br>		
				<button type="submit" class="btn btn-primary btn-md btn-block btn-primary">Enter Driver</button>
			</form>
			<br>
			<br>
		</div>
	</div>

</body>
</html>