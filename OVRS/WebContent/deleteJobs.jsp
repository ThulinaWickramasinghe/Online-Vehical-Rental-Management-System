<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
           <%
      if(session.getAttribute("userNames")==null){
    	   response.sendRedirect("login.jsp");
     }
   
   %>
<!DOCTYPE html>
<html>
<head>

   <meta charset="ISO-8859-1">
         <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
         <link rel = "stylesheet" href="css/bootstrap.css">
	 <link rel = "stylesheet" href="css/navBar.css">
<title>Employee Manager-Delete Jobs</title>
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
  
  
   <form action="logout">
   <input type="submit" value="logout">
   </form>
  
  
  
</nav>
<h1>Enter reservation ID of the customer reservations that has been completed
To delete the recommended jobs</h1>
<form action="deletejobs" method="post">
         <tr>
               <td>
                <input type="text" name="reservationID" placeholder="Reservatin ID">
               </td>
           </tr>
           <tr>
              <td>
                <input type="submit" name="delete jobs" value="Delete this job">
             </td>
           </tr>
      </table>

</form>

<a href="EmpMgrAssignJobs.jsp">Back to job assign</a>>
</body>
</html>