 <jsp:include page="MainNavBar.jsp" />
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
   </div>


    <script src="js/bootstrap.js">
    </script>
    <script src="https://unpkg.com/@popperjs/core@2.4.0/dist/umd/popper.min.js">
    </script>

        <jsp:include page='footer.jsp' />