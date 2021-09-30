<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>


    <head>
        <title>Register</title>
        <link rel="stylesheet" href="css/register.css">
        <style>
		    .hide{
				display:none;
			}
		</style>
		    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
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
  
  
  
  
</nav>




    <script src="js/bootstrap.js">
    </script>
    <script src="https://unpkg.com/@popperjs/core@2.4.0/dist/umd/popper.min.js">
    </script>
    
    
    
    
    
    
    
        <div class="container_">
            <h1>Register Now</h1>
         <form action="#" method="post">

            <table>
                <tr>
                    <td colspan="2">
                        <div class="subtopic" > User Details </div>
                        <hr>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <select name="usertype" id="usertypeID" onchange="chanegeType(this.value)">
                            <option value="customer" selected>Customer</option>
                            <option value="driver">Driver</option>
                            <option value="vehicleOwner">Vehicle Owner</option>                   
                            </select>
                    </td>
                <tr>
                    <td>
                        <select name="branch" id="bankselectID" class="hide" > 
                                                    <option value="1" selected>BOC</option>
                                                    <option value="2">NSB</option>
                                                    <option value="3">Sampath</option>       
                        </select>
                    </td>
                    <td>
                        <select name="branch" id="brancselectID" class="hide" >
                                                    <option value="1" selected>Kadawatha-1</option>
                                                    <option value="2">Kadawatha-2</option>
                                                    <option value="3">Kadawatha-3</option>                    
                        </select>
                    </td>
                </tr>
				
				
                <tr>
                    <td colspan="2">
                        <input  id="accountnumber" type="hidden" placeholder="Account Number" class="hide">
                    </td>
                </tr>
				<tr>
				     <td colspan="2" >
					          <input  type="hidden" id="driverLicense" name="driverLicense" placeholder="Driver License" class="hide driver">
					 </td>
				</tr>
				<tr>
				     <td>
	                    <select name="vehicleType" id="brancselectID" class="hide driver">
                                                    <option value="Car" selected>Car</option>
                                                    <option value="Bike">Bike</option>
                                                    <option value="Jeep">Jeep</option>    
                                                   <option value="Jeep">Van</option>   													
                        </select>
					 </td>
					 <td>
							    <input type="radio" id="vehicle14" name="expertLevel" value="newBie" class="hide driver">
                               <label for="vehicle1"> <small class="hide driver" >NB</small></label>
                               <input type="radio" id="vehicle15" name="expertLevel" value="medium" class="hide driver">
                               <label for="vehicle2"> <small class="hide driver" >MD</small></label>
                               <input type="radio" id="vehicle16" name="expertLevel" value="expert" class="hide driver">
                               <label for="vehicle3"><small class="hide driver"> EX</small></label>
					 </td>
				</tr>
				<tr>
				     <td colspan="2">
					 </td>
				</tr>
					<tr>
				     <td>
	                    <select name="vehicleType" id="brancselectID" class="hide driver">
                                                    <option value="Car" >Car</option>
                                                    <option value="Bike" selected>Bike</option>
                                                    <option value="Jeep">Jeep</option>    
                                                   <option value="Jeep">Van</option>   													
                        </select>
					 </td>
					 <td>
							   <input type="radio" id="vehicle4" name="expertLevel" value="newBie" class="hide driver">
                               <label for="vehicle1"> <small class="hide driver" >NB</small></label>
                               <input type="radio" id="vehicle5" name="expertLevel" value="medium" class="hide driver">
                               <label for="vehicle2"> <small class="hide driver" >MD</small></label>
                               <input type="radio" id="vehicle6" name="expertLevel" value="expert" class="hide driver">
                               <label for="vehicle3"><small class="hide driver"> EX</small></label>
					 </td>
				</tr>
				<tr>
				     <td colspan="2">
					 </td>
				</tr>
					<tr>
				     <td>
	                    <select name="vehicleType" id="brancselectID" class="hide driver">
                                                    <option value="Car" >Car</option>
                                                    <option value="Bike">Bike</option>
                                                    <option value="Jeep" selected>Jeep</option>    
                                                   <option value="Jeep">Van</option>   													
                        </select>
					 </td>
					 <td>
							   <input type="radio" id="vehicle7" name="expertLevel" value="newBie" class="hide driver">
                               <label for="vehicle1"> <small class="hide driver" >NB</small></label>
                               <input type="radio" id="vehicle8" name="expertLevel" value="medium" class="hide driver">
                               <label for="vehicle2"> <small class="hide driver" >MD</small></label>
                               <input type="radio" id="vehicle9" name="expertLevel" value="expert" class="hide driver">
                               <label for="vehicle3"><small class="hide driver"> EX</small></label>
					 </td>
				</tr>
							<tr>
				     <td>
	                    <select name="vehicleType" id="brancselectID" class="hide driver">
                                                    <option value="Car" >Car</option>
                                                    <option value="Bike">Bike</option>
                                                    <option value="Jeep">Jeep</option>    
                                                   <option value="Jeep" selected>Van</option>   													
                        </select>
					 </td>
					 <td>
							   <input type="radio" id="vehicle10" name="expertLevel" value="newBie" class="hide driver">
                               <label for="vehicle1"> <small class="hide driver">NB</small></label>
                               <input type="radio" id="vehicle11" name="expertLevel" value="medium" class="hide driver">
                               <label for="vehicle2"> <small class="hide driver">MD</small></label>
                               <input type="radio" id="vehicle12" name="expertLevel" value="expert" class="hide driver">
                               <label for="vehicle3"><small class="hide driver"> EX</small></label>
					 </td>
				</tr>
                <tr>
                    <td>
                        <input type="text" name="firstname" placeholder="FirstName"></input>
                    </td>
                    <td>
                        <input type="text" name="lastname" placeholder="LastName"></input>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="text" name="username" placeholder="Username"></input>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="password" name="password" placeholder="Password"></input>

                    </td>
                    <td>
                        <input type="password" name="rpassword" placeholder="Re-enter Password"></input>
                        
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="text" name="nic" placeholder="NIC"></input>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="text" name="email" placeholder="E-Mail"></input>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="text" name="phonenumber" placeholder="Phone Number"></input>
                        
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <div class="subtopic" > Address </div>
                        <hr>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="text" name="homeno" placeholder="Home No"></input> 
                    </td>
                    <td>
                        <input type="text" name="streetname" placeholder="Street Name"></input>
                    </td>
                </tr>
                <tr>
                <td>
                    <input type="text" name="city" placeholder="City"></input>
                </td>
            </tr>
           <tr>
               <td colspan="2">
                   <div class="submit_button">
                <input type="submit" value="Register">
            </div>
               </td>
           </tr>
        </div>       
    </table>
         </form>



         <script>  
            function chanegeType(value){
                const bankNamae=document.getElementById('bankselectID')
                const  bankBranch=document.getElementById('brancselectID')
                const bankAccNo=document.getElementById('accountnumber')
				const driverLicense=document.getElementById('driverLicense')
				var driverAttr=document.getElementsByClassName('Driver')
				//x.setAttribute("type", "hidden");
                if(value=="customer"){
					bankAccNo.setAttribute("type","hidden")
                    driverLicense.setAttribute("type","hidden")
					bankNamae.classList.add('hide')
                    bankBranch.classList.add('hide')
                    bankAccNo.classList.add('hide')
					for(var i=0;i<driverAttr.length;i++){
						driverAttr[i].classList.add('hide')
					}
					
                }
                if( value=="vehicleOwner"){
					driverLicense.setAttribute("type","hidden")
					bankAccNo.setAttribute("type","text")
                    bankNamae.classList.remove('hide')
                    bankBranch.classList.remove('hide')
                    bankAccNo.classList.remove('hide')
					for(var i=0;i<driverAttr.length;i++){
						driverAttr[i].classList.add('hide')
					}
                }
				
				if(value=="driver"){
					driverLicense.setAttribute("type","text")
				    bankAccNo.setAttribute("type","text")
                    bankNamae.classList.remove('hide')
                    bankBranch.classList.remove('hide')
                    bankAccNo.classList.remove('hide')
					for(var i=0;i<driverAttr.length;i++){
						driverAttr[i].classList.remove('hide')
					}
				}
                         
        }
            </script>
    </body>
    </html>