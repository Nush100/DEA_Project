

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> G2 Staff Registration </title>
    </head>
    <body class="w3-pale-green w3-text-teal">
        <jsp:include page="header.jsp"></jsp:include>
        <div class="w3-content">
        <h1>Grade 2 Staff Registration</h1>
        
        <form action="./G2StaffReg" method="post">
            <table border="0"> 
                <tr>
                    <td><label> Choose title </label> </td>
                    <td>
                        : <select name="ddltitle">
                            <option value="">Choose Title</option>
                            <option value="MR">Mr</option>
                            <option value="MRS">Mrs</option>
                            <option value="MS">Ms</option>
                            <option value="MASTER">Master</option>
                          </select>
                    </td>
                </tr>
                <tr>
                    <td><label> First Name </label> </td>
                    <td> : <input type="text" name="fname" placeholder="as per passport" value="" title=""></td>
                </tr>
                <tr>
                    <td><label> Last Name </label> </td>
                    <td> : <input type="text" name="lname" placeholder="as per passport" value=""></td>
                </tr>
                <tr>
                    <td><label>Contact </label></td>
                    <td> : <input type="text" name="contact" placeholder="valied telephone number" value=""></td>
                </tr>
                <tr>
                    <td><label> Gender </label> </td>
                    <td> : Male <input type="radio" name="gender" value="male"> Female <input type="radio" name="gender" value="female"></td>
                </tr>
                <tr>
                    <td><label>Email</label></td>
                    <td> : <input type="text" name="email" placeholder="valid email address" value=""></td>
                </tr>
                <tr>
                    <td><label>Working Experience</label> </td>
                    <td> : <input type="text" name="work" placeholder="if any" value=""></td>
                </tr>
                <tr>
                    <td><label>Password</label></td>
                    <td> : <input type="password" name="password" placeholder="type a password" value="" ></td>
                </tr>
                <tr>
                    <td><label>Confirm Password</label></td>
                    <td> : <input type="password" name="repassword" placeholder="Retype the same password"></td>
                </tr>
                <tr>
                    <td><center><input class="w3-btn w3-green" type="reset" value="Reset"></center></td>
                    <td><center><input class="w3-btn w3-teal" type="submit" value="Register"></center></td>
                </tr> 
            </table>
	</form>
        <jsp:include page="footer.jsp"></jsp:include>
        </div>
    </body>
</html>
