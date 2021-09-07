
package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class DbConnect {
    
    public Connection getConnection() throws ClassNotFoundException, SQLException{
        
        final String DRIVER = "com.mysql.jdbc.Driver";
        final String URL = "jdbc:mysql://localhost:3306/pheonix";
        final String PASSWORD = "";
        final String USERNAME = "root";
        
        Class.forName(DRIVER);
        Connection con = DriverManager.getConnection(URL,USERNAME,PASSWORD);
        
        return con;
        
    }
    
}
