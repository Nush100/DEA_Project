

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1> 
            <%
               String email = request.getParameter("email");
               String fname = request.getParameter("fname");
               out.print(fname);
            %>
        </h1>
        <form action="./G1StfUpdateCus" method="post">
            <table>
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
                    <td><input type="hidden" name="fname" value="<%= fname %>"/></td>
                </tr>
                <tr>
                    <td><center><input type="reset" value="Reset"></center></td>
                    <td><center><input type="submit" value="Update"></center></td>
                </tr>
            </table>
        </form>
    </body>
</html>
