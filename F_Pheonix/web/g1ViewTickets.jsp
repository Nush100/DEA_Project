

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Model.DbConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Tickets</h1>
        <%
            DbConnect db = new DbConnect();
            Connection con = db.getConnection();
            Statement st = con.createStatement();
            
            String sql = "SELECT * FROM Tickets";
            
            ResultSet rs = st.executeQuery(sql);
        %>
        
        <table border="1">
            <tr>
                <td> Ticket ID </td>
                <td> Flight ID </td>
                <td> Flight Start </td>
                <td> Destination  </td>
                <td> Contact Number </td>
                <td> Email  </td>
                <td> Last Name </td> 
                <td> Update </td>
                <td> Delete </td> 
            </tr>
            
            <% 
                while(rs.next())
                { %>
                <tr>
                    <td><%= rs.getString("TicketID") %></td>
                    <td><%= rs.getString("FlightID") %></td>
                    <td><%= rs.getString("FlightStart") %></td>
                    <td><%= rs.getString("FlightDestination") %></td>
                    <td><%= rs.getString("ContactNo") %></td>
                    <td><%= rs.getString("Email") %></td>
                    <td><%= rs.getString("LastName") %></td>
                    <td>
                        <form action="g1TicketUpdate.jsp">
                            <input type="hidden" name="tick" value="<%= rs.getString("TicketID") %>" /> 
                            <input type="submit" value="Update" />        
                        </form> 
                    </td>
                    <td>
                        <form action="./G1DeleteTicket" method="post">
                            <input type="hidden" name="tick" value="<%= rs.getString("TicketID") %>" />
                            <input type="submit" value="Delete Account" />        
                        </form>   
                    </td> 
                </tr>        
            <% }
                con.close();
            %>
        </table>
    </body>
</html>
