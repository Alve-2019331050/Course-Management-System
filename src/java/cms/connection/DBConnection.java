package cms.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
/**
 * This is a helper class to create Database Connection
 */
public class DBConnection {
    private static Connection conn = null;
    
    /**
     * 
     * @return a Connection object containing Database Connection
     * @throws ClassNotFoundException if a class is not found
     * @throws SQLException if an SQL error occurs
     */
    public static Connection getConnection() throws ClassNotFoundException, SQLException{
        if(conn==null){
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/servlet_cms_db ", "root", "AlverahmaN");
        }
        return conn;
    }
}
