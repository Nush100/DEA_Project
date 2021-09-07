 
package Model;
 
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Tickets {
    public static void main(String[] args) {
        createTicketTable();
    }
    
    public static void createTicketTable(){
        
         DbConnect db = new DbConnect();
        
        try {
            Connection con = db.getConnection();
            
            PreparedStatement ps = con.prepareStatement("CREATE TABLE IF NOT EXISTS Tickets (TicketID varchar(30), FlightID varchar(30), FlightStart varchar(30),FlightDestination varchar(30),ContactNo varchar(30),Email varchar(30), LastName varchar(30),PRIMARY KEY(TICKETID))");
            ps.executeUpdate();
            
            con.close();
            
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Tickets.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
    }
    
    public void insertTicket(String tickid, String flight, String start, String cont, String lname, String email, String des) {
         DbConnect db = new DbConnect();
        
        try {
            
            Connection con = db.getConnection();
            
            PreparedStatement ps = con.prepareStatement("INSERT INTO Tickets VALUES (?,?,?,?,?,?,?)");
            
            
            ps.setString(1,tickid);         
            ps.setString(2,flight);
            ps.setString(3,start);
            ps.setString(4,des);
            ps.setString(5,cont);
            ps.setString(6,email);
            ps.setString(7,lname);
           
            
            ps.executeUpdate();
            
           con.close();
            
        } catch (SQLException | ClassNotFoundException ex) {
            Logger.getLogger(Tickets.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }

    public void deleteTicket(String tick) {
         
        DbConnect db = new DbConnect();
        try{  
         
         Connection con = db.getConnection();
         PreparedStatement ps = con.prepareStatement("DELETE FROM Tickets WHERE TicketID=? ");
         ps.setString(1, tick);
         
         ps.executeUpdate();
         con.close();
        
         }
         catch(Exception e)
         {
             System.out.println(e);
         }
         
    }

    public void updateTicket(String tick,String flight, String start, String des, String cont, String lname) {
        
         DbConnect db = new DbConnect();
        
        try {
            
            Connection con = db.getConnection();
            PreparedStatement ps = con.prepareStatement("UPDATE Tickets SET FlightID=?, FlightStart=?,FlightDestination=?,ContactNo=?,Email=? WHERE TicketID=? ");
           
            ps.setString(1,flight);
            ps.setString(2,start);
            ps.setString(3,des);
            ps.setString(4,cont);
            ps.setString(5,lname);
            ps.setString(6, tick);
            
            ps.executeUpdate();
            
            con.close();
            
        } catch (SQLException | ClassNotFoundException ex) {
            Logger.getLogger(Tickets.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
    
    
}
