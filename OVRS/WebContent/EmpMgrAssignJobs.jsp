 <jsp:include page="MainNavBar.jsp" />


<form action="assignjobs" method="post"> 

      <table>
           <tr>
               <td>
               <input type="text" name="reserveID" placeholder="ReservationID" ></input>    
               </td>
           </tr>
           <tr>
                <td>
              <input type="text" name="cusID" placeholder="customerID"></input>
                </td>
           </tr>
           <tr>
               <td>               
               <input type="text" name="driverID" placeholder="DriverID"></input>
               </td>
           </tr>
                      
               <input type="text" name="managerID" placeholder="managerID" value="${EmpID}" hidden></input>
               
           <tr>
               <td>               
               <input type="text" name="vehicleID" placeholder="vehicleID"></input>
               </td>
           </tr>
           <tr>
               <td>
                <input type="text" name="date" placeholder="Journey Date">
               </td>
           </tr>
             <tr>
               <td>
                <input type="text" name="time" placeholder="Pickup Time">
               </td>
           </tr>
           <tr>
              <td>
                <input type="submit" name="Assign job" value="Create job">
             </td>
           </tr>
      </table>
</form>      
<a href="deleteJobs.jsp" >Delete recommended jobs</a>
        <jsp:include page='footer.jsp' />