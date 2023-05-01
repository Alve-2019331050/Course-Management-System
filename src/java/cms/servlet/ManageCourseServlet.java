package cms.servlet;

import cms.connection.DBConnection;
import cms.dao.CourseDao;
import cms.model.Course;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ManageCourseServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/JSP/ManageCourse.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String query = request.getQueryString();
        if (query != null) {
            if (query.equals("create")) {
                try {
                    String title = request.getParameter("title");
                    String code = request.getParameter("code");
                    String dept = request.getParameter("dept");
                    String teacher = request.getParameter("teacher");
                    Course course = new Course(title, code, dept, teacher);
                    CourseDao cdao = new CourseDao(DBConnection.getConnection());
                    if(cdao.createCourse(course)){
                        request.setAttribute("Success", "Course created Successfully");
                        getServletContext().getRequestDispatcher("/JSP/ManageCourse.jsp").forward(request, response);       
                    }
                    else{
                        request.setAttribute("Failed", "Failed to create course");
                        getServletContext().getRequestDispatcher("/JSP/ManageCourse.jsp").forward(request, response);
                    }
                } catch (ClassNotFoundException ex) {
                    Logger.getLogger(ManageCourseServlet.class.getName()).log(Level.SEVERE, null, ex);
                } catch (SQLException ex) {
                    Logger.getLogger(ManageCourseServlet.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
            else if(query.equals("assign")){
                try {
                    String course = request.getParameter("course");
                    String teacher = request.getParameter("teacher");
                    CourseDao cdao = new CourseDao(DBConnection.getConnection());
                    if(cdao.updateTeacher(course,teacher)){
                        request.setAttribute("Success", "Teacher updated Successfully");
                        getServletContext().getRequestDispatcher("/JSP/ManageCourse.jsp").forward(request, response);   
                    }
                    else{
                        request.setAttribute("Failed", "Failed to update teacher");
                        getServletContext().getRequestDispatcher("/JSP/ManageCourse.jsp").forward(request, response);
                    }
                } catch (ClassNotFoundException ex) {
                    Logger.getLogger(ManageCourseServlet.class.getName()).log(Level.SEVERE, null, ex);
                } catch (SQLException ex) {
                    Logger.getLogger(ManageCourseServlet.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
