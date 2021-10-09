<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <jsp:include page="MainNavBar.jsp" />   




    <script src="js/bootstrap.js">
    </script>
    <script src="https://unpkg.com/@popperjs/core@2.4.0/dist/umd/popper.min.js">
    </script>
    
    

    
    
    
    
        <div class="container_">
            <h1>Register Now</h1>
         <form action="signup" id="form" method="post">

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
                        <select name="bank" id="bankselectID" class="hide bank" > 
                                                    <option value="BOC" selected>BOC</option>
                                                    <option value="NSB">NSB</option>
                                                    <option value="3">Sampath</option>       
                        </select>
                    </td>
                    <td>
                        <select name="branch" id="brancselectID" class="hide bank" >
                                                    <option value="Kadawatha-1" selected>Kadawatha-1</option>
                                                    <option value="Kadawatha-2">Kadawatha-2</option>
                                                    <option value="Kadawatha-3">Kadawatha-3</option>                    
                        </select>
                    </td>
                </tr>
				
				
                <tr>
                    <td colspan="2">
                        <input  id="accountnumber"  name="accountnumber" type="text" placeholder="Account Number" class="bank hide">
                    </td>
                </tr>
				<tr>
				     <td colspan="2" >
					          <input  type="text" id="driverLicense" name="driverLicense" placeholder="Driver License" class="driver hidden">
					 </td>
				</tr>
				<tr>
				     <td>
	                    <label  class="driver hide" >car</label>
                                                    													
                        
					 </td>
					 <td>
							    <input type="radio" id="vehicle14" name="carexpertLevel" value="newBie" class="hide driver">
                               <label for="vehicle1"> <small class="hide driver" >NB</small></label>
                               <input type="radio" id="vehicle15" name="carexpertLevel" value="medium" class="hide driver">
                               <label for="vehicle2"> <small class="hide driver" >MD</small></label>
                               <input type="radio" id="vehicle16" name="carexpertLevel" value="expert" class="hide driver">
                               <label for="vehicle3"><small class="hide driver"> EX</small></label>
					 </td>
				</tr>
				<tr>
				     <td colspan="2">
					 </td>
				</tr>
					<tr>
				     <td>
	                       <label  class="driver hide" >Bike</label>
                                                    
					 </td>
					 <td>
							   <input type="radio" id="vehicle4" name="bikeexpertLevel" value="newBie" class="hide driver">
                               <label for="vehicle1"> <small class="hide driver" >NB</small></label>
                               <input type="radio" id="vehicle5" name="bikeexpertLevel" value="medium" class="hide driver">
                               <label for="vehicle2"> <small class="hide driver" >MD</small></label>
                               <input type="radio" id="vehicle6" name="bikeexpertLevel" value="expert" class="hide driver">
                               <label for="vehicle3"><small class="hide driver"> EX</small></label>
					 </td>
				</tr>
				<tr>
				     <td colspan="2">
					 </td>
				</tr>
					<tr>
				     <td>
	                        <label  class="driver hide" >Van</label>
                                                     													
                      
					 </td>
					 <td>
							   <input type="radio" id="vehicle7" name="vanexpertLevel" value="newBie" class="hide driver">
                               <label for="vehicle1"> <small class="hide driver" >NB</small></label>
                               <input type="radio" id="vehicle8" name="vanexpertLevel" value="medium" class="hide driver">
                               <label for="vehicle2"> <small class="hide driver" >MD</small></label>
                               <input type="radio" id="vehicle9" name="vanexpertLevel" value="expert" class="hide driver">
                               <label for="vehicle3"><small class="hide driver"> EX</small></label>
					 </td>
				</tr>
							<tr>
				     <td>
	                    <label  class="driver hide" >Jeep</label>
					 </td>
					 <td>
							   <input type="radio" id="vehicle10" name="jeepexpertLevel" value="newBie" class="hide driver">
                               <label for="vehicle1"> <small class="hide driver">NB</small></label>
                               <input type="radio" id="vehicle11" name="jeepexpertLevel" value="medium" class="hide driver">
                               <label for="vehicle2"> <small class="hide driver">MD</small></label>
                               <input type="radio" id="vehicle12" name="jeepexpertLevel" value="expert" class="hide driver">
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
                        <input type="text" name="username" placeholder="Username"></input><!--unique-->
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="password" name="password" placeholder="Password"></input>

                    </td>
                    <td>
                        <input type="password" name="repassword" placeholder="Re-enter Password"></input>
                        
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="text" name="nic" placeholder="NIC"></input>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="text" name="email" placeholder="E-Mail"></input> <!--unique-->
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
        
    </table>
         </form>
    </div>   


         <script>  
            function chanegeType(value){
         
				var driverAttr=document.getElementsByClassName('driver')
				var bankAttr=document.getElementsByClassName('bank')
			
			
                if(value=="customer"){
					for(let i=0;i<driverAttr.length;i++){
						console.log("^^^^^")
						driverAttr[i].classList.add('hidden');
					}
					for(let i=0;i<bankAttr.length;i++){
						console.log("kkkkkkkkkk")
						bankAttr[i].classList.add('hidden');
					}
					
					
                }
                if( value=="vehicleOwner"){
                	for(let i=0;i<bankAttr.length;i++){
                		console.log("kkkkkkkkkksssssssss")
						bankAttr[i].classList.remove('hide');
					}
                	for(let i=0;i<driverAttr.length;i++){
                		console.log("kkkkkkkkkksssssssss")
                		driverAttr[i].classList.add('hide');
					}
                }
				
				if(value=="driver"){
					for(let i=0;i<bankAttr.length;i++){
						bankAttr[i].classList.remove('hide');
					}
                	for(let i=0;i<driverAttr.length;i++){
						driverAttr[i].classList.remove('hide');
					}
				}
                         
        }
            </script>
    <jsp:include page="footer.jsp" />