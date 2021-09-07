
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Staff | Pheonix AirLines </title>
    </head>
    <body class="w3-pale-green">
<!--        <a href="g1StaffLogin.jsp">
          Grade 1 Staff Login
        </a>
        <br>
        <a href="g2StaffLogin.jsp">Grade 2 Staff Login</a>
        -->
        
        <jsp:include page="header.jsp"></jsp:include>
        
        <div class="w3-content" style="max-width:1100px;">
            <h1 class="w3-text-teal">Staff Login</h1>
        
        <div class="w3-panel">
                <div class="w3-half w3-padding-16">
                    <div class="w3-padding w3-center">
                        <img class="w3-round-large" src="images/g1S.png" alt="customer">
                        <form action="g1StaffLogin.jsp" method="post">
                            <p class="w3-center">
                               <input class="w3-btn w3-padding-large w3-green" type="submit" value="Grade 1 Staff Login" />
                            </p>        
                        </form>
                    </div>
                </div>
                <div class="w3-half w3-padding-16">
                    <div class="w3-padding w3-center">
                        <img class="w3-round-large" src="images/g2S.png" alt="customer">
                            <form action="g2StaffLogin.jsp" method="post">
                                <p class="w3-center">
                                    <input class="w3-btn w3-padding-large w3-green" type="submit" value=" Grade 2 Staff Login" />
                                </p>        
                            </form>
                    </div>
                </div>
                
            </div>
        </div>
        
        <br>
        <br>
        
        <div class="w3-text-white">
                    <jsp:include page="footer.jsp"></jsp:include>

        </div>
        
    </body>
</html>
