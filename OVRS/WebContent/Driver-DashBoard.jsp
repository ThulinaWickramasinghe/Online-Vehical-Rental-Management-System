
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <jsp:include page="MainNavBar.jsp" />
<div class="card text-center">
  <div class="card-header">
    <ul class="nav nav-pills card-header-pills">
      <li class="nav-item">
      <button type="button"  class="btn btn-primary" value="My profiles" onclick="window.location.href = '#';">
     My profile       
</button>
      </li>
      <li class="nav-item">
       
      <form action="jobs" method="post">
      <input type="text" name="driverID" value="${driverID}" hidden>
  <button type="submit" class="btn btn-primary ">
      My jobs
        </button>
     
     </form>
 
      </li>
    
    </ul>
  </div>
  <div class="card-body">
  

    
  <div class="container rounded bg-white mt-5 mb-5 border border-primary" >
    <div class="row">
        <div class="col-md-3 border-right">
            <div class="d-flex flex-column align-items-center text-center p-3 py-5"><img class="rounded-circle mt-5" width="150px" src="https://st3.depositphotos.com/15648834/17930/v/600/depositphotos_179308454-stock-illustration-unknown-person-silhouette-glasses-profile.jpg"><span class="font-weight-bold">DriverID-${driverID}</span><span class="text-black-50">${email} </span><span> </span></div>
        </div>
        <div class="col-md-5 border-right">
            <div class="p-3 py-5">
                <div class="d-flex justify-content-between align-items-center mb-3">
                    <h4 class="text-right">Profile Settings</h4>
                </div>
               
                
                <div class="row mt-2">
                    <div class="col-md-6"><label class="labels-1 float-start">First Name</label><input type="text" class="form-control" value="${firstName}" readonly></div>
                    <div class="col-md-6"><label class="labels-1 float-start">Last Name</label><input type="text" class="form-control" value="${lastName}"  readonly></div>
                </div>
                <div class="row mt-3">                                           
                    <div class="col-md-12"><label class="labels-1 float-start">User Name</label><input type="text" class="form-control"  value="${userNames}" readonly></div>
                    <div class="col-md-12"><label class="labels-1 float-start">Mobile Number</label><input type="text" class="form-control"  value="${phoneNo}" readonly></div>
                    <div class="col-md-12"><label class="labels-1 float-start">Password</label><input type="text" class="form-control"  value="${passwords}" readonly></div>
                    <div class="col-md-12"><label class="labels-1 float-start">NIC</label><input type="text" class="form-control"  value="${NIC}" readonly></div>
                    <div class="col-md-12"><label class="labels-1 float-start">e-mail</label><input type="text" class="form-control"  value="${email}" readonly></div>
                    <div class="col-md-12"><label class="labels-1 float-start">Home Number</label><input type="text" class="form-control"  value="${homeNo}" readonly></div>
                    <div class="col-md-12"><label class="labels-1 float-start">Street Name</label><input type="text" class="form-control"  value="${streetName}" readonly></div>
                    <div class="col-md-12"><label class="labels-1 float-start">City</label><input type="text" class="form-control"  value="${city}" readonly></div>
                </div>
              
               <div class="d-flex float-end"> 
           
                <div class="mt-5 text-center"><button class="btn btn-primary profile-button" type="button" data-bs-toggle="modal" data-bs-target="#update">Update Profile</button></div>

           
                <div class="mt-5 text-center"><button class="btn btn-danger profile-button" type="submit" data-bs-toggle="modal" data-bs-target="#delete">Delete Profile</button></div>
             
               </div>
            </div>
        </div>
  
    </div>
    <br/>
</div>
</div>
</div>
  
      <!-- Button trigger modal -->
<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
  Launch static backdrop modal
</button>

<!-- Modal update -->
<div class="modal fade" id="update" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-scrollable">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">Reminders</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        Please update every field,specially user name
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
       <a href="ProfileUpdate.jsp"> <button type="button" class="btn btn-primary">Understood</button></a>
      </div>
    </div>
  </div>
</div>
  <!-- Modal delete -->
<div class="modal fade" id="delete" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-scrollable">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">Ado why bn? ?</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        If  you delete  this account, there is no chance of  getting back this account.
        <div class="tenor-gif-embed" data-postid="17939096" data-share-method="host" data-aspect-ratio="1.77778" data-width="100%"><a href="https://tenor.com/view/pakistani-fan-disappointed-gif-17939096">Pakistani Fan GIF</a>from <a href="https://tenor.com/search/pakistani-gifs">Pakistani GIFs</a></div> <script type="text/javascript" async src="https://tenor.com/embed.js"></script>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
        <form action="#" method="post">
        <input name="driverID" value="${driverID}" hidden>
        <button type="button" class="btn btn-primary">Yes</button>
        
        </form>
      </div>
    </div>
  </div>
</div>  
  






    <jsp:include page="footer.jsp" />