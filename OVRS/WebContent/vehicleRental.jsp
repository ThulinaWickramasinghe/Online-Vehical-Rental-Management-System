 <%
      if(session.getAttribute("userNames")==null){
    	   response.sendRedirect("login.jsp");
     }
   
   %>

<!DOCTYPE html>
<html lang="en">
    
  

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel = "stylesheet" href="css/bootstrap.css">
	 <link rel = "stylesheet" href="css/navBar.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>

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
      <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success btn-sm" type="submit">Search</button>
    </form>
  </div>
    </div>
  </div>
    
   <form action="logout">
   <input type="submit" value="logout">
   </form>
  
</nav>
<br/>
<form action="vehicleview" method="post">
    <input type="submit" value="view vehicles"/>
     <input type="text" value="${veOID}" name="view" hidden>
</form>

<br/>
<a href="VehicleOwnerDashBoard.jsp">GO to your profile </a>
<br/>
<br/>

    <h1>Hello bootsrap world </h1>
    <div class="alert alert-success" role="alert">
        A simple success alert—check it out!
    </div>
<div class="forms-container badge bg-primary d-flex justify-content-evenly">

   <form class="badge bg-secondary" method="POST" action="vehicleadd">
   <div class="form-header">
      <h3>Enter vehicle details</h3>
 </div>
<div class="input-group mb-3" id="links">
  <label class="input-group-text" for="inputGroupSelect01">Vehicle type :</label>
  <select class="form-select" name="vehicleType" id="inputGroupSelect01">
    <option selected value="Car" >Car</option>
    <option value="Van">Van</option>
    <option value="Bike">Motor Bike</option>
    <option value="Jeep">jeep</option>
  </select>
</div>
<div class="input-group mb-3" id="links">
  <label class="input-group-text" for="inputGroupSelect01">fuel type :</label>
  <select class="form-select" name="fuelType" id="inputGroupSelect01">
    <option selected value="Petrol" >Petrol</option>
    <option value="Diesel">Diesel</option>
    <option value="Gasoline">Gasoline</option>
    <option value="Natural Gas">Natural Gas</option>
  </select>
</div>

  <div class="input-group flex-nowrap mb-3">
  <span class="input-group-text" id="addon-wrapping">Registration No :</span>
  <input type="text" class="form-control" name="registrationNo" placeholder="Registration Number" aria-label="Username" aria-describedby="addon-wrapping">
</div>

<div class="input-group flex-nowrap mb-3">
  <span class="input-group-text" id="addon-wrapping">License No :</span>
  <input type="text" class="form-control" name="licenseNo" placeholder="WP-45890" aria-label="Username" aria-describedby="addon-wrapping">
</div>

<!--hope to use color choose option -->
<div class="input-group mb-3" id="links">
  <label class="input-group-text" for="inputGroupSelect01">Color :</label>
  <select class="form-select" name="Color" id="inputGroupSelect01">
    <option selected value="Blue" >Blue</option>
    <option value="Red">Red</option>
    <option value="Orange">Orange</option>
    <option value="Purple">Purple</option>
  </select>
</div>

<div class="input-group flex-nowrap mb-3">
  <span class="input-group-text" id="addon-wrapping">Brand  :</span>
  <input type="text" class="form-control" name="brand" placeholder="BMW" aria-label="Username" aria-describedby="addon-wrapping">
</div>

<div class="input-group flex-nowrap mb-3">
  <span class="input-group-text" id="addon-wrapping">Model :</span>
  <input type="text" class="form-control" name="model" placeholder="Model" aria-label="Username" aria-describedby="addon-wrapping">
</div>

<div class="input-group flex-nowrap mb-3">
  <span class="input-group-text" id="addon-wrapping">Trim / Edition  :</span>
  <input type="text" class="form-control" name="tried" placeholder="2.0 Twin Turbo" aria-label="Username" aria-describedby="addon-wrapping">
</div>



<div class="input-group flex-nowrap mb-3">
  <span class="input-group-text" id="addon-wrapping">Transmission  :</span>
  <input type="text" class="form-control" name="transmission" placeholder="Automatic" aria-label="Username" aria-describedby="addon-wrapping">
</div>

<div class="input-group flex-nowrap mb-3">
  <span class="input-group-text" id="addon-wrapping">Body type  :</span>
  <input type="text" class="form-control" name="bodyType" placeholder="Convertible" aria-label="Username" aria-describedby="addon-wrapping">
</div>


<!--hope to use option tag-->
<div class="input-group flex-nowrap mb-3">
  <span class="input-group-text" id="addon-wrapping">Maximum passengers :</span>
  <input type="text" class="form-control" name="maxPas" placeholder="Username" aria-label="Username" aria-describedby="addon-wrapping">
</div>

<div class="input-group flex-nowrap mb-3">
  <span class="input-group-text" id="addon-wrapping">Price per km :</span>
  <input type="text" class="form-control" name="pricePerKm" placeholder="2" aria-label="Username" aria-describedby="addon-wrapping">
</div>

<div class="input-group flex-nowrap mb-3">
<!--hope to option tag-->
  <span class="input-group-text" id="addon-wrapping">Special Note :</span>
  <input type="text" class="form-control" name="specialNote" placeholder="Cash" aria-label="Username" aria-describedby="addon-wrapping">
</div>







<input type="text" name="veOID" value="${veOID}" hidden/>
<button type="submit" class="btn btn-primary btn-lg float-end">Submit</button>

   
   </form>


    <script src="js/bootstrap.js">
    </script>
    <script src="https://unpkg.com/@popperjs/core@2.4.0/dist/umd/popper.min.js">
    </script>

</body>


</html>