
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

@WebServlet(name = "G1StfUpdateCus", urlPatterns = {"/G1StfUpdateCus"})
public class G1StfUpdateCus extends HttpServlet {

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
        PrintWriter out = response.getWriter();
        
        String email = request.getParameter("email");
        String mname = request.getParameter("mname");
        String lname = request.getParameter("lname");
        String cont = request.getParameter("contact");
        String titl = request.getParameter("titl");
        
        CustomerBean cb = new CustomerBean();
        cb.updateCustomer(email, titl, mname, lname, cont);
        
        RequestDispatcher rd = request.getRequestDispatcher("g1StfViewCus.jsp");
        rd.include(request, response);
        out.print("Update successful");
    }
        
    

    

}
