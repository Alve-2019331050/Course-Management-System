package cms.dao;

import cms.model.Course;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class CourseDao {
    private final Connection connection;
    private String query;
    private PreparedStatement pst;
    private ResultSet rs;

    public CourseDao(Connection connection) {
        this.connection = connection;
    }
    
    public boolean createCourse(Course course){
        try {
            query = "insert into course(title,code,dept,teacher) Values(?,?,?,?)";
            pst = this.connection.prepareStatement(query);
            pst.setString(1, course.getTitle());
            pst.setString(2, course.getCode());
            pst.setString(3, course.getDept());
            pst.setString(4, course.getTeacher());
            pst.executeUpdate();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(CourseDao.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }
    
    public boolean updateTeacher(String course,String teacher){
        try {
            String dept = course.substring(0,3);
            String code = course.substring(4);
            query = "update course set teacher = ? where dept = ? and code = ?";
            pst = this.connection.prepareStatement(query);
            pst.setString(1, teacher);
            pst.setString(2, dept);
            pst.setString(3, code);
            pst.executeUpdate();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(CourseDao.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }
    
    public List<Course> getCourse(String deptName){
        List<Course> courses = new ArrayList<Course>();
        try {
            query = "select * from course where dept = ?";
            pst = this.connection.prepareStatement(query);
            pst.setString(1, deptName);
            rs = pst.executeQuery();
            while(rs.next()){
                String title = rs.getString(2);
                String code = rs.getString(3);
                String dept = rs.getString(4);
                String teacher = rs.getString(5);
                Course course = new Course(title,code,dept,teacher);
                courses.add(course);
            }
        } catch (SQLException ex) {
            Logger.getLogger(CourseDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return courses;
    }
}
