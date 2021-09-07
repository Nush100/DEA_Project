  
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Portal | Pheonix AirLines </title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> 
    </head>
    
    <body class="w3-light-grey">
        
        <jsp:include page="header.jsp" ></jsp:include>
        
        <div class="w3-content" style="max-width:1100px;">
            
            <div class="w3-panel">
                <h1> Admin Portal </h1>
            </div>
            
            <div class="w3-container">
                <div class="w3-padding-16 w3-black w3-card w3-round-large">
                    <div class="w3-panel">
                        <h2>
                            <i class="w3-padding fa fa-globe w3-xxlarge"></i>
                            Pheonix Sign In 
                        </h2> 
                    </div>
                    
                    <div class="w3-panel">
                        <form action="./AdLogin" method="post">
                            <p>
                                <input class="w3-input w3-padding-16 w3-border w3-round-large" type="text" name="uname" placeholder="User Name" value="">
                            </p>
                            <p>
                                <input class="w3-input w3-padding-16 w3-border w3-round-large" type="password" name="pass" placeholder="Password" value="">
                            </p>  
                    </div> 
                </div>
            </div>
            
                            <div class="w3-container"> 
                                 <input class="w3-button w3-black w3-margin-top w3-padding-large w3-hover-red w3-round-large" type="submit" value="Login">
                            </div>
            
                        </form>
                 
        </div>
                        <br>
                        <br>
        
        <jsp:include page="footer.jsp"></jsp:include>
        
    </body>
</html>
