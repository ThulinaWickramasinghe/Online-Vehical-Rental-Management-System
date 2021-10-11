<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
   <%
     boolean log=false;
   String user=null;
      if(session.getAttribute("userNames")==null){
    	  log=false;
    	  response.sendRedirect("login.jsp?page=5");
    	  
      }else{
    	  
    	  log=true;
    	  user=(String)session.getAttribute("user");
      }
   
    
   
   %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
 <link rel="stylesheet" href="css/register.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
<link rel = "stylesheet" href="css/bootstrap.css">
<link rel = "stylesheet" href="css/navBar.css">
<link rel="stylesheet" href="css/style.css">
	 
	 <style>

.hidden-input-out{
     display:none;
}
.hidden-logout{

     display:none;
}
	 </style>
</head>
<body>
  <nav class="navbar navbar-expand-lg navbar-light bg-dark bg-gradient">
        <div class="container-fluid">
          <a class="navbar-brand" href="#">
              <div class="px-4 py-2">
                <img src="images/logo3.png" alt="" class=""><br>
                <span class="text-warning fst-italic">Smart </span><span class="text-info fst-italic">Rent</span>
            </div>
          </a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
              <li class="nav-item">
                <a class="nav-link active text-light px-4 fs-5" aria-current="page" href="index.jsp?page=1">Home</a>
              </li>
              <li class="nav-item">
                <a class="nav-link text-light px-4 fs-5" href="AboutUs.jsp?page=2">About Us</a>
              </li>
              <li class="nav-item">
                <a class="nav-link text-light px-4 fs-5" href="Services.jsp?page=3">Services</a>
              </li>
              <li class="nav-item">
                <a class="nav-link text-light px-4 fs-5" href="ContactUs.jsp?page=4">Contact Us</a>
              </li>
              <li class="nav-item" id="log-a" >
                <a class="nav-link text-light px-4 fs-5" href="login.jsp?page=5">Login</a>
              </li>
              <li class="nav-item" id="signup-a">
                <a class="nav-link text-light px-4 fs-5" href="Register.jsp?page=6">Sign Up</a>
              </li>
              <!-- <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                  Dropdown
                </a>
                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                  <li><a class="dropdown-item" href="#">Action</a></li>
                  <li><a class="dropdown-item" href="#">Another action</a></li>
                  <li><hr class="dropdown-divider"></li>
                  <li><a class="dropdown-item" href="#">Something else here</a></li>
                </ul>
              </li> -->
              <!-- <li class="nav-item">
                <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
              </li> -->
            </ul>
            <form class="d-flex px-4">
              <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
              <button class="btn btn-outline-success" type="submit">Search</button>
            </form>
          </div>
        </div>
  <c:set var="logged" value="<%=log%>"/>

    <form action="logout" class="hidden-logout" id="logout">
   <button type="submit"  class="btn btn-secondary">
   Logout
   </button>
   </form>
   <script>
  var logging= '${logged}';
  var userType='${user}'

  if(logging=="true"){
	  var element = document.getElementById("logout");
	  var logs = document.getElementById("log-a");
	  var sign = document.getElementById("signup-a");
	  element.classList.remove("hidden-logout")
	  logs.classList.add("hidden-logout")
	  sign.classList.add("hidden-logout")
	 
  }
  const queryString = window.location.search;
  console.log(queryString)
  
  
  const urlParams = new URLSearchParams(queryString)
  const page = urlParams.get('page')
  
  if(page=="1"){
	  document.title='Smart Rent - Home'
  }else if(page=="2"){
	  document.title='Smart Rent - About Us'
  }else if(page=="3"){
	  document.title='Smart Rent - Services'
  }else if(page=="4"){
	  document.title='Smart Rent - ContactUs'
  }
  else if(page=="5"){
	  document.title='Smart Rent - login'
  }else if(page=="6"){
	  document.title='Smart Rent - signUp'
  }else if(page=="7"||userType){
	  document.title="Smart Rent - " +userType+" profile"
  }  
  </script>
  
</nav>

