
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
    
    <head> 
        <title>Admin</title>
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
        
       
        
        <div class="w3-container">
            
            <div class="w3-panel">
                <h1>Admin Dashboard</h1>
            </div>
            
            <div class="w3-panel">
                <div class="w3-card-4 w3-third w3-center">
                    <div class="w3-margin w3-padding-large">
                        <img src="images/cus.png" alt="customer">
                        <form action="adViewCus.jsp" method="post">
                            <p class="w3-center">
                               <input class="w3-btn w3-padding-large w3-black" type="submit" value="Veiw Customer" />
                            </p>        
                        </form>
                    </div>
                </div>
                <div class="w3-card-4 w3-third w3-center">
                    <div class="w3-margin w3-padding-large">
                        <img src="images/g1S.png" alt="customer">
                            <form action="adViewG1Staff.jsp" method="post">
                                <p class="w3-center">
                                    <input class="w3-btn w3-padding-large w3-black" type="submit" value="Veiw Grade 1 Staff" />
                                </p>        
                            </form>
                    </div>
                </div>
                <div class="w3-card-4 w3-third w3-center">
                    <div class="w3-margin w3-padding-large">
                        <img src="images/g2S.png" alt="customer">
                            <form action="adViewG2Staff.jsp" method="post">
                                <p class="w3-center">
                                    <input class="w3-btn w3-padding-large w3-black" type="submit" value="Veiw Grade 2 Staff" />
                                </p>        
                            </form>
                    </div>
                </div>
            </div>
            
            <form action="./AdLogOut" method="post">
                <input type="submit" class="w3-btn w3-padding-large w3-black w3-margin" value="LogOut">
            </form>
            
        </div>
        
        <br>
        <br>
        <br>
        
        <jsp:include page="footer.jsp"></jsp:include>
        
    </body>
    
</html>
