
package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;


public class AdminBean {
    
    
    
     public void deleteG1Staff(String em)
    {
        DbConnect db = new DbConnect();
        try{  
         
         Connection con = db.getConnection();
         PreparedStatement ps = con.prepareStatement("DELETE FROM Grade1Staff WHERE Email=? ");
         ps.setString(1, em);
         
         ps.executeUpdate();
         con.close();
        
         }
         catch(Exception e)
         {
             System.out.println(e);
         }
         
        
    }
     
      public void adUpdateG1Staff(String email, String titl,String work, String cont, String lname)
    {
        DbConnect db = new DbConnect();
        
        try {
            
            Connection con = db.getConnection();
            PreparedStatement ps = con.prepareStatement("UPDATE Grade1Staff SET Lname=?,Title=?,ContactNo=?, WorkExp=? WHERE Email=? ");
          
            
            ps.setString(1,lname);
            ps.setString(2,titl);
            ps.setString(3,cont);
            ps.setString(4,work);
            ps.setString(5, email);
            
            ps.executeUpdate();
            
            con.close();
            
        } catch (SQLException ex) {
            Logger.getLogger(DbConnect.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(AdminBean.class.getName()).log(Level.SEVERE, null, ex);
        }
    }  
     
    public void adminAddStaffG1(String email, String title1, String gender, String cont, String fname, String work, String lname, String pwrd1, String pwrd2) throws ClassNotFoundException {
        
        DbConnect db = new DbConnect();
        
        try {
            
            Connection con = db.getConnection();
            
            PreparedStatement ps = con.prepareStatement("INSERT INTO Grade1Staff VALUES (?,?,?,?,?,?,?,?,?)");
            
            
            ps.setString(1,fname);         
            ps.setString(2,lname);
            ps.setString(3,title1);
            ps.setString(4,gender);
            ps.setString(5,email);
            ps.setString(6,work);
            ps.setString(7,pwrd1);
            ps.setString(8,pwrd2);
            ps.setString(9,cont);
            
            ps.executeUpdate();
            
           con.close();
            
        } catch (SQLException ex) {
            Logger.getLogger(AdminBean.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
     public void adUpdateG2Staff(String email, String titl,String work, String cont, String lname)
    {
        DbConnect db = new DbConnect();
        
        try {
            
            Connection con = db.getConnection();
            PreparedStatement ps = con.prepareStatement("UPDATE Grade2Staff SET Lname=?,Title=?,ContactNo=?, WorkExp=? WHERE Email=? ");
          
            
            ps.setString(1,lname);
            ps.setString(2,titl);
            ps.setString(3,cont);
            ps.setString(4,work);
            ps.setString(5, email);
            
            ps.executeUpdate();
            
            con.close();
            
        } catch (SQLException ex) {
            Logger.getLogger(DbConnect.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(AdminBean.class.getName()).log(Level.SEVERE, null, ex);
        }
    }  
     
      public void adDeleteG2Staff(String em)
    {
        DbConnect db = new DbConnect();
        try{  
         
         Connection con = db.getConnection();
         PreparedStatement ps = con.prepareStatement("DELETE FROM Grade2Staff WHERE Email=? ");
         ps.setString(1, em);
         
         ps.executeUpdate();
         con.close();
        
         }
         catch(Exception e)
         {
             System.out.println(e);
         }
         
        
    }
      
     public void adminAddStaffG2(String email, String title1, String gender, String cont, String fname, String work, String lname, String pwrd1, String pwrd2) throws ClassNotFoundException {
        
        DbConnect db = new DbConnect();
        
        try {
            
            Connection con = db.getConnection();
            
            PreparedStatement ps = con.prepareStatement("INSERT INTO Grade2Staff VALUES (?,?,?,?,?,?,?,?,?)");
            
            
            ps.setString(1,fname);         
            ps.setString(2,lname);
            ps.setString(3,title1);
            ps.setString(4,gender);
            ps.setString(5,email);
            ps.setString(6,work);
            ps.setString(7,pwrd1);
            ps.setString(8,pwrd2);
            ps.setString(9,cont);
            
            ps.executeUpdate();
            
           con.close();
            
        } catch (SQLException ex) {
            Logger.getLogger(AdminBean.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    } 
}
