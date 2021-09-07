 
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Model.DbConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
    
    <head> 
        <title>Admin Portal | Pheonix Airlines</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            td {
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
            
            <div class="w3-panel">
                <h1>Grade 2 Staff Members</h1>
            </div>
            

            <%
                DbConnect db = new DbConnect();
                Connection con = db.getConnection();
                Statement st = con.createStatement();

                String sql = "SELECT * FROM Grade2Staff";

                ResultSet rs = st.executeQuery(sql);
            %>
            
            <div class="w3-panel">
                <table border="1">
                    <tr>
                        <td> First Name </td>
                        <td> Last Name </td>
                        <td> Title </td>
                        <td> Gender </td>
                        <td> Email </td>
                        <td> Work Experience </td>
                        <td> Password </td>
                        <td> Contact Number </td>
                        <td> Update  </td>
                        <td> Delete </td>
                    </tr>

                    <% 
                        while(rs.next())
                        { %>
                        <tr>
                            <td><%= rs.getString("Fname") %></td> 
                            <td><%= rs.getString("Lname") %></td>
                            <td><%= rs.getString("Title") %></td>
                            <td><%= rs.getString("Gender") %></td>
                            <td><%= rs.getString("Email") %></td>
                            <td><%= rs.getString("WorkExp") %></td>
                            <td><%= rs.getString("Password") %></td>
                            <td><%= rs.getString("ContactNo") %></td>
                            <td>
                                <form action="adUpdateG2Stf.jsp" method="post">
                                         <input type="hidden" name="email" value="<%= rs.getString("Email") %>" />
                                         <input type="hidden" name="fname" value="<%= rs.getString("Fname") %>" />
                                         <input class="w3-btn w3-black w3-padding w3-margin-left w3-hover-teal w3-margin-right" type="submit" value="Update" />        
                                </form>
                            </td>
                            <td>
                                <form action="AdDeleteG2Stf" method="post">
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
                
            <div class="w3-panel">
                <p>
                    <a class="w3-button w3-black w3-hover-blue w3-round-large " href="adAddg2st.jsp">Add Grade2 Staff</a>
                </p>
            </div>
            
            <br>
            <br>
            
            
            
            <p class="w3-margin">
                   <a class="w3-btn w3-round-large w3-border w3-border-grey w3-right" href="admindash.jsp">Back</a>
                   
            </p>
            
        </div>
        
        <br>
        <br>
        
        <jsp:include page="footer.jsp"></jsp:include>
        
    </body>
</html>
