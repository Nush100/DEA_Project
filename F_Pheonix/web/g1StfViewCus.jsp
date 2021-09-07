 

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Model.DbConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Veiw Customer | Pheonix AirLines </title>
        <style>
            td{
                text-align: center;
            }
            
        </style>
    </head>
    <body class="w3-pale-green w3-text-teal">
        <jsp:include page="header.jsp"></jsp:include>
      <div class="w3-content">  
         <% 
            String email = request.getParameter("email");
         %>
        <h1> Customers </h1>
        
         <%
            DbConnect db = new DbConnect();
            Connection conn = db.getConnection();
            Statement st = conn.createStatement();
            
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
                <td> Update  </td>
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
                    <td>
                        <form action="g1StfUpdateCus.jsp" method="post">
                                 <input type="hidden" name="email" value="<%= rs.getString("Email") %>" />
                                 <input type="hidden" name="fname" value="<%= rs.getString("fname") %>" />
                                 <input class="w3-btn w3-teal" type="submit" value="Update" />        
                        </form>
                    </td>
                </tr>        
            <% }
                conn.close();
            %>
        </table>
        
        <p class="w3-margin">
               <a class="w3-btn w3-round-large w3-border w3-border-grey w3-right" href="g1StaffDash.jsp">Back</a> 
            </p>
<!--        <a href="g1StaffDash.jsp">dashboard</a>
        <a href="index.html">home</a>-->
<!--      <div> 
                <form action="g1StaffDash.jsp">
                     <input type="hidden" name="email" value="<%= email %>" /> 
                    <button class="w3-bar-item w3-btn w3-padding w3-margin-top w3-margin-bottom" type="submit">
                       Dashboard 
                    </button>
                </form>        
            </div>-->
<br>
<br>
      </div>
            <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
