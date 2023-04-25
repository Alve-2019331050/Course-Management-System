package cms.servlet;

import cms.connection.DBConnection;
import cms.dao.StudentDao;
import cms.model.Student;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ASUS
 */
public class RegisterStudentServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        getServletContext().getRequestDispatcher("/JSP/RegisterStudent.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try ( PrintWriter out = response.getWriter()) {
            String name = request.getParameter("name");
            String dept = request.getParameter("dept");
            String regno = request.getParameter("regno");
            String email = request.getParameter("email");
            String pwd = request.getParameter("pwd");
            Student student = new Student(name, dept, regno,email, pwd);
            StudentDao sdao = new StudentDao(DBConnection.getConnection());
            if (sdao.registerStudent(student)) {
                out.print("Success");
            }
            else{
                out.print("Failed");
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(RegisterStudentServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(RegisterStudentServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
