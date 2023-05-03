/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package cms.servlet;

import cms.connection.DBConnection;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.*;

/**
 *
 * @author Raha
 */
public class LogIn extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/JSP/Login.jsp").forward(request,response);
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            PrintWriter out = response.getWriter();
            Connection con = DBConnection.getConnection();
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            PreparedStatement ps = con.prepareStatement("select email,role from user where email=? and password=?");
            ps.setString(1, email);
            ps.setString(2, password);
            ResultSet result = ps.executeQuery();
            
            if(result.next()){
                String emailDB = result.getString("email");
                String roleDB = result.getString("role");
                if(roleDB.equals("admin")){
                    request.getSession().setAttribute("user","admin");
                    response.sendRedirect("/CourseManagementSystem/AdminHome");
                }else if(roleDB.equals("teacher")){
                    ps = con.prepareStatement("select name from teacher where email=?");
                    ps.setString(1,email);
                    result = ps.executeQuery();
                    if(result.next()) {
                        String user = result.getString("name");
                        //out.println("Successfully Logged In as Teacher: " + teacherName);
                        request.getSession().setAttribute("user", user); // set the teacherName as a session attribute
                        response.sendRedirect("/CourseManagementSystem/TeacherHome"); // redirect to the TeacherHome JSP file
                    } else {
                        out.println("Failed to get teacher's name");
                    }
                    //response.sendRedirect("/CourseManagementSystem/TeacherHome");
                }else{
                    ps = con.prepareStatement("select name from student where email=?");
                    ps.setString(1,email);
                    result = ps.executeQuery();
                    if(result.next()) {
                        String user = result.getString("name");
                        //out.println("Successfully Logged In as Student: " + studentName);
                        request.getSession().setAttribute("user", user); // set the studentName as a session attribute
                        response.sendRedirect("/CourseManagementSystem/StudentDashboard"); // redirect to the StudentDashboard JSP file
                    } else {
                        out.println("Failed to get student's name");
                    }
                }
                
            }else{
                request.setAttribute("errorMessage", "Please provide correct information again!");
                getServletContext().getRequestDispatcher("/JSP/Login.jsp").forward(request,response);
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(LogIn.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(LogIn.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    
}
