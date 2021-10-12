<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <jsp:include page="MainNavBar.jsp"/>
 <!-- main content -->
<div class="bg- py-2 bg-gradient bg-light">
  <div class="alert alert-success my-3 mx-4" role="alert">
    <div class="text-center"><span class="fs-1 fw-bold text-secondary">Welcome to </span><span class="text-warning fst-italic fs-1">Smart </span><span class="text-info fst-italic fs-1">Rent </span><span class="fs-1 fw-bold text-danger">!</span><span class="fs-1 fw-bold text-success">!</span><span class="fs-1 fw-bold text-primary">!</span>
     
      </div>
  </div>
  
</div>


<!-- middle -->
<div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="images/pexels-ahmad-ramadan-131811.jpg" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <h5 class="fs-3 text-white">Variety of Vehicles</h5>
        <div>
          <p class="fw-normal text-light">We offer a variety of vehicles including cars, vans, jeeps, cabs,
            <br> bikes and many more...</p>
        </div>
      </div>
    </div>
    <div class="carousel-item">
      <img src="images/secondCarResized.jpg" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <h5 class="fs-3 text-white">With experienced drivers</h5>
        <p class="text-white">You can request drivers for the vehicle who are rated <br>
           based on their experience and performance</p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="images/pexels-prithivi-rajan-4297503.jpg" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <h5 class="fs-3 text-white">At fare rates</h5>
        <p>We offer the lowest rates in the country</p>
      </div>
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>

 <jsp:include page='footer.jsp' />