 

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
        
        <jsp:include page="header.jsp"></jsp:include>
        
        <div class="w3-sidebar w3-bar-block w3-light-blue w3-border-right w3-border-white w3-text-white" style="width:15%">
            <h3 class="w3-bar-item"><i class="fa fa-bars w3-xlarge w3-padding-16"></i> Settings</h3>
            <a href="cusViewFlights.jsp" class="w3-bar-item w3-btn w3-padding w3-margin-top w3-margin-bottom">
                <i class="fa fa-plane w3-large"></i> View Flights
            </a>
            
            <div> 
                <form action="custDash.jsp">
                     <input type="hidden" name="email" value="<%= email %>" /> 
                    <button class="w3-bar-item w3-btn w3-padding w3-margin-top w3-margin-bottom" type="submit">
                        <i class="fa fa-user-circle w3-large"></i> Dashboard 
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

            <div>
                <form action="./CusDelete" method="post">
                     <input type="hidden" name="email" value="<%= email %>" />     
                     <button class="w3-bar-item w3-btn w3-padding w3-margin-top w3-margin-bottom" type="submit">
                        <i class="fa fa-trash w3-large"></i> Delete Account 
                    </button>
                </form> 
            </div>
                     
        </div>
        
        <%
            DbConnect db = new DbConnect();
            Connection con = db.getConnection();
            Statement st = con.createStatement();
            
            String sql = "SELECT * FROM Flights";
            
            ResultSet rs = st.executeQuery(sql);
        %>
        
        <div style="margin-left:20%">  
          
           <div class="w3-panel">
            <h1>
               <i class="fa fa-plane w3-xxxlarge w3-padding w3-padding-32"></i>
                    Flights
            </h1>
            
            <table border="1">
                <tr>
                    <td class="w3-padding"> Flight ID </td>
                    <td class="w3-padding"> Start </td>
                    <td class="w3-padding"> Destination </td>
                    <td class="w3-padding"> Start Date </td>
                    <td class="w3-padding"> Start Time </td>
                </tr>

                <% 
                    while(rs.next())
                    { %>
                    <tr>
                        <td class="w3-padding"><%= rs.getString("FlightID") %></td>
                        <td class="w3-padding"><%= rs.getString("FlightStart") %></td>
                        <td class="w3-padding"><%= rs.getString("FlightDestination") %></td>
                        <td class="w3-padding"><%= rs.getString("StartDate") %></td>
                        <td class="w3-padding"><%= rs.getString("StartTime") %></td>
                    </tr>        
                <% }
                    con.close();
                %>
            </table> 
           </div>
            
            <div class="panel">
<!--                <a href="filter">Filter Flights</a>-->
            </div>
        </div>
         
         <div class="w3-text-black w3-display-bottommiddle">
            <jsp:include page="footer.jsp"></jsp:include>  
            </div>
            
    </body>
</html>
