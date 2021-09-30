<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <form action="logins" method="post">
 user name <input type="text" name="username" placeholder="Enter your username"></input><br/><br/>
  password <input type="password" name="password" placeholder="Enter your password"></input><br/><br/>
  <select name="userType">
    <option value="customer" selected>
       Customer
    </option >
    <option value="driver">
        Driver
    </option>  
    <option value="carowner">
        Car Owner
    </option>
    <option value="emp">
        Employee Manager
    </option>
       
    <option>
    </select><br/><br/>
  <input type="submit" name="submit" value="Login"/>
 </form>
</body>
</html>