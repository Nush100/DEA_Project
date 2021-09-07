 
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
 
@WebServlet(name = "BookTickets", urlPatterns = {"/BookTickets"})
public class BookTickets extends HttpServlet {

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         
        PrintWriter out = response.getWriter();
            
            String tick = request.getParameter("tick");
            String flight = request.getParameter("flight"); 
            String start = request.getParameter("start"); 
            String cont = request.getParameter("contact");
            String lname = request.getParameter("lname"); 
            String email = request.getParameter("email"); 
            String des = request.getParameter("des"); 
            
            Tickets tic = new Tickets();
            tic.createTicketTable();
            tic.insertTicket(tick, flight, start, cont, lname, email, des);
            
            RequestDispatcher rd = request.getRequestDispatcher("itickets.jsp");
            rd.include(request, response);
            out.print("Ticket booked successfully");
    }
 
}
