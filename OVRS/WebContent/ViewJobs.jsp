 <jsp:include page="MainNavBar.jsp" />
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<div class="card text-center">
  <div class="card-header">
    
    <ul class="nav nav-pills card-header-pills">
      <li class="nav-item ">
  
     
        <button type="button" value="My Profile" class="btn btn-secondary"  onclick="window.location.href = 'Driver-DashBoard.jsp?page=7';">
           My profile
        </button>
     
     
      </li >
      <li class="nav-item ms-3">
        <form action="jobs" method="post">
      <input type="text" name="driverID" value="${driverID}" hidden>
       
        <button type="submit" class="btn btn-secondary" value="My jobs">
        My jobs
        </button>
     
     </form>
  </li>
    </ul>
  </div>
  

 <br/>
  <br/>
   <br/>
<div class="d-flex justify-content-center align-items-center w-100 p-3 ">  
<div class="card  w-75">
  <div class="card text-center  " >
   <h5 class="card-title">Driver's Jobs</h5>
  <div class="card-body">
   <table class="table table-hover ">
  <thead>
    <tr>
      <th scope="col" class="table-light" >Job Number</th>
      <th scope="col" class="table-light"  >Pickup location</th>
      <th scope="col"  class="table-light" >Pickup Date</th>
      <th scope="col" class="table-light" >Pickup Time</th>
      <th scope="col" class="table-light" >Your Cut(Rs.)</th>
      <th scope="col" class="table-light" >Driver's choice</th>
      <th scope="col"  >Journey status</th>

      <th scope="col">Job Details</th>     
    </tr>
  </thead>
   <tbody>
   <c:forEach var="job" items="${jobs}"> 
   
      <c:set var = "jobresID" scope = "session" value = "${job.reservation.reservationID}"/>
      <c:set var = "jobcusID" scope = "session" value="${job.reservation.cusID}"/>
      <c:set var = "jobempID" scope = "session" value="${job.empID}"/>
      <c:set var = "jobdriverID" scope = "session" value="${job.driverID}"/>
       <c:set var = "cuthowfar" scope = "session" value="${job.reservation.how_far}"/>
         <c:set var = "cutduration" scope = "session" value="${job.reservation.hours}"/>
       <c:set var = "smID" scope = "session" value="sm${jobresID}${jobcusID}${jobempID}${jobdriverID}"/>
        <c:set var = "vdID" scope = "session" value="vd${jobresID}${jobcusID}${jobempID}${jobdriverID}"/> 
    <tr>
      <th scope="row">1</th>
           
     <td>${job.reservation.pickup_location}</td>
      <td>${job.reservation.pickUpDate}</td>
     <td>${job.reservation.pickUpTime}</td> 
     <td><c:out value="${cuthowfar*cutduration}"></c:out></td> 
     <td> 
   <form action="driverdeletejobs" method="post">
   <input type="text"  name="resID" value="${job.reservation.reservationID}"  hidden>
   <input type="text" name="cusID" value="${job.reservation.cusID}"  hidden>
   <input type="text" name="empID" value="${job.empID}"  hidden>
   <input type="text" name="driverID" value="${job.driverID}"  hidden>
  <button type="submit" class="btn btn-danger">Reject</button>
   </form>
   </td>
    <td> 
<!-- Button trigger modal -->
<button type="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#${smID}">
Finished
</button>
<!-- Modal -->
<div class="modal fade" id="${smID}" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">Are your sure journey is over?</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
    <h6>You will get paid after our employee has checked the journey status.Thank you Mr.${lastName} for your update. Take care,stay safe. </h6>
       
 

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">No</button>
   <form action="updateJourneyStatus" method="post">
   <input type="text"  name="resID" value="${job.reservation.reservationID}"  hidden>
   <input type="text" name="cusID" value="${job.reservation.cusID}"  hidden>
    <input type="text" name="driverID" value="${job.driverID}"  hidden>
       <button type="submit" class="btn btn-primary" >Yes</button>
        </form>  
      </div>
    </div>
  </div>
</div>
   </td>
 
   <td>
 <button type="button" class="btn btn-info" data-bs-toggle="modal" data-bs-target="#${vdID}">
  View Details
</button>

<!-- Modal -->
<div class="modal fade " id="${vdID}" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog " role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">Job Details</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
      
   <h2>
    Reservation Details
   </h2>
  <table class="table table-striped ">

    <tr>
     <th scope="row">Vehicle Type</th>
      <td>${job.reservation.vehicle_type}</td>
    
    </tr>
    <tr>
    <th scope="row">Hours</th>
      <td>${job.reservation.hours}</td>
     
    </tr>
    
     <tr>
    <th scope="row">Days</th>
      <td>${job.reservation.days}</td>
     
    </tr>
  
   <tr>
    <th scope="row">Minutes</th>
      <td>${job.reservation.minutes}</td>
     
    </tr>
  
   <tr>
    <th scope="row">Distance</th>
      <td>${job.reservation.how_far}</td>
     
    </tr>
  
  
  

</table>

<br/>
 <h2>
    Vehicle Details
   </h2>
<table class="table table-striped">

    <tr>
      <th scope="row">Fuel Type</th>
      <td>${job.vehicle.fuel_type}</td>
     
    </tr>
    <tr>
      <th scope="row">License No:</th>
      <td>${job.vehicle.license_no}</td>
      
    </tr>
    <tr>
      <th scope="row">Color</th>
       <td>${job.vehicle.color}</td>
    </tr>
      <tr>
      <th scope="row">Body Type</th>
       <td>${job.vehicle.body_type}</td>
    </tr>
    
      <tr>
      <th scope="row">Model</th>
       <td>${job.vehicle.model}</td>
    </tr>
    
      <tr>
      <th scope="row">No of people</th>
       <td>${job.vehicle.noOfPeeps}</td>
    </tr>
    
      <tr>
      <th scope="row">Edition</th>
       <td>${job.vehicle.edition}</td>
    </tr>
    <tr>
      <th scope="row">Special Notes</th>
       <td>${job.vehicle.specialNote}</td>
    </tr>
    <tr>
      <th scope="row">Brand</th>
       <td>${job.vehicle.brand}</td>
    </tr>
    <tr>
      <th scope="row">Registration No:</th>
       <td>${job.vehicle.registrationNo}</td>
    </tr>
     <tr>
      <th scope="row">Transmission</th>
       <td>${job.vehicle.transmission}</td>
    </tr>
    

</table>
<br/>
 
 




        </div>
     
    </div>
  </div>
</div>

   
   </td>
</tr>




    

 </c:forEach>
  </tbody>
 </table>

    
       </div>
</div>
</div>
 </div> 
  
  
  
   
  
  
  
  
  
  
  
  
  
  <div class="card-body">
    <h5 class="card-title">View your Payments here</h5>
    <p class="card-text">Just click on the button to view your payments so far</p>
    
    
    
    <button class="btn btn-secondary" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasRight" aria-controls="offcanvasRight">View My Payments</button>

<div class="offcanvas offcanvas-end w-50 p-3" tabindex="-1" id="offcanvasRight" aria-labelledby="offcanvasRightLabel">
  <div class="offcanvas-header">
    <h5 id="offcanvasRightLabel">Payments</h5>
    <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
  </div>
  <div class="offcanvas-body ">
  
<table class="table">
  <thead>
    <tr>
      <th scope="col">PaymentID</th>
      <th scope="col">Amount</th>
      <th scope="col">Payment Type</th>
      <th scope="col">Payment Method</th>
       <th scope="col">Pay date and Time</th>
        
    </tr>
  </thead>
    <tbody>
    <c:forEach var="pay" items="${pays}"> 
 
  
     <tr>
     <td>${pay.paymentID}</td>
     <td>${pay.amount}</td>
     <td>${pay.paymentType}</td>
     <td>${pay.paymethod}</td> 
    
  
     <td> ${pay.paydateTime}</td>
   
     </tr>  
 
 </c:forEach>
  </tbody>
   
</table>  






  </div>
</div>
   </div> 
   </div>
    
    <!-- Button trigger modal -->








    <jsp:include page="footer.jsp" />