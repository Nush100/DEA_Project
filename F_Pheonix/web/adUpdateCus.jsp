
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html> 
    
    <head> 
        <title>Admin Portal | Pheonix AirLinesr</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> 
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
                <h1> Update Customer </h1>
            </div>
            
            <%
                       String email = request.getParameter("email");
                       String fname = request.getParameter("fname");
                     
            %>
            
            <div class="w3-container">
                <div class="w3-padding-16 w3-black w3-card w3-round-large">
                    <div class="w3-panel">
                        <h2>
                            <i class="w3-padding fa fa-user-circle w3-xxlarge"></i>
                            <% out.print(fname); %> 
                        </h2> 
                    
                        <form action="./AdUpdateCus" method="post">
                            <p>  
                                <select name="titl" class="w3-input w3-padding-16">
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
                            </p>
                            <p> 
                                <input type="text" class="w3-input w3-padding-16" name="mname" placeholder="Middle Name" value="">
                            </p>
                            <p> 
                                <input type="text" class="w3-input w3-padding-16" name="lname" placeholder="Last Name" value="">
                            </p>  
                            <p> 
                                <input type="text" class="w3-input w3-padding-16" name="contact" placeholder="Contact Number" value="">
                                <input type="hidden" name="email" value="<%= email %>"/> 
                                <input type="hidden" name="fname" value="<%= fname %>"/> 
                            </p>
                    </div>
                </div>
            </div>
                            <div class="w3-container"> 
                                 <input type="reset" class="w3-button w3-black w3-hover-teal w3-margin-top w3-margin-right w3-padding-large w3-round-large" value="Reset">
                                 <input class="w3-button w3-black w3-margin-top w3-hover-red w3-margin-left w3-padding-large w3-round-large" type="submit" value="Update">
                            </div>
            
                        </form>
                            
                        <br>
                        <br>
                        
            <p class="w3-margin">
               <a class="w3-btn w3-round-large w3-border w3-border-grey w3-right" href="adViewCus.jsp">Back</a>
               <a class="w3-btn w3-round-large w3-border w3-border-grey w3-right w3-margin-right" href="admindash.jsp">Dashboard</a>
            </p>
            
        </div> 
                            
        <br>
        <br>     
        
        <jsp:include page="footer.jsp"></jsp:include>
        
    </body>
    
</html>
