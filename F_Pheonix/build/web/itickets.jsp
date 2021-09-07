
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            body {
                background-image: url("images/1.jpg"); 
                background-repeat: no-repeat;
            }
            .myLink {display: none}
        </style> 
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
        <div class="w3-container">
            <div class="w3-panel w3-text-white">
                <h1><b>Tickets</b></h1>
            </div>
        
        
        <div class="w3-content" style="max-width:1100px;">
            <div class="w3-container">
                 <div class="w3-panel w3-padding-16 w3-text-white w3-card w3-third">
                     <h2>Get the best offers first!</h2>
                 <p>Book your Ticket.</p>
                 <form action="./BookTickets" method="post">
                     <table border="0"> 
                         <tr>
                             <td><label>Ticket ID</label></td>
                             <td> : <input type="text" name="tick" placeholder="Ticket ID" value=""></td>
                         </tr>
                         <tr>
                             <td><label>Email</label></td>
                             <td> : <input type="text" name="email" placeholder="valid email address" value=""></td>
                         </tr>
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
                         </tr>
                         <tr>
                             <td><center><input type="reset" class="w3-btn w3-margin-top w3-white w3-hover-teal" value="Reset"></center></td>
                             <td><center><input class="w3-btn w3-margin-top w3-white w3-hover-red" type="submit" value="Book"></center></td>
                         </tr> 
                     </table>
                 </form>
                 </div>
            </div>
        </div>
            <br>
            <br>
        <div class="w3-panel w3-card">
            <jsp:include page="footer.jsp"></jsp:include>
        </div>
        
    </body>
</html>
