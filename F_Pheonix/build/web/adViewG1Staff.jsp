
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Model.DbConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <head>
        
        <title>Admin Portal | Pheonix AirLines</title>
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
        
        <div class="w3-container">
            
            <div class="w3-panel">
                <h1>Grade 1 Staff Members</h1>
            </div> 
            
            <%
                DbConnect db = new DbConnect();
                Connection con = db.getConnection();
                Statement st = con.createStatement();

                String sql = "SELECT * FROM Grade1Staff";

                ResultSet rs = st.executeQuery(sql);
            %>
            
            <div class="w3-panel">
                <table border="1">
                   <tr>
                       <td class="w3-margin-left w3-margin-right"> First Name </td>
                       <td class="w3-margin-left w3-margin-right"> Last Name </td>
                       <td class="w3-margin-left w3-margin-right"> Title </td>
                       <td class="w3-margin-left w3-margin-right"> Gender </td>
                       <td class="w3-margin-left w3-margin-right"> Email </td>
                       <td class="w3-margin-left w3-margin-right"> Work Experience </td>
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
                           <td class="w3-margin-left w3-margin-right"><%= rs.getString("Lname") %></td>
                           <td class="w3-margin-left w3-margin-right"><%= rs.getString("Title") %></td>
                           <td class="w3-margin-left w3-margin-right"><%= rs.getString("Gender") %></td>
                           <td class="w3-margin-left w3-margin-right"><%= rs.getString("Email") %></td>
                           <td class="w3-margin-left w3-margin-right"><%= rs.getString("WorkExp") %></td>
                           <td class="w3-margin-left w3-margin-right"><%= rs.getString("Password") %></td>
                           <td class="w3-margin-left w3-margin-right"><%= rs.getString("ContactNo") %></td>
                           <td class="w3-margin-left w3-margin-right">
                               <form action="adUpdateG1Stf.jsp" method="post">
                                        <input type="hidden" name="email" value="<%= rs.getString("Email") %>" />
                                        <input type="hidden" name="fname" value="<%= rs.getString("Fname") %>" />
                                        <input type="submit" class="w3-btn w3-hover-teal w3-round-large w3-black w3-padding w3-margin-left w3-margin-right" value="Update" />        
                               </form>
                           </td>
                           <td class="w3-margin-left w3-margin-right">
                               <form action="AdDeleteG1Stf" method="post">
                                        <input type="hidden" name="email" value="<%= rs.getString("Email") %>" />
                                        <input type="submit" class="w3-btn w3-black w3-hover-red w3-round-large w3-padding w3-margin-left w3-margin-right" value="Delete" />        
                               </form>         
                           </td>
                       </tr>        
                   <% }
                       con.close();
                   %>
               </table> 
            </div>
               
            <div class="w3-panel">
                <h1>Pending Grade 1 Staff Members</h1>
            </div>
             <%
                DbConnect db2 = new DbConnect();
                Connection con2 = db2.getConnection();
                Statement st2 = con2.createStatement();

                String sql2 = "SELECT * FROM Grade1StaffPending";

                ResultSet rs2 = st2.executeQuery(sql2);
            %>
            <div class="w3-panel">
                <table border="1">
                   <tr>
                       <td class="w3-margin-left w3-margin-right"> First Name </td>
                       <td class="w3-margin-left w3-margin-right"> Last Name </td>
                       <td class="w3-margin-left w3-margin-right"> Title </td>
                       <td class="w3-margin-left w3-margin-right"> Gender </td>
                       <td class="w3-margin-left w3-margin-right"> Email </td>
                       <td class="w3-margin-left w3-margin-right"> Work Experience </td>
                       <td class="w3-margin-left w3-margin-right"> Password </td>
                       <td class="w3-margin-left w3-margin-right"> Contact Number </td>
                       <td class="w3-margin-left w3-margin-right"> Approve  </td>
                       <td class="w3-margin-left w3-margin-right"> Delete </td>
                   </tr>

                   <% 
                       while(rs2.next())
                       { %>
                       <tr>
                           <td class="w3-margin-left w3-margin-right"><%= rs2.getString("Fname") %></td> 
                           <td class="w3-margin-left w3-margin-right"><%= rs2.getString("Lname") %></td>
                           <td class="w3-margin-left w3-margin-right"><%= rs2.getString("Title") %></td>
                           <td class="w3-margin-left w3-margin-right"><%= rs2.getString("Gender") %></td>
                           <td class="w3-margin-left w3-margin-right"><%= rs2.getString("Email") %></td>
                           <td class="w3-margin-left w3-margin-right"><%= rs2.getString("WorkExp") %></td>
                           <td class="w3-margin-left w3-margin-right"><%= rs2.getString("Password") %></td>
                           <td class="w3-margin-left w3-margin-right"><%= rs2.getString("ContactNo") %></td>
                           <td class="w3-margin-left w3-margin-right">
                               <form action="PendingG1" method="post">
                                        <input type="hidden" name="email" value="<%= rs2.getString("Email") %>" />
                                        <input type="hidden" name="fname" value="<%= rs2.getString("Fname") %>" />
                                        <input type="hidden" name="lname" value="<%= rs2.getString("Lname") %>" />
                                        <input type="hidden" name="titl" value="<%= rs2.getString("Title") %>" />
                                        <input type="hidden" name="gender" value="<%= rs2.getString("Gender") %>" />
                                        <input type="hidden" name="work" value="<%= rs2.getString("WorkExp") %>" />
                                        <input type="hidden" name="pass" value="<%= rs2.getString("Password") %>" />
                                        <input type="hidden" name="cont" value="<%= rs2.getString("ContactNo") %>" />
                                        <input type="submit" class="w3-btn w3-hover-teal w3-round-large w3-black w3-padding w3-margin-left w3-margin-right" value="Approve" />        
                               </form>
                           </td>
                           <td class="w3-margin-left w3-margin-right">
                               <form action="AdDeleteG1Stf" method="post">
                                        <input type="hidden" name="email" value="<%= rs2.getString("Email") %>" />
                                        <input type="submit" class="w3-btn w3-black w3-hover-red w3-round-large w3-padding w3-margin-left w3-margin-right" value="Delete" />        
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
                    <a class="w3-button w3-black w3-hover-blue w3-round-large " href="adAddg1St.jsp">Add Grade1 Staff</a>
                </p>
            </div>
               
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
