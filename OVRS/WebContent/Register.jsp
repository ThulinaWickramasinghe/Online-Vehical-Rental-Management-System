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
    </head>

    <body>
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
                            <option value="1" selected>Customer</option>
                            <option value="2">Driver</option>
                            <option value="3">Vehicle Owner</option>                   
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
                        <input  id="accountnumber" type="text" placeholder="Account Number" class="hide">
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
                if(value==1){
                    bankNamae.classList.add('hide')
                      bankBranch.classList.add('hide')
                        bankAccNo.classList.add('hide')
                }
                else{
                    bankNamae.classList.remove('hide')
                    bankBranch.classList.remove('hide')
                    bankAccNo.classList.remove('hide')
                }
                         
        }
            </script>
    </body>
    </html>