
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

                     String sql = "SELECT FName FROM Customer WHERE Email LIKE '%"+email+"%' ";

                     ResultSet rs = st.executeQuery(sql); 

                    String fname="";
                    
                            while(rs.next())
                            {
                        
                                fname = rs.getString("FName");
                      
                            }

                            con.close();
                        
              
        %>
        
    
        <div  style="margin-left:20%"> 
            
            <h1> 
               <i class="fa fa-pencil w3-xxlarge w3-padding"></i><%= fname %>
            </h1>

            
            <div class="w3-panel">
                 <div class="w3-panel w3-text-white w3-card">
                 <form action="./CusUpdate" method="post">
                    <table border="0"> 
                        <tr>
                            <td><label> Choose title </label> </td>
                            <td>
                                : <select name="titl">
                                   <option value="">Choose Title</option>
                                   <option value="REV">Rev</option>
                                   <option value="PROF">PROF</option>
                                   <option value="DR">Dr</option>
                                   <option value="HON">Hon</option>
                                   <option value="MR">Mr</option>
                                   <option value="MRS">Mrs</option>
                                   <option value="MS">Ms</option>
                                   <option value="EXC">Exc</option>
                                  </select>
                            </td>
                        </tr>
                        <tr>
                            <td><label> Middle Name </label> </td>
                            <td> : <input type="text" name="mname" placeholder="optional" value=""></td>
                        </tr>
                        <tr>
                            <td><label> Last Name </label> </td>
                            <td> : <input type="text" name="lname" placeholder="as per passport" value=""></td>
                        </tr>
                        <tr>
                            <td><label>Contact </label></td>
                            <td> : <input type="text" name="contact" placeholder="valied telephone number" value=""></td>
                            <td><input type="hidden" name="email" value="<%= email %>"/></td>
                        </tr>
                                 <td><center><input type="reset" class="w3-btn w3-margin-top w3-white w3-hover-teal" value="Reset"></center></td>
                                 <td><center><input class="w3-btn w3-margin-top w3-white w3-hover-red" type="submit" value="Update"></center></td>
                        </tr> 
                     </table>
                 </form>
                 </div>
            </div>
  
        </div>
                    <br>
                    <br>
                    
                    <div class="w3-panel">
                        <br>
                        <br>
                    </div>
                    
       <div class="w3-text-black w3-display-bottommiddle">
            <jsp:include page="footer.jsp"></jsp:include>  
        </div>
        
    </body>
</html>
