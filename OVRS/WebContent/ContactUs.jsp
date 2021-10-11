<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <jsp:include page="MainNavBar.jsp"/>
 
 <form action="feedBack" method="post">
<div class="input-group">
  <span class="input-group-text">Full Name</span>
  <input type="text" aria-label="First name" name="fullName" class="form-control">
 
</div>
<div class="input-group flex-nowrap">
  <span class="input-group-text" id="addon-wrapping">E-mail</span>
  <input type="text" class="form-control" placeholder="example@gmail.com" name="email" aria-label="Username" aria-describedby="addon-wrapping">
</div>
<div class="input-group">
  <span class="input-group-text">Please Leave your message here</span>
  <textarea class="form-control" aria-label="With textarea" name="message"></textarea>
  </div>
  <button type="submit" class="btn btn-primary btn-lg">Send</button>
 </form>
 

    <jsp:include page='footer.jsp' />