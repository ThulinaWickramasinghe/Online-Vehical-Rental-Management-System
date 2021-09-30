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
</nav>




    <h1>Hello bootsrap world </h1>
    <div class="alert alert-success" role="alert">
        A simple success alert—check it out!
    </div>
<div class="forms-container badge bg-primary d-flex justify-content-evenly">

   <form class="badge bg-secondary" method="POST" action="#">
   <div class="form-header">
      <h3>Enter vehicle details</h3>
 </div>
<div class="input-group mb-3" id="links">
  <label class="input-group-text" for="inputGroupSelect01">Vehcle type :</label>
  <select class="form-select" id="inputGroupSelect01">
    <option selected>Car</option>
    <option value="1">Van</option>
    <option value="2">Motor Bike</option>
   
  </select>
</div>
  <div class="input-group flex-nowrap mb-3">
  <span class="input-group-text" id="addon-wrapping">Registration No :</span>
  <input type="text" class="form-control" placeholder="Registration Number" aria-label="Username" aria-describedby="addon-wrapping">
</div>
<div class="input-group flex-nowrap mb-3">
  <span class="input-group-text" id="addon-wrapping">License No :</span>
  <input type="text" class="form-control" placeholder="WP-45890" aria-label="Username" aria-describedby="addon-wrapping">
</div>
<!--hope to use color choose option -->
<div class="input-group flex-nowrap mb-3">
  <span class="input-group-text" id="addon-wrapping">Color  :</span>
  <input type="text" class="form-control" placeholder="Blue" aria-label="Username" aria-describedby="addon-wrapping">
</div>
<div class="input-group flex-nowrap mb-3">
  <span class="input-group-text" id="addon-wrapping">Brand  :</span>
  <input type="text" class="form-control" placeholder="BMW" aria-label="Username" aria-describedby="addon-wrapping">
</div>
<div class="input-group flex-nowrap mb-3">
  <span class="input-group-text" id="addon-wrapping">Model :</span>
  <input type="text" class="form-control" placeholder="Model" aria-label="Username" aria-describedby="addon-wrapping">
</div>
<div class="input-group flex-nowrap mb-3">
  <span class="input-group-text" id="addon-wrapping">Trim / Edition  :</span>
  <input type="text" class="form-control" placeholder="2.0 Twin Turbo" aria-label="Username" aria-describedby="addon-wrapping">
</div>
<div class="input-group flex-nowrap mb-3">
  <span class="input-group-text" id="addon-wrapping">Model year  :</span>
  <input type="text" class="form-control" placeholder="2005" aria-label="Username" aria-describedby="addon-wrapping">
</div>
<div class="input-group flex-nowrap mb-3">
  <span class="input-group-text" id="addon-wrapping">Trasmission  :</span>
  <input type="text" class="form-control" placeholder="Automatic" aria-label="Username" aria-describedby="addon-wrapping">
</div>
<div class="input-group flex-nowrap mb-3">
  <span class="input-group-text" id="addon-wrapping">Body type  :</span>
  <input type="text" class="form-control" placeholder="Convertible" aria-label="Username" aria-describedby="addon-wrapping">
</div>
<!--hope to use option tag-->
<div class="input-group flex-nowrap mb-3">
  <span class="input-group-text" id="addon-wrapping">Fuel type  :</span>
  <input type="text" class="form-control" placeholder="Petrol" aria-label="Username" aria-describedby="addon-wrapping">
</div>
<!--hope to use option tag-->
<div class="input-group flex-nowrap mb-3">
  <span class="input-group-text" id="addon-wrapping">Maximum passengers :</span>
  <input type="text" class="form-control" placeholder="Username" aria-label="Username" aria-describedby="addon-wrapping">
</div>
<div class="input-group flex-nowrap mb-3">
  <span class="input-group-text" id="addon-wrapping">Dollars per km :</span>
  <input type="text" class="form-control" placeholder="2" aria-label="Username" aria-describedby="addon-wrapping">
</div>
<div class="input-group flex-nowrap mb-3">
<!--hope to option tag-->
  <span class="input-group-text" id="addon-wrapping">Preffered Payment Method :</span>
  <input type="text" class="form-control" placeholder="Cash" aria-label="Username" aria-describedby="addon-wrapping">
</div>
<div class="input-group mb-3">
  <input type="file" class="form-control" id="inputGroupFile02">
  <label class="input-group-text" for="inputGroupFile02">Upload</label>
</div>
<button type="submit" class="btn btn-primary btn-lg float-end">Submit</button>

   
   </form>

</div>
<div class="card-container d-flex justify-content-evenly">
<div class="card" style="width: 18rem;">
  <img src="..." class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Card title</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn btn-primary">Go somewhere</a>
  </div>
</div>


<div class="card" style="width: 18rem;">
  <img src="..." class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Card title</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn btn-primary">Go somewhere</a>
  </div>
</div>
<div class="card" style="width: 18rem;">
  <img src="..." class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Card title</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn btn-primary">Go somewhere</a>
  </div>
</div>
</div>
    <script src="js/bootstrap.js">
    </script>
    <script src="https://unpkg.com/@popperjs/core@2.4.0/dist/umd/popper.min.js">
    </script>

</body>


</html>