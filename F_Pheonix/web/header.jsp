 

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> 
    </head>
    <body> 
        <div class="w3-panel">
            <div class="w3-bar w3-white w3-border-bottom w3-large">
                <a href="index.html" class="w3-bar-item w3-button w3-text-black w3-hover-black" title="Home Page"><i class="w3-padding fa fa-home w3-xxlarge"></i></a>
                <a href="itickets.jsp" class="w3-bar-item w3-button w3-text-black w3-hover-black" title="Tickets"><i class="w3-padding fa fa-credit-card w3-xxlarge"></i></a>                
<!--                <a href="ireservations.jsp" class="w3-bar-item w3-button w3-text-black w3-hover-black" title="Seat Resetvations"><i class="w3-padding fa fa-plane w3-xxlarge"></i></a>-->
                <div title="Register" class="w3-dropdown-hover w3-bar-item w3-hover-black">
                    <i class="w3-btn w3-padding fa fa-id-badge w3-xxlarge w3-hover-black"></i>
                    <div class="w3-dropdown-content w3-bar-block w3-border">
                        <a href="cusReg.jsp" class="w3-bar-item w3-button">Customer</a>
                        <a href="staffReg.jsp" class="w3-bar-item w3-button">Staff</a>
                    </div>
                 </div>
                <div title="login" class="w3-dropdown-hover w3-bar-item w3-right w3-margin-right w3-hover-black">
                    <i class="w3-btn w3-padding fa fa-user w3-xxlarge w3-hover-black"></i>
                    <div class="w3-dropdown-content w3-bar-block w3-border">
                        <a href="cusLogin.jsp" class="w3-bar-item w3-button">User</a>
                        <a href="adLogin.jsp" class="w3-bar-item w3-button">Admin</a>
                        <a href="staffLogin.jsp" class="w3-bar-item w3-button">Staff</a>
                    </div>
                </div>
                <h1 class="w3-center w3-xxlarge"><span class="w3-text-white w3-padding w3-black w3-opacity-min"><b>Pheonix</b></span><span class="w3-hide-small w3-padding w3-text-black"><b>AirLines</b></span></h1>   
            </div>
        </div>
    </body>
</html>
