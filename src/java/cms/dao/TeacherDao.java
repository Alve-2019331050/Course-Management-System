package cms.dao;

import cms.model.Teacher;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class TeacherDao {
    private final Connection connection;
    private String query;
    private PreparedStatement pst;

    public TeacherDao(Connection connection) {
        this.connection = connection;
    }
    
    public boolean registerTeacher(Teacher teacher){
        try{
            query = "insert into user(email,password,role) values(?,?,?)";
            pst = this.connection.prepareStatement(query);
            pst.setString(1,teacher.getEmail());
            pst.setString(2,teacher.getPwd());
            pst.setString(3,"teacher");
            pst.executeUpdate();
            query = "insert into teacher(name,dept,email) values(?,?,?)";
            pst = this.connection.prepareStatement(query);
            pst.setString(1,teacher.getName());
            pst.setString(2,teacher.getDept());
            pst.setString(3,teacher.getEmail());
            pst.executeUpdate();
            return true;
        }catch(SQLException e){
            e.printStackTrace();
            return false;
        }
    }
}
