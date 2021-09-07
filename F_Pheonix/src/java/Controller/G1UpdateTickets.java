 
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
 
@WebServlet(name = "G1UpdateTickets", urlPatterns = {"/G1UpdateTickets"})
public class G1UpdateTickets extends HttpServlet {
 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            PrintWriter out = response.getWriter();
            
            String tick = request.getParameter("tick");
            String flight = request.getParameter("flight"); 
            String start = request.getParameter("start"); 
            String cont = request.getParameter("contact");
            String lname = request.getParameter("lname");  
            String des = request.getParameter("des"); 
            
            Tickets tic = new Tickets();
            tic.updateTicket(tick,flight,start,des,cont,lname);
            
            RequestDispatcher rd = request.getRequestDispatcher("g1ViewTickets.jsp");
            rd.include(request, response);
            out.print("Ticket updated successfully");
            
    }
 
}
