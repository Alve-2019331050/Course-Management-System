package cms.servlet;

import cms.dao.Checker;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class CourseCatalog extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String user = (String) request.getSession().getAttribute("user");
        if (Checker.validateStudent(user)) {
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
