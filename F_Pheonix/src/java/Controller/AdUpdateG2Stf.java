 
package Controller;

import Model.AdminBean;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

 
@WebServlet(name = "AdUpdateG2Stf", urlPatterns = {"/AdUpdateG2Stf"})
public class AdUpdateG2Stf extends HttpServlet {

     
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         
        PrintWriter out = response.getWriter();
        
        String title1 = request.getParameter("ddltitle");
        String cont = request.getParameter("contact");
        String work = request.getParameter("work");
        String email = request.getParameter("email");
        String lname = request.getParameter("lname");
        String fname = request.getParameter("fname");
        //out.println("lname);
        
        AdminBean ab = new AdminBean();
        ab.adUpdateG2Staff(email, title1, work, cont, lname);
        
        RequestDispatcher rd = request.getRequestDispatcher("adViewG2Staff.jsp");
        rd.forward(request, response);
    }

     

}
