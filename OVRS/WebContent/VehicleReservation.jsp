<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer - Vehicle Reservation</title>
  <style>
		    .hidden-input{
				display:none;
			}

			#cusID{
	            display:none;

			}
			.hidden-input-out{
			      display:none;
			}
  </style>
    <meta charset="ISO-8859-1">
         <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
  
  
   <form action="logout">
   <input type="submit" value="logout">
   </form>
  
  
  
</nav>

<a href="CustomerDashBoard.jsp"> Go to CustomerDashBoard</a>
<form action="requestvehicle" method="post">
<table >
     <tr>
       <td>
       <small class="after-choice" >Vehicle Type</small>
          <select class="after-choice"  name="vehicleType" id="vehicleType" >
                            <option value="car" selected>Car</option>
                            <option value="bike">Bike</option>
                            <option value="jeep">Jeep</option>                   
                            <option value="van">Van</option>
          </select>
       </td>     
     </tr>
     <tr>
        <td>
        <small class="after-choice" >Pick Up Date</small>
         <input class="after-choice"  type="text" name="pickupDate">
        </td>
     </tr>
      <tr>
        <td>
              <small class="after-choice" >Pick Up Time</small>
         <input class="after-choice" type="text" name="pickupTime">
        </td>
     </tr>
      <tr>
        <td>
                 <small class="after-choice" >For How many hours</small>
          <input class="after-choice" type="text" name="hours">
        </td>
     </tr>
      <tr>
        <td>
           <small class="after-choice" >For how many days</small>
        <input class="after-choice" type="text" name="days">
        </td>
     </tr>
     <tr>
        <td>
           <small class="after-choice">For how many minutes</small>
        <input type="text" name="minutes" class="after-choice">
        </td>
     </tr>
     <tr>
     <td>
       <small class="after-choice">With or Without Driver</small>
          <select name="driverStatus" id="driverStatus" class="after-choice">
                            <option value="1" selected>With Driver</option>
                            <option value="0">Without Driver</option>                                                                         
          </select>
     </td>    
      </tr>
      <tr>
       <td>
       <small class="after-choice" >Driver Experience Level</small>
          <select name="explevel" id="explevel" class="after-choice" >
                            <option value="Newbie" selected>Newbie</option>
                            <option value="Medium">Medium</option>
                            <option value="Expert">Expert</option>                   
                           
          </select>
       </td>     
     </tr>
     <tr>
        <td>
         <small class="after-choice">How many kilometers?</small>
           <input class="after-choice" type="text" name="howFar" id="kilometer"/>
        </td>
     </tr>
      <tr>
      <td>
         <small class="after-choice" >Pick Up Location</small>
          <select class="after-choice" name="pickUpLocation" id="pickUp" >
                            <option value="Kadawatha" selected>Kadawatha</option>
                            <option value="Delgoda">Delgoda</option>
                            <option value="Kurunegala">Kurunegala</option>                   
                           
          </select>
        </td>  
     </tr>
      <tr>
        <td>
           <input type="text" name="cusID" value="${cusID}" id="cusID" hidden>
        </td>
     </tr>
     <tr>
     <td>
        <input type="button" class="after-choice" name="next" value="Next" onclick="calculatePayment();">
     </td>
     </tr>
     <tr>
     <td>
       <small class="hidden-input"  >Total Amount</small>
        <input type="text" name="fullPay" id="fullpay" class="hidden-input-out" disabled>
     </td>
     </tr>
      <tr>
     <td>
       <small class="hidden-input"  >20% of total amount</small>
        <input type="text" name="prePay" id="prepay" class="hidden-input-out">
     </td>
     </tr>
    <tr>
     <td>
        <small class="hidden-input" >Enter RecieptNumber </small>
        <input type="text" name="recieptNumber" id="recieptNumber"  class="hidden-input-out">
     </td>
    </tr>
   
    <tr>
     <td>
     <!-- class="hidden-input"-->
        <input type="button" name="Pay" value="Pay & confirm" id="submission" class="hidden-input">
     </td>
     </tr>
</table>
</form>
    <script>  
            function calculatePayment(){
            //without Driver  
            	//Car== 100 per km
               //Bike == 50 per km
               //Jeep == 500 per km
               //van == 300 per km
            //with Driver  
            //driverLicense.setAttribute("type","text")
            //bankNamae.classList.add('hide')
            //bankAccNo.classList.remove('hide')
               const vehicleType=document.getElementById("vehicleType").value;
               var fullPay=document.getElementById("fullpay");
               var prepay=document.getElementById("prepay");
               const submission=document.getElementById("submission");
               const kiloMeter=parseFloat(document.getElementById("kilometer").value);
             
               const driverStatus=document.getElementById("driverStatus").value;
               const driverExpLevel=document.getElementById("explevel").value;
               var beforeNext=document.getElementsByClassName("hidden-input");
               var afterNext=document.getElementsByClassName("after-choice");
               var otherInputs=document.getElementsByClassName("hidden-input-out");
               //
               submission.setAttribute("type","submit");
              for(var i=0;i<beforeNext.length;i++){
            	  console.log("**");
            	  beforeNext[i].style.display = "inline";
            	 
              }

              for(var i=0;i<otherInputs.length;i++){
            
            	  otherInputs[i].style.display = "inline";
              }

              for(var i=0;i<afterNext.length;i++){
            	  afterNext[i].classList.add("hidden-input")
              }
              
              
              var fullPayment =0; 
              var prePayment =0;
              const car = 100;
              const jeep = 500;
              const bike = 50;
              const van = 300;
              if(driverStatus=="1"){
            	  //120
            	 if(driverExpLevel=="Newbie"){
            		 console.log("NewBie909")
            		 if(vehicleType=="car"){
            			fullPayment=(car + 120)*kiloMeter;
            		 }else if(vehicleType=="bike"){
            			 fullPayment=(bike + 125)*kiloMeter;
            		 } else if(vehicleType=="jeep"){
            			 fullPayment=(jeep + 160)*kiloMeter;
            		 }else{
            			 fullPayment=(van+150)*kiloMeter;
            		 }
            		 
            		 
            	 }else if(driverExpLevel=="Medium"){
            		 console.log("&&&Medium")
            		 if(vehicleType=="car"){
	                	 fullPayment=(car+150) * kiloMeter;
            		 }else if(vehicleType=="bike"){
            			 fullPayment=(bike+135) * kiloMeter;
            		 } else if(vehicleType=="jeep"){
            			 fullPayment=(jeep + 180) * kiloMeter;
            		 }else{
            			 fullPayment=(van + 170)* kiloMeter;
            		 }
            		 
            	 }else {
            		 console.log("6787bh")
	                 if(vehicleType=="car"){
	                	 fullPayment= (car + 175) * kiloMeter;
            		 }else if(vehicleType=="bike"){
            			 fullPayment= (bike + 150) * kiloMeter;
            		 } else if(vehicleType=="jeep"){
            			 fullPayment= (jeep+200) * kiloMeter;
            		 }else{
            			 fullPayment= (van+190) * kiloMeter;
            		 }
            		 
            	 }
            		                       	  
            	  
            	  
              }else{
            	  console.log("dfg")
	                 if(vehicleType=="car"){
	                	 fullPayment= (car) * kiloMeter;
            		 }else if(vehicleType=="bike"){
            			 fullPayment= (bike) * kiloMeter;
            		 } else if(vehicleType=="jeep"){
            			 fullPayment= (jeep) * kiloMeter;
            		 }else{
            			 fullPayment= (van) * kiloMeter;
            		 }
            		 
            	  
              }
              prePayment=fullPayment * 0.2;
             
              prepay.value=prePayment;
              
              fullPay.value=fullPayment;
             
              console.log(prePayment);
              console.log(fullPayment);
            }
            </script>
     
</body>
</html>