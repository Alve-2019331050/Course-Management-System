<%-- 
    Document   : StudentDashboard
    Created on : May 2, 2023, 9:20:34 PM
    Author     : Raha
--%>

<%@ page import="cms.connection.DBConnection" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.PrintWriter" %>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Student Dashboard</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    </head>
    <body class="bg-dark">
        <%@include file = "studentNavbar.jsp" %>
        
        <!-- fetch enrolled courses -->
        <div class="container-fluid" style="margin-top: 140px;">
            <p class="h1 text-white ms-4">Enrolled Courses</p>
            <div class="row gy-3 mt-5 ms-2">
                <!-- MySQL commands to get data from database -->
                <%
                    PrintWriter pout = response.getWriter();
                    Connection con = DBConnection.getConnection();
                    try{
                        // fetch enrolled course of student named studentName from database
                        PreparedStatement ps = con.prepareStatement("select course_code from takes where name=?");
                        ps.setString(1, studentName);
                        ResultSet result = ps.executeQuery();
            
                        while(result.next()){
                            String course_code = result.getString("course_code");
                        
                            String dept = course_code.substring(0,3);
                            String code = course_code.substring(3,6);
                        
                            // fetch course title from course table 
                            PreparedStatement ps1 = con.prepareStatement("select title from course where code=? and dept=?");
                            ps1.setString(1,code);
                            ps1.setString(2,dept);
                            ResultSet result1 = ps1.executeQuery();
                        
                            while(result1.next()){
                                String title = result1.getString("title");
                %>

                <!-- card to show enrolled courses -->
                <div class="col-lg-4">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title"><%= course_code %> : <%= title %></h5> 
                        </div>
                    </div>
                </div>

                <%
                            }
                        }
                    } catch (SQLException ex) {
                      ex.printStackTrace();
                    }
                %>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    </body>
</html>
