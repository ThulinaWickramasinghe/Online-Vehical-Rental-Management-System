<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <jsp:include page="MainNavBar.jsp" />

<%
String id=request.getParameter("vehicleID");
String owneruserID=request.getParameter("owneruserID");
%>
  <form action="vehicleDelete" method="post">
        <input type="text" name="veOID" value="<%=owneruserID%>" readonly>
        <input type="text" name="vehicleID" value="<%=id%>"  readonly>
         <input type="submit" name="delete" value="delete">
</form>
</body>
</html>