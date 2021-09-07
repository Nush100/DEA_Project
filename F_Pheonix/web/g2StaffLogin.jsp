 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Staff | Pheonix AirLines </title>
    </head>
    <body>
        <jsp:include page="header.jsp" ></jsp:include>
        
        <div class="w3-content" style="max-width:1100px;">
            
            <div class="w3-panel w3-text-teal">
                <h1> Staff Login </h1>
            </div>
            <div class="w3-container" >
                <div class="w3-padding-16 w3-card w3-pale-green w3-round-large">
                    
                    <div class="w3-panel">
                        <h2 class="w3-text-teal">
                            <i class="w3-padding fa fa-globe w3-xxlarge"></i>
                            Pheonix Sign In 
                        </h2> 
                    </div>
                    
                    <div class="w3-panel">
                        <form action="./G2StaffLogin" method="post">
                            <p>
                                <input class="w3-input w3-padding-16 w3-round-large" type="text" name="email" placeholder="Email" value="">
                            </p>
                            <p>
                                <input class="w3-input w3-padding-16 w3-round-large" type="password" name="pass" placeholder="Password" value="">
                            </p>
                    </div>
                </div>   
            </div>
            
                <div class="w3-container">
                    <input class="w3-btn w3-green w3-text-white w3-margin-top w3-padding-large w3-round-large w3-hover-white" type="submit" value="Login">                         
                </div>
                        </form>   
            
        </div>
         
        <br>
        <br>
        
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
