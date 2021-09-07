 
package Controller;

import Model.CustomerBean;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

 
@WebServlet(name = "CusLogin", urlPatterns = {"/CusLogin"})
public class CusLogin extends HttpServlet {
 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         
        PrintWriter out = response.getWriter();
        
        String email = request.getParameter("pass");
        String pass = request.getParameter("pass");
        
  //      CustomerBean cb = new CustomerBean();
//        int res = cb.validateLogin(email,pass);
//        
//        if(res==1)
//        {
            HttpSession session = request.getSession();
              session.setAttribute("username",email);
              
            RequestDispatcher rd = request.getRequestDispatcher("custDash.jsp");
            rd.forward(request, response);
        //}
        
    }

    
}
