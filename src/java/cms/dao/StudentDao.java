package cms.dao;

import cms.model.Student;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * This is a Database Object class responsible for handling student related Database Object
 */
public class StudentDao {
    private final Connection connection;
    private String query;
    private PreparedStatement pst;
    
    public StudentDao(Connection connection) {
        this.connection = connection;
    }
    
    /**
     * register a new student in the user and student table
     * @param student a student object
     * @return true if successful, false otherwise
     */
    public boolean registerStudent(Student student){
        try{
            query = "insert into user(email,password,role) values(?,?,?)";
            pst = this.connection.prepareStatement(query);
            pst.setString(1, student.getEmail());
            pst.setString(2, student.getPwd());
            pst.setString(3,"student");
            pst.executeUpdate();
            query = "insert into student(name,dept,regno,email) values(?,?,?,?)";
            pst = this.connection.prepareStatement(query);
            pst.setString(1, student.getName());
            pst.setString(2, student.getDept());
            pst.setString(3, student.getRegno());
            pst.setString(4, student.getEmail());
            pst.executeUpdate();
            return true;
        }catch(SQLException e){
            e.printStackTrace();
            return false;
        }
    }
}
