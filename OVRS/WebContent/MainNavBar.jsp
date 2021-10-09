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
	 
	 <style>
	     table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
.hidden-input-out{
     display:hidden;
}

	 </style>
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
          <a class="nav-link active" aria-current="page" href="index.jsp">Home</a>
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
          <a class="nav-link " href="ContactUs.jsp"  >Contact Us</a>
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
    <form action="logout">
   <input type="submit" value="logout">
   </form>
 
  
</nav>
