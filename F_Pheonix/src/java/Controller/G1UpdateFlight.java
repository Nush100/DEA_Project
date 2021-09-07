 
package Controller;

import Model.Flights;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

 
@WebServlet(name = "G1UpdateFlight", urlPatterns = {"/G1UpdateFlight"})
public class G1UpdateFlight extends HttpServlet {

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         
        PrintWriter out = response.getWriter();
        
        String fid = request.getParameter("fid");
        String fstart = request.getParameter("fstart");
        
        String fdes = request.getParameter("fdes");
        
        String sdate = request.getParameter("sdate");
        
        String stime = request.getParameter("stime");
        
        Flights fl = new Flights();
        fl.updateFlights(fid,fstart,fdes,sdate,stime);
        
        RequestDispatcher rd = request.getRequestDispatcher("g1ViewFlights.jsp");
        rd.include(request, response);
        out.print("Flights Updated Successfully.");
    }

    

}
