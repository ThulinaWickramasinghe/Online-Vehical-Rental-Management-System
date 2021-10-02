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
<title>Driver-DashBoard</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
        <link rel = "stylesheet" href="css/bootstrap.css">
	 <link rel = "stylesheet" href="css/navBar.css">
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark nave-style">
  <div class="container">
    
	  <a class="navbar-brand" href="#">
	<img src="images/logo1.jpeg" alt="logo image" width="130" height="50">
	</a>
	

    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">About Us</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Services</a>
        </li>
		 <li class="nav-item">
          <a class="nav-link" href="#">Rent a Vehicle</a>
        </li>
        <li class="nav-item">
          <a class="nav-link " href="#"  >Contact Us</a>
        </li>
		
      </ul>
	  <div class="search-result">
    <form class="d-flex">
      <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" >
      <button class="btn btn-outline-success btn-sm" type="submit">Search</button>
    </form>
  </div>
    </div>
  </div>
  
 
  
</nav>

<div class="card text-center">
  <div class="card-header">
    <ul class="nav nav-pills card-header-pills">
      <li class="nav-item">
        <a class="nav-link active" href="#">My Profile</a>
      </li>
      <li class="nav-item">
        <a class="nav-link " href="ViewJobs.jsp">My Jobs</a>
      </li>
    
    </ul>
  </div>
  <div class="card-body">
  
  
  
  
  
  <div class="container rounded bg-white mt-5 mb-5">
    <div class="row">
        <div class="col-md-3 border-right">
            <div class="d-flex flex-column align-items-center text-center p-3 py-5"><img class="rounded-circle mt-5" width="150px" src="https://st3.depositphotos.com/15648834/17930/v/600/depositphotos_179308454-stock-illustration-unknown-person-silhouette-glasses-profile.jpg"><span class="font-weight-bold">Driver Id - ${driverID}</span><span class="text-black-50">${email} </span><span> </span></div>
        </div>
        <div class="col-md-5 border-right">
            <div class="p-3 py-5">
                <div class="d-flex justify-content-between align-items-center mb-3">
                    <h4 class="text-right">Profile Settings</h4>
                </div>
                <div class="row mt-2">
                    <div class="col-md-6"><label class="labels-1 float-start">First Name</label><input type="text" class="form-control" placeholder="first name" value="" readonly></div>
                    <div class="col-md-6"><label class="labels-1 float-start">Last Name</label><input type="text" class="form-control" value="" placeholder="surname" readonly></div>
                </div>
                <div class="row mt-3">                                           
                    <div class="col-md-12"><label class="labels-1 float-start">User Name</label><input type="text" class="form-control"  value="" readonly></div>
                    <div class="col-md-12"><label class="labels-1 float-start">Mobile Number</label><input type="text" class="form-control"  value="" readonly></div>
                    <div class="col-md-12"><label class="labels-1 float-start">Address Line 2</label><input type="text" class="form-control"  value="" readonly></div>
                    <div class="col-md-12"><label class="labels-1 float-start">Postcode</label><input type="text" class="form-control"  value="" readonly></div>
                    <div class="col-md-12"><label class="labels-1 float-start">State</label><input type="text" class="form-control"  value="" readonly></div>
                    <div class="col-md-12"><label class="labels-1 float-start">Area</label><input type="text" class="form-control"  value="" readonly></div>
                    <div class="col-md-12"><label class="labels-1 float-start">Email ID</label><input type="text" class="form-control" " value="" readonly></div>
                    <div class="col-md-12"><label class="labels-1 float-start">Education</label><input type="text" class="form-control"  value="" readonly></div>
                </div>
                <div class="row mt-3">
                    <div class="col-md-6"><label class="labels-1 float-start">Country</label><input type="text" class="form-control"  value="" readonly></div>
                    <div class="col-md-6"><label class="labels-1 float-start">State/Region</label><input type="text" class="form-control"  readonly></div>
                </div>
               <div class="d-flex float-end"> 
                <div class="mt-5 text-center"><button class="btn btn-primary profile-button" type="button">Update Profile</button></div>
                <div class="mt-5 text-center"><button class="btn btn-danger profile-button" type="button">Delete Profile</button></div>
               </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="p-3 py-5">
                <div class="d-flex justify-content-between align-items-center experience"><span>Edit Experience</span><span class="border px-3 p-1 add-experience"><i class="fa fa-plus"></i>&nbsp;Experience</span></div><br>
                <div class="col-md-12"><label class="labels-1 float-start">Experience in Designing</label><input type="text" class="form-control" placeholder="experience" value=""></div> <br>
                <div class="col-md-12"><label class="labels-1 float-start">Additional Details</label><input type="text" class="form-control" placeholder="additional details" value=""></div>
            </div>
        </div>
    </div>
</div>
</div>
</div>
  
  
    
  
  </div>
</div>






</body>
</html>