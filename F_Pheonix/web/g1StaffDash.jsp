

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Model.DbConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Grade 1 Staff DashBoard</title>
    </head>
    <body class="w3-pale-green">
        <jsp:include page="header.jsp"></jsp:include>
        <%
            String email = request.getParameter("email");
        %>
      <div class="w3-content w3-text-teal">  
        <h1>Grade 1 Staff DashBoard</h1>
        
         <div class="w3-panel">
                <div class="w3-half w3-padding-16">
                    <div class="w3-padding w3-center">
<!--                        <img class="w3-round-large" src="images/cus.png" alt="customer">-->
                            <i class="fa fa-user w3-jumbo"></i>
                        <form action="g1StfViewCus.jsp" method="post">
                            <p class="w3-center">
                               <input class="w3-btn w3-padding-large w3-teal" type="submit" value="View Customer" />
                            </p>        
                        </form>
                    </div>
                </div>
                <div class="w3-half w3-padding-16">
                    <div class="w3-padding w3-center">
<!--                        <img class="w3-round-large" src="images/s2gr.png" alt="customer">-->
                            <i class="fa fa-plane w3-jumbo"></i>   
                            <form action="g1AddFlights.jsp" method="post">
                                <p class="w3-center">
                                    <input class="w3-btn w3-padding-large w3-teal" type="submit" value="Add new Flights" />
                                </p>        
                            </form>
                    </div>
                </div>
                
            </div>
        </div>
        
        <br>
        <br>
        
        
         <%
                DbConnect db = new DbConnect();
                Connection con = db.getConnection();
                Statement st = con.createStatement();

                String sql = "SELECT * FROM Grade1Staff WHERE Email LIKE '%"+email+"%' ";

                ResultSet rs = st.executeQuery(sql);
            %>
            
<!--             <table border="1">
                    <tr>
                        <td class="w3-padding"> First Name </td>
                        <td class="w3-padding"> Last Name </td>
                        <td class="w3-padding"> Title </td>
                        <td class="w3-padding"> Gender </td>
                        <td class="w3-padding"> Email </td>
                        <td class="w3-padding">Work Experience</td>
                        <td class="w3-padding"> Password </td>
                        <td class="w3-padding"> Contact Number </td>
                    </tr>
                    <tr>
                        <%
                            while(rs.next())
                            {
                        %>  
                                <td class="w3-padding"><%= rs.getString("FName") %></td>
                                <td class="w3-padding"><%= rs.getString("Lname") %></td>
                                <td class="w3-padding"><%= rs.getString("Title") %></td>
                                <td class="w3-padding"><%= rs.getString("Gender") %></td>
                                <td class="w3-padding"><%= rs.getString("Email") %></td>
                                <td class="w3-padding"><%= rs.getString("WorkExp") %></td>
                                <td class="w3-padding"><%= rs.getString("Password") %></td>
                                <td class="w3-padding"><%= rs.getString("ContactNo") %></td>
                        <%
                            }

                            con.close();
                        %>
                    </tr>
                </table>  
        <br>-->
        <br>
        <p class="w3-margin">
               <a class="w3-btn w3-round-large w3-border w3-border-grey w3-right" href="g1StaffLogin.jsp">Back</a> 
            </p>
<!--        <a class="w3-btn w3-teal w3-margin" href="g1StaffDash.jsp">Back</a>-->
        <br>
<!--        <a class="w3-btn w3-teal w3-margin" href="g1AddFlights.jsp">Add Flights</a>-->
        <br>
        
        
      </div> 
                    <div class="w3-text-teal">
                        <jsp:include page="footer.jsp"></jsp:include></div>
    </body>
</html>
