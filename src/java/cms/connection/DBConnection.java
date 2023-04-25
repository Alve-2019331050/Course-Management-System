package cms.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
    private static Connection conn = null;
    
    public static Connection getConnection() throws ClassNotFoundException, SQLException{
        if(conn==null){
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/servlet_cms_db ", "root", "AlverahmaN");
        }
        return conn;
    }
}