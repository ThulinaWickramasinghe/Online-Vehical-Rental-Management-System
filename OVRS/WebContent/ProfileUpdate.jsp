 <jsp:include page="MainNavBar.jsp" />


  <div class="container rounded bg-white mt-5 mb-5 border border-primary">
    <div class="row">
        <div class="col-md-3 border-right">
            <div class="d-flex flex-column align-items-center text-center p-3 py-5"><img class="rounded-circle mt-5" width="150px" src="https://st3.depositphotos.com/15648834/17930/v/600/depositphotos_179308454-stock-illustration-unknown-person-silhouette-glasses-profile.jpg"><span class="font-weight-bold">DriverID-${driverID}</span><span class="text-black-50">${email} </span><span> </span></div>
        </div>
     <div class="col-md-5 border-right ">
            <div class="p-3 py-5">
                <div class="d-flex justify-content-between align-items-center mb-3">
                    <h4 class="text-right">Change Profile Settings</h4>
                </div>
               
                <form action="profileupdate" method="post"> 
                <div class="row mt-2">
                    <div class="col-md-6"><label class="labels-1 float-start">First Name</label><input type="text" class="form-control" name="firstName" value="${firstName}"> </div>
                    <div class="col-md-6"><label class="labels-1 float-start">Last Name</label><input type="text" class="form-control" name="lastName" value="${lastName}"  ></div>
                </div>
                <div class="row mt-3">                                           
                    <div class="col-md-12"><label class="labels-1 float-start">User Name</label><input type="text" class="form-control" name="userNames"  value="${userNames}" ></div>
                    <div class="col-md-12"><label class="labels-1 float-start">Mobile Number</label><input type="text" class="form-control" name="phoneNo" value="${phoneNo}" ></div>
                    <div class="col-md-12"><label class="labels-1 float-start">Password</label><input type="text" class="form-control"  name="passwords" value="${passwords}" ></div>
                    <div class="col-md-12"><label class="labels-1 float-start">NIC</label><input type="text" class="form-control"  name="NIC" value="${NIC}" ></div>
                      <div class="col-md-12"><label class="labels-1 float-start">e-mail</label><input type="text" class="form-control"  value="${email}" name="email"></div>
                    <div class="col-md-12"><label class="labels-1 float-start">Home Number</label><input type="text" class="form-control" name="homeNo" value="${homeNo}" ></div>
                    <div class="col-md-12"><label class="labels-1 float-start">Street Name</label><input type="text" class="form-control" name="streetName" value="${streetName}" ></div>
                    <div class="col-md-12"><label class="labels-1 float-start">City</label><input type="text" class="form-control"  name="city" value="${city}" ></div>
                </div>
              
               <div class="d-flex float-end"> 
             
               <input name="driverID" value="${driverID}" hidden>
                <div class="mt-5 text-center"><button class="btn btn-secondary profile-button" type="Submit">Save Changes</button></div>
                 </div>
               </form>
            
             </div>
         </div>
               
       </div>
       <br/>
  </div>
   

    <jsp:include page="footer.jsp" />