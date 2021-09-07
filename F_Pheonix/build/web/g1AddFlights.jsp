 

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Veiw Flights | Pheonix AirLines </title>
    </head>
    <body class=" w3-pale-green w3-text-teal">
        <jsp:include page="header.jsp"></jsp:include>
        <div class="w3-content">
        <h1>Add New Flights</h1>
        <form action="./G1AddFlights" method="post">
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
                    <td><center><input class="w3-btn w3-teal" type="submit" value="Add New Flight"></center></td>
                </tr> 
            </table>
	</form>
        
        <br>
        <p class="w3-margin">
               <a class="w3-btn w3-round-large w3-border w3-border-grey w3-right" href="g1StaffDash.jsp">Back</a> 
            </p>
<!--        <a class="w3-btn w3-teal w3-margin" href="g1StaffDash.jsp">Back</a>-->
        <br>
<!--        <a class="w3-btn w3-teal w3-margin" href="g1AddFlights.jsp">Add Flights</a>-->
        <br>
        
        </div>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
