
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

@WebServlet(name = "AdDeleteCus", urlPatterns = {"/AdDeleteCus"})
public class AdDeleteCus extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        PrintWriter out = response.getWriter();
        
        String email = request.getParameter("email");
        
        CustomerBean cb = new CustomerBean();
        cb.deleteCustomer(email);
        
        RequestDispatcher rd = request.getRequestDispatcher("adViewCus.jsp");
        rd.forward(request, response);
        
        
    }

    

}
