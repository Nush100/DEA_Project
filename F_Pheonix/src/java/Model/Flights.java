 
package Model;
 
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Flights {
    
    public void createFlightTable(){
        
         DbConnect db = new DbConnect();
        
        try {
            Connection con = db.getConnection();
            
            PreparedStatement ps = con.prepareStatement("CREATE TABLE IF NOT EXISTS Flights (FlightID varchar(30), FlightStart varchar(30),FlightDestination varchar(30),StartDate varchar(30),StartTime varchar(30), PRIMARY KEY(FlightID))");
            ps.executeUpdate();
            
            con.close();
            
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Flights.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
    }
    
    public void insertFlights(String fid,String fstart,String fdes,String sdate,String stime){
        DbConnect db = new DbConnect();
        
        try {
            
            Connection con = db.getConnection();
            
            PreparedStatement ps = con.prepareStatement("INSERT INTO Flights VALUES (?,?,?,?,?)");
            
            
            ps.setString(1,fid);         
            ps.setString(2,fstart);
            ps.setString(3,fdes);
            ps.setString(4,sdate);
            ps.setString(5,stime);
           
            
            ps.executeUpdate();
            
           con.close();
            
        } catch (SQLException ex) {
            Logger.getLogger(StaffBean.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Flights.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }

    public void updateFlights(String fid, String fstart, String fdes, String sdate, String stime) {
         DbConnect db = new DbConnect();
        
        try {
            
            Connection con = db.getConnection();
            PreparedStatement ps = con.prepareStatement("UPDATE Flights SET FlightStart=?,FlightDestination=?,StartDate=?,StartTime=? WHERE FlightID=? ");
          
            
            ps.setString(1,fstart);
            ps.setString(2,fdes);
            ps.setString(3,sdate);
            ps.setString(4,stime);
            ps.setString(5,fid);
            
            ps.executeUpdate();
            
            con.close();
            
        } catch (SQLException ex) {
            Logger.getLogger(Flights.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Flights.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }

    public void deleteFlight(String fid) {
        DbConnect db = new DbConnect();
        try{  
         
         Connection con = db.getConnection();
         PreparedStatement ps = con.prepareStatement("DELETE FROM Flights WHERE FlightID=? ");
         ps.setString(1, fid);
         
         ps.executeUpdate();
         con.close();
        
         }
         catch(Exception e)
         {
             System.out.println(e);
         }
         
    }
    
}
