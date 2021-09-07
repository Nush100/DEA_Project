 

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
        
        <div class="w3-content" style="max-width:1100px;" >
            
        <h1> Customers </h1>
        
         <%
            DbConnect db = new DbConnect();
            Connection con = db.getConnection();
            Statement st = con.createStatement();
            
            String sql = "SELECT * FROM Customer";
            
            ResultSet rs = st.executeQuery(sql);
        %>
        <table border="1">
            <tr>
                <td> First Name </td>
                <td> Middle Name </td>
                <td> Last Name </td>
                <td> Title </td>
                <td> Gender </td>
                <td> Email </td>
                <td> Password </td>
                <td> Contact Number </td> 
            </tr>
            
            <% 
                while(rs.next())
                { %>
                <tr>
                    <td><%= rs.getString("Fname") %></td>
                    <td><%= rs.getString("Mname") %></td>
                    <td><%= rs.getString("Lname") %></td>
                    <td><%= rs.getString("Title") %></td>
                    <td><%= rs.getString("Gender") %></td>
                    <td><%= rs.getString("Email") %></td>
                    <td><%= rs.getString("Password") %></td>
                    <td><%= rs.getString("ContactNo") %></td> 
                </tr>        
            <% }
                con.close();
            %>
        </table>
        
        <p class="w3-margin">
                   <a class="w3-btn w3-round-large w3-border w3-border-grey w3-right" href="g2StaffDash.jsp">Back</a> 
                </p>
                <br>
                <br>
        </div> 
<!--        <a href="g2StaffDash.jsp">dashboard</a>-->
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
