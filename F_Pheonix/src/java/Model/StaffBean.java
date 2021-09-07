
package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;


public class StaffBean {
    
   
    public void createG1Staff()
    {
        DbConnect db = new DbConnect();
        
        try {
            Connection con = db.getConnection();
            
            PreparedStatement ps = con.prepareStatement("CREATE TABLE IF NOT EXISTS Grade1Staff (Fname varchar(30), Lname varchar(30),Title varchar(30),Gender varchar(30),Email varchar(30),WorkExp varchar(30),Password varchar(30), CheckPass varchar(30),ContactNo varchar(30), PRIMARY KEY(Email))");
            ps.executeUpdate();
            
            con.close();
            
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(StaffBean.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
    public void registerStaffG1(String email, String title1, String gender, String cont, String fname, String work, String lname, String pwrd1, String pwrd2) throws ClassNotFoundException {
        
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
            Logger.getLogger(StaffBean.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
    
     public void createG1StaffPending()
    {
        DbConnect db = new DbConnect();
        
        try {
            Connection con = db.getConnection();
            
            PreparedStatement ps = con.prepareStatement("CREATE TABLE IF NOT EXISTS Grade1StaffPending (Fname varchar(30), Lname varchar(30),Title varchar(30),Gender varchar(30),Email varchar(30),WorkExp varchar(30),Password varchar(30), CheckPass varchar(30),ContactNo varchar(30), PRIMARY KEY(Email))");
            ps.executeUpdate();
            
            con.close();
            
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(StaffBean.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
    
    public void registerStaffG1pending(String email, String title1, String gender, String cont, String fname, String work, String lname, String pwrd1, String pwrd2) throws ClassNotFoundException {
        
        DbConnect db = new DbConnect();
        
        try {
            
            Connection con = db.getConnection();
            
            PreparedStatement ps = con.prepareStatement("INSERT INTO Grade1StaffPending VALUES (?,?,?,?,?,?,?,?,?)");
            
            
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
            Logger.getLogger(StaffBean.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
    
    
    public void createG2Staff()
    {
        DbConnect db = new DbConnect();
        
        try {
            Connection con = db.getConnection();
            
            PreparedStatement ps = con.prepareStatement("CREATE TABLE IF NOT EXISTS Grade2Staff (Fname varchar(30), Lname varchar(30),Title varchar(30),Gender varchar(30),Email varchar(30),WorkExp varchar(30),Password varchar(30), CheckPass varchar(30),ContactNo varchar(30), PRIMARY KEY(Email))");
            ps.executeUpdate();
            
            con.close();
            
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(StaffBean.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
    public void registerStaffG2(String email, String title1, String gender, String cont, String fname, String work, String lname, String pwrd1, String pwrd2) throws ClassNotFoundException {
        
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
            Logger.getLogger(StaffBean.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }

    public void deletePending(String email) {
       DbConnect db = new DbConnect();
        try{  
         
         Connection con = db.getConnection();
         PreparedStatement ps = con.prepareStatement("DELETE FROM Grade1StaffPending WHERE Email=? ");
         ps.setString(1, email);
         
         ps.executeUpdate();
         con.close();
        
         }
         catch(Exception e)
         {
             System.out.println(e);
         } 
    }
    
    
    
    
}
