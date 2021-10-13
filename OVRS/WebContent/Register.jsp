<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <jsp:include page="MainNavBar.jsp" />   

<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
  <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
  

  <sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/ovrs" user="root" password="thulina4499" />
 
 <sql:query var="rs" dataSource="${db}">
 select * from user
 </sql:query>
<c:forEach var="userDetails" items="${rs.rows}">

</c:forEach>


    <script src="js/bootstrap.js">
    </script>
    <script src="https://unpkg.com/@popperjs/core@2.4.0/dist/umd/popper.min.js">
    </script>
    
<!--<link rel="stylesheet" href="css/signUp.css">-->

    
    
    
    
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
                        <select name="usertype" id="usertypeID" onchange="changeType(this.value)">
                            <option value="customer" selected>Customer</option>
                            <option value="driver">Driver</option>
                            <option value="vehicleOwner">Vehicle Owner</option>                   
                            </select>
                    </td>
                <tr>
             
                <tr>
                    <td>
                        <input type="text" name="firstname" placeholder="FirstName" required></input>
                    </td>
                    <td>
                        <input type="text" name="lastname" placeholder="LastName" required></input>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="text" name="username" placeholder="Username" required></input>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="password" name="password" placeholder="Password" title="Eight or more characters" id="pwd" required></input>

                    </td>
                    <td>
                        <input type="password" name="repassword" placeholder="Re-enter Password"  title="Eight or more characters" id="repwd" required></input>
                        
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="text" name="nic" placeholder="NIC"  title="Nine numbers and V" required id="NIC"></input>
                    </td>
                </tr>
                
               
                <tr>
                    <td colspan="2">
                        <input type="text" name="email" placeholder="E-Mail"  id="eAddress" required></input>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="text" name="phonenumber" placeholder="Phone Number"   title="Ten numbers only" required id="pTpNo"></input>
                        
                    </td>
                </tr>
                  <tr>
                    <td colspan="2">
                        <div class="subtopic" >Address Details </div>
                        <hr>
                    </td>
                </tr>
                
                
                
              
                <tr>
                    <td>
                        <input type="text" name="homeno" placeholder="Home No" required></input> 
                    </td>
                    <td>
                        <input type="text" name="streetname" placeholder="Street Name" required></input>
                    </td>
                </tr>
                <tr>
                <td>
                    <input type="text" name="city" placeholder="City" required></input>
                </td>
            </tr>
              <tr>
                    <td colspan="2">
                        <div class="subtopic hide bank" > Bank Details </div>
                        <hr class="hide bank">
                    </td>
                </tr>
           <tr>
                  <td>
                        <select name="bank" id="bankselectID" class="hide bank"  > 
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
                        <input  id="accountnumber"  name="accountnumber" type="hidden" placeholder="Account Number" class="bank  bank-hide"  pattern="[0-9]{15}" title="Fifteen numbers only" required>
                    </td>
                </tr>
                  <tr>
                    <td colspan="2">
                        <div class="subtopic hide driver" >Driver Vehicle Experience levels and Licenses Number </div>
                        <hr class="hide driver">
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
				     <td colspan="2" >
					          <input  type="hidden" id="driverLicense" name="driverLicense" placeholder="Driver License" class="driver driver-hide" required>
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
          <div id="invalidNIC">
          	<p class="text-danger" style="position:relative; left:400px; bottom:567px;">Oops! Invalid NIC </p>
          </div>
           <div id="invalidemail">
          	<p class="text-danger" style="position:relative; left:400px; bottom:540px;">Oops! Invalid email </p>
          </div>
           <div id="invalidTpNo">
          	<p class="text-danger" style="position:relative; left:400px; bottom:515px;">Oops! Invalid telephone number</p>
          </div>
          
          <div id="invRepwd" class="text-danger" style="position:relative; left:400px; bottom:758px;">Passwords do not match.</div><br>
         
    </div>   


         <script>  
            function changeType(value){
         
				var driverAttr=document.getElementsByClassName('driver')
				var bankAttr=document.getElementsByClassName('bank')
				var drivertext=document.getElementsByClassName('driver-hide')
				var banktext=document.getElementsByClassName('bank-hide')
			
			
                if(value=="customer"){
                	drivertext[0].type='hidden';
                	banktext[0].type='hidden';
                	for(let i=0;i<driverAttr.length;i++){
						console.log("^^^^^")
						driverAttr[i].classList.add('hide');
					}
					for(let i=0;i<bankAttr.length;i++){
						console.log("kkkkkkkkkk")
						bankAttr[i].classList.add('hide');
					}
					
					
                }
                if( value=="vehicleOwner"){
                 	drivertext[0].type='hidden';
                	banktext[0].type='text';
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
					drivertext[0].type='text';
                	banktext[0].type='text';
					for(let i=0;i<bankAttr.length;i++){
						bankAttr[i].classList.remove('hide');
					}
                	for(let i=0;i<driverAttr.length;i++){
						driverAttr[i].classList.remove('hide');
					}
				}
                         
        }
            var NIC = document.getElementById("NIC");


            NIC.onfocus = () => {
                if (!NIC.value.match(/(^[0-9]{9}[V,X]$)|(^[0-9]{12}$)/ig)) {
                    document.getElementById("invalidNIC").style.display = "block";
                }
            }
            NIC.onblur = () => {
                document.getElementById("invalidNIC").style.display = "hidden";
            }

            NIC.onkeyup = () => {
                if (NIC.value.match(/(^[0-9]{9}[V,X]$)|(^[0-9]{12}$)/ig)) {
                    document.getElementById("invalidNIC").style.display = "hidden";
                } else {
                    document.getElementById("invalidNIC").style.display = "block";
                }

            }

            //validate telephone number
            var tpNo = document.getElementById("pTpNo");


            tpNo.onfocus = () => {
                if (!tpNo.value.match(/[0-9]{3}-[0-9]{7}/)) {
                    document.getElementById("invalidTpNo").style.display = "block";
                }
            }
            tpNo.onblur = () => {
                document.getElementById("invalidTpNo").style.display = "hidden";
            }


            tpNo.onkeyup = () => {
                if (tpNo.value.match(/[0-9]{3}-[0-9]{7}/)) {
                    document.getElementById("invalidTpNo").style.display = "hidden";
                } else {
                    document.getElementById("invalidTpNo").style.display = "block";
                }

            }



            //validate email

            var emailAddress = document.getElementById("eAddress");


            emailAddress.onfocus = () => {
                if (!emailAddress.value.match(/(^[a-z0-9]+@[a-z]+.[a-z.]+)/i)) {
                    document.getElementById("invalidemail").style.display = "block";
                }
            }


            emailAddress.onblur = () => {
                document.getElementById("invalidemail").style.display = "hidden";
            }


            emailAddress.onkeyup = () => {
                if (emailAddress.value.match(/(^[a-z0-9]+@[a-z]+.[a-z.]+)/i)) {
                    document.getElementById("invalidemail").style.display = "hidden";
                } else {
                    document.getElementById("invalidemail").style.display = "block";
                }
            }



            //validate password
            var myPwd = document.getElementById("pwd");
            
          
            //validate retype password
            var retypePwd = document.getElementById("repwd");

            retypePwd.onfocus = () => {
                if (retypePwd.value != myPwd.value) {
                    document.getElementById("invRepwd").style.display = "block";
                } else {
                    document.getElementById("invRepwd").style.display = "hidden";
                }
            }

            retypePwd.onblur = () => {
                document.getElementById("invRepwd").style.display = "hidden";
            }


            retypePwd.onkeyup = () => {
                if (retypePwd.value !== myPwd.value) {
                    document.getElementById("invRepwd").style.display = "block";
                } else {
                    document.getElementById("invRepwd").style.display = "hidden";
                }
            }
            </script>
    <jsp:include page="footer.jsp" />