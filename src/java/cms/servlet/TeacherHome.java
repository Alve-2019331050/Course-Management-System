/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package cms.servlet;

import cms.dao.Checker;
import java.io.IOException;
import java.io.PrintWriter;
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
        if (Checker.validateTeacher(user)){
            getServletContext().getRequestDispatcher("/JSP/TeacherHome.jsp").forward(request,response);
        } else {
            response.sendRedirect("/CourseManagementSystem/AccessDenied");
        }
    }

}