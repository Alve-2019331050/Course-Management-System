package cms.servlet;

import cms.connection.DBConnection;
import cms.dao.TeacherDao;
import cms.model.Teacher;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class RegisterTeacherServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String user = (String) request.getSession().getAttribute("user");
        if (user != "admin") {
            response.sendRedirect("/CourseManagementSystem/AccessDenied");
        } else {
            getServletContext().getRequestDispatcher("/JSP/RegisterTeacher.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try ( PrintWriter out = response.getWriter()) {
            String name = request.getParameter("name");
            String dept = request.getParameter("dept");
            String email = request.getParameter("email");
            String pwd = request.getParameter("pwd");
            Teacher teacher = new Teacher(name, dept, email, pwd);
            TeacherDao tdao = new TeacherDao(DBConnection.getConnection());
            if (tdao.registerTeacher(teacher)) {
                String path = "/CourseManagementSystem/AdminHome?registrationMessage=Teacher " + name;
                response.sendRedirect(path);
            } else {
                out.print("Failed");
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(RegisterTeacherServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(RegisterTeacherServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
}
