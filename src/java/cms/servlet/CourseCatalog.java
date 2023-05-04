package cms.servlet;

import cms.connection.DBConnection;
import cms.dao.Checker;
import cms.dao.CourseDao;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class CourseCatalog extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String user = (String) request.getSession().getAttribute("user");
        String regno = (String)request.getSession().getAttribute("regno");
        String email = (String)request.getSession().getAttribute("email");
        if (Checker.validateStudent(user)) {
            String course = request.getParameter("course");
            if(course!=null){
                try {
                    CourseDao cdao = new CourseDao(DBConnection.getConnection());
                    cdao.enroll(user,regno,email,course);
                } catch (ClassNotFoundException ex) {
                    Logger.getLogger(CourseCatalog.class.getName()).log(Level.SEVERE, null, ex);
                } catch (SQLException ex) {
                    Logger.getLogger(CourseCatalog.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
            getServletContext().getRequestDispatcher("/JSP/CourseCatalog.jsp").forward(request, response);
        } else {
            response.sendRedirect("/CourseManagementSystem/AccessDenied");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String dept = request.getParameter("dept");
        String course = request.getParameter("course");
        request.setAttribute("dept", dept);
        request.setAttribute("course",course);
        getServletContext().getRequestDispatcher("/JSP/CourseCatalog.jsp").forward(request, response);
    }
    
}
