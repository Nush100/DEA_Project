
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

@WebServlet(name = "G2StaffReg", urlPatterns = {"/G2StaffReg"})
public class G2StaffReg extends HttpServlet {

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
            
            
            //out.println("lname);
            StaffBean sb = new StaffBean();
            //sb.createG2Staff();
            sb.registerStaffG2(email, title1, gender, cont, fname, work, lname, pwrd1, pwrd2);
            
            RequestDispatcher rd = request.getRequestDispatcher("g2StaffReg.jsp");
            rd.include(request, response);
            out.print("Your Registration as Grade 2 Staff is successful. But your account should be approved by the admin");
            
            
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(G2StaffReg.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }


}
