 
package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
 
@WebServlet(name = "AdLogin", urlPatterns = {"/AdLogin"})
public class AdLogin extends HttpServlet {

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        PrintWriter out = response.getWriter();
        
        String uname = request.getParameter("uname");
        String pass = request.getParameter("pass");
        
        
        if(uname.equals("admin") && pass.equals("1234"))
        {
            
            HttpSession session = request.getSession();
            session.setAttribute("adminLogin", uname);
            
            
            RequestDispatcher rd = request.getRequestDispatcher("admindash.jsp");
            rd.forward(request, response);
            
        }
        else
        {
            
            RequestDispatcher rd = request.getRequestDispatcher("adLogin.jsp");
            rd.include(request, response);
            out.print("Invalid Credentials. Please Login again");
        }
        
    }

     
}
