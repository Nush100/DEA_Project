 

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Update Flight - <% out.print(request.getParameter("fid")); %> </h1>
        
        <form action="./G1UpdateFlight" method="post">
            <table border="0"> 
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
                    <td> : <input type="hidden" name="fid" value="<%= request.getParameter("fid") %>"></td>
                </tr>
                <tr>
                    <td><center><input type="reset" value="Reset"></center></td>
                    <td><center><input type="submit" value="Update"></center></td>
                </tr> 
            </table>
	</form>
    </body>
</html>
