<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
   <%
      if(session.getAttribute("userNames")==null){
    	   response.sendRedirect("Login.jsp");
     }
   
   %>
   welcome ${userNames}
   <form action="logout">
   <input type="submit" value="logout">
   </form>
</body>
</html>