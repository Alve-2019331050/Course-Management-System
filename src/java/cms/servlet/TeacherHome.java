package cms.servlet;

import cms.dao.Checker;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author Raha
 */
public class TeacherHome extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String user = (String) request.getSession().getAttribute("user");
        if (Checker.validateTeacher(user)){ // if user is a valid teacher, only then he/she will be accessed to see the home page
            getServletContext().getRequestDispatcher("/JSP/TeacherHome.jsp").forward(request,response);
        } else {
            response.sendRedirect("/CourseManagementSystem/AccessDenied");
        }
    }
}