 
package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
@WebServlet(name = "G2StaffLogin", urlPatterns = {"/G2StaffLogin"})
public class G2StaffLogin extends HttpServlet {

 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
         PrintWriter out = response.getWriter();
        
        String email = request.getParameter("pass");
        String pass = request.getParameter("pass");
        
  
            RequestDispatcher rd = request.getRequestDispatcher("g2StaffDash.jsp");
            rd.forward(request, response);
        
    }

   

}
