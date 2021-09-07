 
package Controller;

import Model.AdminBean;
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
 
@WebServlet(name = "AdminAddG1", urlPatterns = {"/AdminAddG1"})
public class AdminAddG1 extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
        try {
            PrintWriter out = response.getWriter();
            
            String title1 = request.getParameter("ddltitle");
            
            String gender = request.getParameter("gender");
            
            String cont = request.getParameter("contact");
            
            String fname = request.getParameter("fname");
            String work = request.getParameter("work");
            String lname = request.getParameter("lname");
            
            String email = request.getParameter("email");
            
            String pwrd1 = request.getParameter("password");
            String pwrd2 = request.getParameter("repassword");
            
            AdminBean ab = new AdminBean();
            ab.adminAddStaffG1(email, title1, gender, cont, fname, work, lname, pwrd1, pwrd2);
            
            RequestDispatcher rd = request.getRequestDispatcher("adViewG1Staff.jsp");
            rd.include(request, response);
            out.print("Grade 1 Staff Member Added Successfully");
            
            
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(AdminAddG1.class.getName()).log(Level.SEVERE, null, ex);
        }
            
    }
 
}
