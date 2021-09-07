
package Controller;

import Model.CustomerBean;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

 
@WebServlet(name = "CusReg", urlPatterns = {"/CusReg"})
public class CusReg extends HttpServlet {

 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
         try {
            PrintWriter out = response.getWriter();
            
            String title1 = request.getParameter("ddltitle");
            
            String gender = request.getParameter("gender");
            
            String cont = request.getParameter("contact");
            
            String fname = request.getParameter("fname");
            String mname = request.getParameter("mname");
            String lname = request.getParameter("lname");
            
            String email = request.getParameter("email");
            
            String pwrd1 = request.getParameter("password");
            String pwrd2 = request.getParameter("repassword");
            
            
            //out.println("lname);
            CustomerBean cb = new CustomerBean();
            cb.createRegister();
            cb.registerCus(email,title1,gender,cont,fname,mname,lname,pwrd1,pwrd2);
            
            RequestDispatcher rd = request.getRequestDispatcher("custDash.jsp");
            rd.forward(request, response);
            
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(CusReg.class.getName()).log(Level.SEVERE, null, ex);
        }
            
        
    }

     
}
