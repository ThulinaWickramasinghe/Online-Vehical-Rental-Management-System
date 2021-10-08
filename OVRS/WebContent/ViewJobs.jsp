 <jsp:include page="MainNavBar.jsp" />
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="card text-center">
  <div class="card-header">
    <ul class="nav nav-pills card-header-pills">
      <li class="nav-item">
  
     
        <button type="button" value="My Profile" class="btn btn-primary"  onclick="window.location.href = 'Driver-DashBoard.jsp';">
           My profile
        </button>
     
     
      </li>
      <li>
        <form action="jobs" method="post">
      <input type="text" name="driverID" value="${driverID}" hidden>
       
        <button type="submit" class="btn btn-primary  active" value="My jobs">
        My jobs
        </button>
     
     </form>
  </li>
    </ul>
  </div>
  
 <c:forEach var="job" items="${jobs}"> 
 
 <c:set var="distance" value="${job.reservation.how_far}"/>

  
  <table border="1">
 
  
     <tr>
     <td>${job.vehicle.vehicleID}</td>
     <td>${job.empID}</td>
     <td>${job.reservation.reservationID}</td>
     <td>${job.reservation.cusID}</td> 
     <td>${job.reservation.how_far}</td> 
    
     <td> ${job.dateTime}</td>
     <td>${job.driverAccept}</td>
  
   
     </tr>  
    </table>
 </c:forEach>
 <br/>
  <br/>
   <br/>
  <c:forEach var="pay" items="${pays}"> 
  <table border="1">
     <tr>
     <td>${pay.paymentID}</td>
     <td>${pay.amount}</td>
     <td>${pay.paymentType}</td>
     <td>${pay.paymethod}</td> 
    
  
     <td> ${pay.paydateTime}</td>
   
     </tr>  
    </table>
 </c:forEach>
 
 
<div class="d-flex justify-content-center align-items-center  ">  
  <div class="card text-center  " style="width: 18rem;">
  <div class="card-body">
    <h5 class="card-title">Special title treatment</h5>
    <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
    <a href="#" class="btn btn-primary">Go somewhere</a>
  </div>
</div>
  

  
  
  
   
  
  
  
  
  
  
  
  
  
  <div class="card-body">
    <h5 class="card-title">Special title treatment</h5>
    <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
    
    
    
    <button class="btn btn-primary" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasRight" aria-controls="offcanvasRight">View My Payments</button>

<div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasRight" aria-labelledby="offcanvasRightLabel">
  <div class="offcanvas-header">
    <h5 id="offcanvasRightLabel">Payments</h5>
    <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
  </div>
  <div class="offcanvas-body">
  
<table class="table">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">First</th>
      <th scope="col">Last</th>
      <th scope="col">Handle</th>
       <th scope="col">Handle</th>
        <th scope="col">Handle</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Jacob</td>
      <td>Thornton</td>
      <td>@fat</td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td colspan="2">Larry the Bird</td>
      <td>@twitter</td>
    </tr>
  </tbody>
</table>  






  </div>
</div>
    
    
    <!-- Button trigger modal -->
<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
  Launch static backdrop modal
</button>

<!-- Modal -->
<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-scrollable">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">Modal title</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Understood</button>
      </div>
    </div>
  </div>
</div>

    
    
    
    
  <!--  
   <a href="#" class="btn btn-primary">Go somewhere</a>
   <a href="#" class="btn btn-primary">Go somewhere</a> -->
  </div>
</div>








</body>
</html>