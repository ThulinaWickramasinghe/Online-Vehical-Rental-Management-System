 <jsp:include page="MainNavBar.jsp" />
  <link rel="stylesheet" href="css/login.css">
       
        <div class="container_">

            <h1>LOGIN</h1>
            <h4>Enter your Username and Password</h4>
        <form action="logins" method="post">

                <input type="text" name="username" placeholder="Username"></input>
                <br>
                <input type="password" name="password" placeholder="Password"></input>
                <br>
                <input type="submit" value="Submit">
            </form>
            <p>New to Rent Smart..? <a href="Register.jsp" class="register_now">Register Now</a> </p>
        </div>
         <script src="js/bootstrap.js">
    </script>
    <script src="https://unpkg.com/@popperjs/core@2.4.0/dist/umd/popper.min.js">
    </script>
     <jsp:include page="footer.jsp" />