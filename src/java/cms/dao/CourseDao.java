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

/**
 * This is a Database Object class responsible for handling course related Database Object
 */
public class CourseDao {
    private final Connection connection;
    private String query;
    private PreparedStatement pst;
    private ResultSet rs;

    public CourseDao(Connection connection) {
        this.connection = connection;
    }
    
    /**
     * create a new course
     * @param course a course object
     * @return true if successful, false otherwise
     */
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
    
    /**
     * reassign/update a course teacher
     * @param course a course object
     * @param teacher a teacher object
     * @return true-if successful, false-otherwise
     */
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
    
    /**
     * get all the current courses offered by deptName
     * @param deptName a string containing department name
     * @return list of course
     */
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
    
    /**
     * get all the available course
     * @return list of course
     */
    public List<Course> getAllCourse(){
        List<Course> courses = new ArrayList<Course>();
        try {
            query = "select * from course";
            pst = this.connection.prepareStatement(query);
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
    
    /**
     * get single course specified by queryCourse
     * @param queryCourse a string containing department name and course code
     * @return single course if exists, empty list otherwise
     */
    public List<Course> getSingleCourse(String queryCourse){
        String deptName = queryCourse.substring(0, 3);
        String queryCode = queryCourse.substring(4);
        List<Course> courses = new ArrayList<Course>();
        try {
            query = "select * from course where dept = ? and code = ?";
            pst = this.connection.prepareStatement(query);
            pst.setString(1, deptName);
            pst.setString(2, queryCode);
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
    
    /**
     * enroll a new student in a course in the takes table
     * @param name student's name
     * @param regno student's registration number
     * @param email student's email
     * @param course a string containing department name and course code
     */
    public void enroll(String name,String regno,String email,String course){
        try {
            String dept = course.substring(0, 3);
            String code = course.substring(4);
            String course_code = dept+code;
            query = "insert into takes(name,Regno,email,department,course_code) values(?,?,?,?,?)";
            pst = this.connection.prepareStatement(query);
            pst.setString(1, name);
            pst.setString(2, regno);
            pst.setString(3, email);
            pst.setString(4, dept);
            pst.setString(5, course_code);
            pst.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(CourseDao.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    /**
     * @param regno student's registration number
     * @param course course code
     * @return true if student with the given registration number takes the given course, false otherwise
     */
    public boolean exists(String regno,String course){
        try {
            query = "select * from takes where Regno=? and course_code=?";
            pst = this.connection.prepareStatement(query);
            pst.setString(1, regno);
            pst.setString(2, course);
            rs = pst.executeQuery();
            if(rs.next()){
                return true;
            }
            else{
                return false;
            }
        } catch (SQLException ex) {
            Logger.getLogger(CourseDao.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }
}
