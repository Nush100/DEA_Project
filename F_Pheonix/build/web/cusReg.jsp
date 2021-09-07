
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer Sign Up | Pheonix AirLines</title>
        <style>
             body {
                background-image: url("images/d.jpg"); 
                background-repeat: no-repeat; 
            }
        </style>
    </head>
    
    <body>
            <jsp:include page="header.jsp"></jsp:include>
        
            <br> 
            
            <div class="w3-container w3-text-blue-grey">
              <h1>Customer Registration</h1>
            </div>
          
            <br>
            
        <div class="w3-content" style="max-width:1100px;">
            
            <div class="w3-card-4 w3-half w3-round-large"> 
                
                <form class="w3-container" action="./CusReg" method="post">
                    <p>      
                        <label class="w3-text-blue-grey"><b> Choose title </b></label>
                        <select class="w3-input w3-border w3-light-grey" name="ddltitle"> 
                              <option value="PROF">PROF</option>
                              <option value="DR">Dr</option>
                              <option value="HON">Hon</option>
                              <option value="MR">Mr</option>
                              <option value="MRS">Mrs</option>
                              <option value="MS">Ms</option>
                              <option value="REV">Rev</option>
                               <option value="EXC">Exc</option>
                          </select>
                    </p>
                    <p>      
                      <label class="w3-text-blue-grey"><b> First Name </b></label>
                      <input class="w3-input w3-border w3-light-grey" type="text" name="fname" placeholder="as per passport" value="">
                    </p>
                    <p>      
                      <label class="w3-text-blue-grey"><b> Middle Name </b></label>
                      <input class="w3-input w3-border w3-light-grey" type="text" name="mname" placeholder="optional" value="">
                    </p>
                    <p>      
                      <label class="w3-text-blue-grey"><b> Last Name </b></label>
                      <input class="w3-input w3-border w3-light-grey" type="text" name="lname" placeholder="as per passport" value="">
                    </p> 
                    <p>      
                      <label class="w3-text-blue-grey"><b> Contact </b></label>
                      <input class="w3-input w3-border w3-light-grey" type="text" name="contact" placeholder="valied telephone number" value="">
                    </p> 
                    <p class="w3-text-blue-grey">      
                        <label class="w3-text-blue-grey"><b> Gender : </b></label><br>
                      Male <input class="w3-padding" type="radio" name="gender" value="male"> Female <input class="w3-padding" type="radio" name="gender" value="female">
                    </p>    
                    <p>      
                      <label class="w3-text-blue-grey"><b> Email </b></label>
                      <input class="w3-input w3-border w3-light-grey" type="text" name="email" placeholder="valid email address" value="">
                    </p>
                    <p>      
                      <label class="w3-text-blue-grey"><b> Password </b></label>
                      <input class="w3-input w3-border w3-light-grey" type="password" name="password" placeholder="type a password" value="">
                    </p>
                    <p>      
                      <label class="w3-text-blue-grey"><b> Confirm Password </b></label>
                      <input class="w3-input w3-border w3-light-grey" type="password" name="repassword" placeholder="Retype the same password">
                    </p>
                    <p>
                        <input class="w3-btn w3-blue-grey" type="submit" value="Register">
                    </p>
                </form>
            </div> 
        </div> 
            
            <br>
            
            <div class="w3-panel">
                <br>
                <br>
            </div>
            
            <jsp:include page="footer.jsp"></jsp:include>
            
    </body>
    
</html>
