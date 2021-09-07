
package Model;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;


public class CustomerBean {
    
    
    public String md5(String pwrd1) throws NoSuchAlgorithmException, UnsupportedEncodingException{
        
        MessageDigest digs = MessageDigest.getInstance("MD5");
        digs.update((new String(pwrd1).getBytes("UTF8")));
        String str = new String(digs.digest());
        
        return str;
    }
    
    public void registerCus(String email, String title1, String gender, String cont, String fname, String mname, String lname, String enpwrd, String pwrd2) throws ClassNotFoundException {
        
        DbConnect db = new DbConnect();
        
        try {
            
            Connection con = db.getConnection();
            
            PreparedStatement ps = con.prepareStatement("INSERT INTO Customer VALUES (?,?,?,?,?,?,?,?,?)");
            
            
            ps.setString(1,fname);
            ps.setString(2,mname);
            ps.setString(3,lname);
            ps.setString(4,title1);
            ps.setString(5,gender);
            ps.setString(6,email);
            ps.setString(7,enpwrd);
            ps.setString(8,pwrd2);
            ps.setString(9,cont);
            
            ps.executeUpdate();
            
           con.close();
            
        } catch (SQLException ex) {
            Logger.getLogger(CustomerBean.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
    
    //create table
    public void createRegister()
    {
        DbConnect db = new DbConnect();
        
        try {
            Connection con = db.getConnection();
            
            PreparedStatement ps = con.prepareStatement("CREATE TABLE IF NOT EXISTS Customer (Fname varchar(30), Mname varchar(30), Lname varchar(30),Title varchar(30),Gender varchar(30),Email varchar(30),Password varchar(30), CheckPass varchar(30),ContactNo varchar(30), PRIMARY KEY(Email))");
            ps.executeUpdate();
            
            con.close();
            
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(CustomerBean.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
    //add
//    public void registerCus(String email, String title1, String gender, String cont, String fname, String mname, String lname, String pwrd1, String pwrd2) throws ClassNotFoundException {
//        
//        DbConnect db = new DbConnect();
//        
//        try {
//            
//            Connection con = db.getConnection();
//            
//            PreparedStatement ps = con.prepareStatement("INSERT INTO Customer VALUES (?,?,?,?,?,?,?,?,?)");
//            
//            
//            ps.setString(1,fname);
//            ps.setString(2,mname);
//            ps.setString(3,lname);
//            ps.setString(4,title1);
//            ps.setString(5,gender);
//            ps.setString(6,email);
//            ps.setString(7,pwrd1);
//            ps.setString(8,pwrd2);
//            ps.setString(9,cont);
//            
//            ps.executeUpdate();
//            
//           con.close();
//            
//        } catch (SQLException ex) {
//            Logger.getLogger(CustomerBean.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        
//    }
//    
    //update
    public void updateCustomer(String email, String titl, String mname, String lname, String cont)
    {
        DbConnect db = new DbConnect();
        
        try {
            
            Connection con = db.getConnection();
            PreparedStatement ps = con.prepareStatement("UPDATE Customer SET Mname=?,Lname=?,Title=?,ContactNo=? WHERE Email=? ");
          
            
            ps.setString(1,mname);
            ps.setString(2,lname);
            ps.setString(3,titl);
            ps.setString(4,cont);
            ps.setString(5,email);
            
            ps.executeUpdate();
            
            con.close();
            
        } catch (SQLException ex) {
            Logger.getLogger(DbConnect.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(CustomerBean.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
    public void deleteCustomer(String em)
    {
        DbConnect db = new DbConnect();
        try{  
         
         Connection con = db.getConnection();
         PreparedStatement ps = con.prepareStatement("DELETE FROM Customer WHERE Email=? ");
         ps.setString(1, em);
         
         ps.executeUpdate();
         con.close();
        
         }
         catch(Exception e)
         {
             System.out.println(e);
         }
         
        
    }

   
}
