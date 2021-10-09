 <jsp:include page="MainNavBar.jsp" />
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
    <jsp:include page="footer.jsp" />