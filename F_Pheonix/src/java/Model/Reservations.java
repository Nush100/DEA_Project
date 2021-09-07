 
package Model;
 
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Reservations {
    
    public void createFlightTable(){
        
         DbConnect db = new DbConnect();
        
        try {
            Connection con = db.getConnection();
            
            PreparedStatement ps = con.prepareStatement("CREATE TABLE IF NOT EXISTS Reservations (FlightID varchar(30), FlightStart varchar(30),FlightDestination varchar(30),StartDate varchar(30),StartTime varchar(30), PRIMARY KEY(FlightID))");
            ps.executeUpdate();
            
            con.close();
            
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Reservations.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
    }
    
}
