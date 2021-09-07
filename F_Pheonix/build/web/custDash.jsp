 
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Model.DbConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dashboard | Pheonix AirLines </title>
        <style>
            td {
                text-align: center;
            }
        </style>
    </head>
    
    <body class="w3-light-blue w3-text-white">
        
                <%
                   String email = request.getParameter("email"); 
                %>
                
                <%
                     DbConnect db = new DbConnect();
                     Connection con = db.getConnection();

                     Statement st = con.createStatement();

                     String sql = "SELECT * FROM Customer WHERE Email LIKE '%"+email+"%' ";

                     ResultSet rs = st.executeQuery(sql); 
                %>
        
        <jsp:include page="header.jsp"></jsp:include>
        
        <div class="w3-sidebar w3-bar-block w3-light-blue w3-border-right w3-border-white w3-text-white" style="width:15%">
            <h3 class="w3-bar-item"><i class="fa fa-bars w3-xlarge w3-padding-16"></i> Settings</h3>
            
            <div> 
                <form action="cusViewFlights.jsp">
                     <input type="hidden" name="email" value="<%= email %>" /> 
                    <button class="w3-bar-item w3-btn w3-padding w3-margin-top w3-margin-bottom" type="submit">
                        <i class="fa fa-plane w3-large"></i> View Flights 
                    </button>
                </form>        
            </div>
            
            <div> 
                <form action="cusUpdate.jsp">
                     <input type="hidden" name="email" value="<%= email %>" /> 
                    <button class="w3-bar-item w3-btn w3-padding w3-margin-top w3-margin-bottom" type="submit">
                        <i class="fa fa-pencil w3-large"></i> Update Account 
                    </button>
                </form>        
            </div>
            
            <a href="index.html" class="w3-bar-item w3-btn w3-padding w3-margin-top w3-margin-bottom">
                <i class="fa fa-close w3-large"></i> Log Out
            </a>

            <div>
                <form action="./CusDelete" method="post">
                     <input type="hidden" name="email" value="<%= email %>" />     
                     <button class="w3-bar-item w3-btn w3-padding w3-margin-top w3-margin-bottom" type="submit">
                        <i class="fa fa-trash w3-large"></i> Delete Account 
                    </button>
                </form> 
            </div>
        </div>
                
                <div style="margin-left:20%">  
                    
                    <h1>
                    <i class="fa fa-user-circle w3-xxxlarge w3-padding w3-center w3-padding-32"></i>
                    DashBoard
                    </h1>
                    
                    <table border="1">
                    <tr>
                        <td class="w3-padding"> First Name </td>
                        <td class="w3-padding"> Middle Name </td>
                        <td class="w3-padding"> Last Name </td>
                        <td class="w3-padding"> Title </td>
                        <td class="w3-padding"> Gender </td>
                        <td class="w3-padding"> Email </td>
                        <td class="w3-padding"> Password </td>
                        <td class="w3-padding"> Contact Number </td>
                    </tr>
                    <tr>
                        <%
                            while(rs.next())
                            {
                        %>  
                                <td class="w3-padding"><%= rs.getString("FName") %></td>
                                <td class="w3-padding"><%= rs.getString("Mname") %></td>
                                <td class="w3-padding"><%= rs.getString("Lname") %></td>
                                <td class="w3-padding"><%= rs.getString("Title") %></td>
                                <td class="w3-padding"><%= rs.getString("Gender") %></td>
                                <td class="w3-padding"><%= rs.getString("Email") %></td>
                                <td class="w3-padding"><%= rs.getString("Password") %></td>
                                <td class="w3-padding"><%= rs.getString("ContactNo") %></td>
                        <%
                            }

                            con.close();
                        %>
                    </tr>
                </table>  
             </div>
                    <a href="index.html">Log out</a>          
        <div class="w3-text-black w3-display-bottommiddle">
            <jsp:include page="footer.jsp"></jsp:include>  
        </div>
                             
    </body>
</html>
