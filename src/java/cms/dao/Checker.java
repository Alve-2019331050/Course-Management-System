package cms.dao;

import cms.connection.DBConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * This is a Database Object class responsible for validating Database Object
 */
public class Checker {
    public static boolean validateTeacher(String user){
        try {
            Connection conn = DBConnection.getConnection();
            String query = "select * from teacher where name = ?";
            PreparedStatement pst = conn.prepareStatement(query);
            pst.setString(1,user);
            ResultSet rs = pst.executeQuery();
            if(rs.next()){
                return true;
            }
            return false;
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Checker.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        } catch (SQLException ex) {
            Logger.getLogger(Checker.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }
    
    public static boolean validateStudent(String user){
        try {
            Connection conn = DBConnection.getConnection();
            String query = "select * from student where name = ?";
            PreparedStatement pst = conn.prepareStatement(query);
            pst.setString(1,user);
            ResultSet rs = pst.executeQuery();
            if(rs.next()){
                return true;
            }
            return false;
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Checker.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        } catch (SQLException ex) {
            Logger.getLogger(Checker.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }
}
