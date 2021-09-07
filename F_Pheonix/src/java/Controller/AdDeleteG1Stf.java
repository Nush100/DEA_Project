
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

@WebServlet(name = "AdDeleteG1Stf", urlPatterns = {"/AdDeleteG1Stf"})
public class AdDeleteG1Stf extends HttpServlet {

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        PrintWriter out = response.getWriter();
        
        String email = request.getParameter("email");
        
        AdminBean ab = new AdminBean();
        ab.deleteG1Staff(email);
        
        RequestDispatcher rd = request.getRequestDispatcher("adViewG1Staff.jsp");
        rd.forward(request, response);
        
    }

    
}
