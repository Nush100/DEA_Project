 

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Model.DbConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Staff | Pheonix AirLines </title>
        <style>
            td {
                text-align: center;
            }
        </style>
    </head>
    <body class="w3-pale-green w3-text-teal">
        
        <jsp:include page="header.jsp"></jsp:include>
        <div class="w3-content">
          
        <h1>Flights</h1>
        <%
            DbConnect db = new DbConnect();
            Connection con = db.getConnection();
            Statement st = con.createStatement();
            
            String sql = "SELECT * FROM Flights";
            
            ResultSet rs = st.executeQuery(sql);
        %>
        
        <table border="1">
            <tr>
                <td> Flight ID </td>
                <td> Start </td>
                <td> Destination </td>
                <td> Start Date </td>
                <td> Start Time </td>
            </tr>
            
            <% 
                while(rs.next())
                { %>
                <tr>
                    <td><%= rs.getString("FlightID") %></td>
                    <td><%= rs.getString("FlightStart") %></td>
                    <td><%= rs.getString("FlightDestination") %></td>
                    <td><%= rs.getString("StartDate") %></td>
                    <td><%= rs.getString("StartTime") %></td>
                </tr>        
            <% }
                con.close();
            %>
        </table>
<!--        
        <a href="g2StaffDash.jsp">dashboard</a>
        <a href="g2AddFlight.jsp">Add new Flight</a>
        -->
        <p class="w3-margin">
                   <a class="w3-btn w3-round-large w3-border w3-border-grey w3-right" href="g2StaffDash.jsp">Back</a> 
                </p>
                <br>
                <br>
        
        <jsp:include page="footer.jsp"></jsp:include>
        
        </div>
    </body>
</html>
