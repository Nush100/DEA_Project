 
package Controller;

import Model.StaffBean;
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
 
@WebServlet(name = "PendingG1", urlPatterns = {"/PendingG1"})
public class PendingG1 extends HttpServlet {

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         
        try {
            PrintWriter out = response.getWriter();
            
            String title1 = request.getParameter("titl");
            
            String gender = request.getParameter("gender");
            
            String cont = request.getParameter("cont");
            
            String fname = request.getParameter("fname");
            String work = request.getParameter("work");
            String lname = request.getParameter("lname");
            
            String email = request.getParameter("email");
            
            String pwrd1 = request.getParameter("pass");
            String pwrd2 = request.getParameter("checkpass");
            
            StaffBean sb2 = new StaffBean();
            sb2.registerStaffG1(email, title1, gender, cont, fname, work, lname, pwrd1, pwrd2);
            sb2.deletePending(email);
            
            RequestDispatcher rd = request.getRequestDispatcher("adViewG1Staff.jsp");
            rd.forward(request, response);
            
            
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(PendingG1.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

     
}
