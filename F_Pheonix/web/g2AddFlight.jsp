

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Staff | Pheonix </title>
    </head>
    <body class="w3-pale-green w3-text-teal">
        
          
        <jsp:include page="header.jsp"></jsp:include>
        <div class="w3-content">
          
        <h1>Add new Flights</h1>
        
        <form action="./G2AddFlight" method="post">
            <table border="0">
                <tr>
                    <td><label>Flight id </label></td>
                    <td>: <input type="text" value="" name="fid"></td>
                </tr>
                <tr>
                    <td><label> Flight Start </label> </td>
                    <td> : <input type="text" name="fstart" value="" ></td>
                </tr>
                <tr>
                    <td><label> Flight Destination </label> </td>
                    <td> : <input type="text" name="fdes" value=""></td>
                </tr>
                <tr>
                    <td><label> Scheduled Date </label> </td>
                    <td> : <input type="date" name="sdate" value=""></td>
                </tr>
                <tr>
                    <td><label>Scheduled time </label></td>
                    <td> : <input type="time" name="stime" value=""></td>
                </tr>
                <tr>
                    <td><center><input class="w3-btn w3-green" type="reset" value="Reset"></center></td>
                    <td><center><input class="w3-btn w3-teal" type="submit" value="Add Flight"></center></td>
                </tr> 
            </table>
	</form>
        
<!--        <a href="g2StaffDash.jsp">dashboard</a>-->
         <p class="w3-margin">
                   <a class="w3-btn w3-round-large w3-border w3-border-grey w3-right" href="g2StaffDash.jsp">Back</a> 
                </p>
                <br>
                <br>
        
        <jsp:include page="footer.jsp"></jsp:include>
        

        </div>
    </body>
</html>
