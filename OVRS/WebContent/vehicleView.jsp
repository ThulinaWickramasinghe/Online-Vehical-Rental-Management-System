 <jsp:include page="MainNavBar.jsp" />
<a href="vehicleRental.jsp">Click here to go to rent a vehicle page</a>
   <br/>
   <br/> 
    <c:forEach var="vehi" items="${vehiDetails}">
    <table border="1">
     <tr>
     <td>${vehi.vehiclePic}</td>
     <td>${vehi.vehicleID}</td>
     <td>${vehi.fuel_type}</td>
     <td>${vehi.license_no}</td> 
    
     </tr>   
     <tr>
     <td> ${vehi.vehi_type}</td>
     <td>${vehi.color}</td>
     <td>${vehi.body_type}</td>
      <td>${vehi.model}</td>
     </tr>
      <tr>
     <td> ${vehi.noOfPeeps}</td>
     <td>${vehi.brand}</td>
     <td>${vehi.edition}</td>
      <td>${vehi.registrationNo}</td>
     </tr> 
      <tr>
     <td> ${vehi.specialNote}</td>
     <td>${vehi.pricePerKm}</td>
      <td>${vehi.transmission}</td>
      <td>${vehi.owneruserID}</td>
     </tr>  
    </table>
    <br/>
    </c:forEach>

    
    
    
    
    
    
   
</body>
</html>