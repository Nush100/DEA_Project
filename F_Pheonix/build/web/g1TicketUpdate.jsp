 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Update Ticket - <% out.print(request.getParameter("tick")); %> </h1>
                <form action="./G1UpdateTickets" method="post">
                     <table border="0"> 
                         <tr>
                             <td><label> Last Name </label> </td>
                             <td> : <input type="text" name="lname" placeholder="as per passport" value=""></td>
                         </tr>
                         <tr>
                             <td><label>Contact </label></td>
                             <td> : <input type="text" name="contact" placeholder="valied phone number" value=""></td>
                         </tr>
                         <tr>
                             <td><label>Flight</label></td>
                             <td> : <input type="text" name="flight" placeholder="FlightID" value="" ></td>
                         </tr>
                         <tr>
                             <td><label>Start</label></td>
                             <td> : <input type="text" name="start" placeholder="Start" value="" ></td>
                         </tr>
                         <tr>
                             <td><label>Destination</label></td>
                             <td> : <input type="text" name="des" placeholder="Destination"></td>
                             <td><input type="hidden" name="tick" value="<%= request.getParameter("tick") %>" ></td>
                         </tr>
                         <tr>
                             <td><center><input type="reset" value="Reset"></center></td>
                             <td><center><input type="submit" value="Update"></center></td>
                         </tr> 
                     </table>
                 </form>
    </body>
</html>
