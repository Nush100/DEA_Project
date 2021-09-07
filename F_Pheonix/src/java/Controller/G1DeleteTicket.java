 
package Controller;

import Model.Tickets;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
@WebServlet(name = "G1DeleteTicket", urlPatterns = {"/G1DeleteTicket"})
public class G1DeleteTicket extends HttpServlet {

     
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
         
        PrintWriter out = response.getWriter();
        
        String tick  = request.getParameter("tick");
        
        Tickets tic = new Tickets();
        tic.deleteTicket(tick);
        
        RequestDispatcher rd = request.getRequestDispatcher("g1ViewTickets.jsp");
        rd.forward(request, response);
        
    }

     

}
