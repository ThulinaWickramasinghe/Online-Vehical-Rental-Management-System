 <jsp:include page="MainNavBar.jsp" />
   <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<a href="vehicleRental.jsp">Click here to go to rent a vehicle page</a>
   <br/>
   <br/> 
    <c:forEach var="vehi" items="${vehiDetails}">
    
    <div class="container">
   	<div class="table-responsive">
    <table border="2" class="table table-bordered my-table2">
    
    <c:set var="vehicleID" value="${vehi.vehicleID}" />
    <c:set var="fuel_type" value="${vehi.fuel_type}" />
    <c:set var="license_no" value="${vehi.license_no}" />
    <c:set var="vehi_type" value="${vehi.vehi_type}" />
     <c:set var="color" value="${vehi.color}" />
    <c:set var="model" value="${vehi.model}" />
        <c:set var="noOfPeeps" value="${vehi.noOfPeeps}" />
     <c:set var="body_type" value="${vehi.body_type}" />
    <c:set var="noOfPeeps" value="${vehi.noOfPeeps}" />
    <c:set var="brand" value="${vehi.brand}" />
    
     <c:set var="edition" value="${vehi.edition}" />
    <c:set var="registrationNo" value="${vehi.registrationNo}" />
    <c:set var="specialNote" value="${vehi.specialNote}" />

     <c:set var="pricePerKm" value="${vehi.pricePerKm}" />
    <c:set var="transmission" value="${vehi.transmission}" />
    <c:set var="owneruserID" value="${vehi.owneruserID}" />
 
    
     <tr>
     <td>${vehi.vehiclePic}</td>
     <td>Veh ID: ${vehi.vehicleID}</td>
     <td>Fuel Type: ${vehi.fuel_type}</td>
     <td>License No: ${vehi.license_no}</td> 
    
     </tr>   
     <tr>
     <td>Type:  ${vehi.vehi_type}</td>
     <td>Color: ${vehi.color}</td>
     <td>Body Type: ${vehi.body_type}</td>
      <td>Model: ${vehi.model}</td>
     </tr>
      <tr>
     <td>Windows:  ${vehi.noOfPeeps}</td>
     <td>Brand: ${vehi.brand}</td>
     <td>Edition: ${vehi.edition}</td>
      <td>Registration No: ${vehi.registrationNo}</td>
     </tr> 
      <tr>
     <td>Special Notes:  ${vehi.specialNote}</td>
     <td>Price per KM: ${vehi.pricePerKm}</td>
      <td>Transmission: ${vehi.transmission}</td>
      <td>Owner User ID: ${vehi.owneruserID}</td>
     </tr>  
     <tr>
       
       <td colspan="2">
       <c:url value="updateVehicle.jsp" var="vehiUpdate" >
         <c:param name="vehicleID" value="${vehicleID}" />
         <c:param name="fuel_type" value="${fuel_type}" />
         <c:param name="license_no" value="${license_no}" />
         <c:param name="vehi_type" value="${vehi_type}" />
         <c:param name="color" value="${color}" />
         <c:param name="model" value="${model}" />
           <c:param  name="noOfPeeps" value="${noOfPeeps}" />
         <c:param name="body_type" value="${body_type}" />
         <c:param name="brand" value="${brand}" />
         <c:param name="edition" value="${edition}" />
         <c:param name="registrationNo" value="${registrationNo}" />
            <c:param name="specialNote" value="${specialNote}" />               
           <c:param name="pricePerKm" value="${pricePerKm}" /> 
          <c:param name="transmission" value="${transmission}" />               
           <c:param name="owneruserID" value="${owneruserID}" />   
       </c:url>
       <a href="${vehiUpdate}">
         <input type="button" name="update" class="btn btn-warning" value="update">
       </a>
       </td>
       <td colspan="2">
        <c:url value="deleteVehicle.jsp" var="vehidelete" >
         <c:param name="vehicleID" value="${vehicleID}" />
          <c:param name="owneruserID" value="${owneruserID}" />
       </c:url>
   <a href="${vehidelete}">
         <input type="button" name="delete" class="btn btn-danger" value="delete">
        </a>
       </td>
     </tr>
    </table></div></div>
    <br/>
    </c:forEach>

    
    
    
    
    
    
   
    <jsp:include page="footer.jsp" />