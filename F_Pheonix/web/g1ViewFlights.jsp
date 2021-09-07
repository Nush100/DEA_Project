
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Model.DbConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Flights</title>
    </head>
    <body>
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
                <td> Update </td>
                <td> Delete </td>
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
                    <td>
                        <form action="g1UpdateFlights.jsp" method="post">
                                 <input type="hidden" name="fid" value="<%= rs.getString("FlightID") %>" /> 
                                 <input type="submit" value="Update" />        
                        </form>
                    </td>
                    <td>
                        <form action="G1DeleteFlight" method="post">
                                 <input type="hidden" name="fid" value="<%= rs.getString("FlightID") %>" />
                                 <input type="submit" value="Delete" />        
                        </form>         
                    </td>
                </tr>        
            <% }
                con.close();
            %>
        </table>
        <a href="index.html">home</a>
    </body>
</html>
