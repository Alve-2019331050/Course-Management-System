package cms.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
    private static Connection conn = null;
    
    public static Connection getConnection() throws ClassNotFoundException, SQLException{
        if(conn!=null)
            return conn;
        else{
            Class.forName("com.mysql.cj.jdbc.Driver");
            DriverManager.getConnection("jdbc:mysql://localhost:3306/", "root", "AlverahmaN");
            return conn;
        }
    }
}
