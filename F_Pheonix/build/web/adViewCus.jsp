
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Model.DbConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
    
    <head> 
        <title>Customer conrtol</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> 
        
        <style>
            td{
                text-align: center;
            }
        </style>
        
    </head>
    
    <body class="w3-light-grey">
        <%
            if(session.getAttribute("adminLogin")==null){
                response.sendRedirect("adLogin.jsp");
            }
        %>
        
        <jsp:include page="header.jsp"></jsp:include>
        
        <div class="w3-content" style="max-width:1100px;">
            
            <div class="w3-container">
                
                <div class="w3-panel">
                    <h1>Customers</h1>
                </div>
            
            <%
                DbConnect db = new DbConnect();
                
                Connection con = db.getConnection();
                
                Statement st = con.createStatement();

                String sql = "SELECT * FROM Customer";

                ResultSet rs = st.executeQuery(sql);
            %>
            
                <div class="w3-panel">
                    <table border="1">
                        <tr>
                            <td class="w3-margin-left w3-margin-right"> First Name </td>
                            <td class="w3-margin-left w3-margin-right"> Middle Name </td>
                            <td class="w3-margin-left w3-margin-right"> Last Name </td>
                            <td class="w3-margin-left w3-margin-right"> Title </td>
                            <td class="w3-margin-left w3-margin-right"> Gender </td>
                            <td class="w3-margin-left w3-margin-right"> Email </td>
                            <td class="w3-margin-left w3-margin-right"> Password </td>
                            <td class="w3-margin-left w3-margin-right"> Contact Number </td>
                            <td class="w3-margin-left w3-margin-right"> Update  </td>
                            <td class="w3-margin-left w3-margin-right"> Delete </td>
                        </tr>

                        <% 
                            while(rs.next())
                            { %>
                            <tr>
                                <td class="w3-margin-left w3-margin-right"><%= rs.getString("Fname") %></td>
                                <td class="w3-margin-left w3-margin-right"><%= rs.getString("Mname") %></td>
                                <td class="w3-margin-left w3-margin-right"><%= rs.getString("Lname") %></td>
                                <td class="w3-margin-left w3-margin-right"><%= rs.getString("Title") %></td>
                                <td class="w3-margin-left w3-margin-right"><%= rs.getString("Gender") %></td>
                                <td class="w3-margin-left w3-margin-right"><%= rs.getString("Email") %></td>
                                <td class="w3-margin-left w3-margin-right"><%= rs.getString("Password") %></td>
                                <td class="w3-margin-left w3-margin-right"><%= rs.getString("ContactNo") %></td>
                                <td class="w3-margin-left w3-margin-right">
                                    <form action="adUpdateCus.jsp" method="post">
                                             <input type="hidden" name="email" value="<%= rs.getString("Email") %>" />
                                             <input type="hidden" name="fname" value="<%= rs.getString("fname") %>" />
                                             <input class="w3-btn w3-black w3-padding w3-margin-left w3-hover-teal w3-margin-right" type="submit" value="Update" />        
                                    </form>
                                </td>
                                <td class="w3-margin-left w3-margin-right">
                                    <form action="AdDeleteCus" method="post">
                                             <input type="hidden" name="email" value="<%= rs.getString("Email") %>" />
                                             <input class="w3-btn w3-black w3-padding w3-margin-left w3-hover-red w3-margin-right" type="submit" value="Delete" />        
                                    </form>         
                                </td>
                            </tr>        
                        <% }
                            con.close();
                        %>
                    </table>
                </div>
               
                <br>
                <br>
            
                <p class="w3-margin">
                   <a class="w3-btn w3-round-large w3-border w3-border-grey w3-right" href="admindash.jsp">Back</a> 
                </p>
            
            </div>
        </div>
                    
        <jsp:include page="footer.jsp"></jsp:include>
        
    </body>
    
</html>
