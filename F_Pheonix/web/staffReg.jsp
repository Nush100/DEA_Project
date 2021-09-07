
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Staff Registration | Pheonix Airlines </title>
        <style>
             body {
                background-image: url("images/d.jpg"); 
                background-repeat: no-repeat; 
        
            }
        </style>
    </head>
    <body >
        <jsp:include page="header.jsp"></jsp:include>
        
        <div class="w3-content" style="max-width:1100px;">
            <h1 class="w3-text-teal">Staff Registration</h1>
        
        <div class="w3-panel">
                <div class="w3-half w3-padding-16">
                    <div class="w3-padding w3-center">
                        <img class="w3-round-large" src="images/g1S.png" alt="customer">
                        <form action="g1StaffReg.jsp" method="post">
                            <p class="w3-center">
                               <input class="w3-btn w3-padding-large w3-teal" type="submit" value="Register as Grade 1 Staff Member" />
                            </p>        
                        </form>
                    </div>
                </div>
                <div class="w3-half w3-padding-16">
                    <div class="w3-padding w3-center">
                        <img class="w3-round-large" src="images/g2S.png" alt="customer">
                            <form action="g2StaffReg.jsp" method="post">
                                <p class="w3-center">
                                    <input class="w3-btn w3-padding-large w3-teal" type="submit" value="Register as Grade 2 Staff Member" />
                                </p>        
                            </form>
                    </div>
                </div>
                
            </div>
        </div>
        
        <br>
        <br>
        
        <div class="w3-text-teal">
                    <jsp:include page="footer.jsp"></jsp:include>

        </div>
        
        
    </body>
</html>
