<%-- 
    Document   : TeacherHome
    Created on : Apr 29, 2023, 1:51:03 AM
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
        <title>Teacher Home Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    </head>
    <body class="bg-dark">
        <!-- navigation bar -->
        <nav class="navbar navbar-expand-sm  bg-light fixed-top">
            <div class="container-fluid">
                <a href="#" class="navbar-brand">
                    <img src="${pageContext.request.contextPath}/images/logo.png" alt="sust logo" style="width:50px;height:50px">
                    &nbsp;&nbsp;Course Management System
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto">
                        <% String teacherName = (String) request.getSession().getAttribute("teacherName"); %>
                        <li class="nav-item"><a class="nav-link" href="#" id="teacher-name">Teacher Name</a></li>
                        <script>
                    document.getElementById("teacher-name").textContent = '<%= teacherName %>';
                        </script>

                        <li class="nav-item"><a class="nav-link" href="/CourseManagementSystem/LogIn">Log Out</li>
                    </ul>
                </div>
            </div>
        </nav>
        <!--fetch course name and code from teacher table using MySQL connection-->
        <div class="row" style="margin-top: 180px;">
            <%
                PrintWriter pout = response.getWriter();
                Connection con = DBConnection.getConnection();
                try{
                    PreparedStatement ps = con.prepareStatement("select title,code,dept from course where teacher=?");
                    ps.setString(1, teacherName);
                    ResultSet result = ps.executeQuery();
                    while(result.next()){
                        pout.println(result.getString("title"));
            %>
            <div class="col-lg-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title"><%= result.getString("title") %></h5>
                        <h6 class="card-subtitle mb-2 text-muted"><%= result.getString("dept") %> <%= result.getString("code") %></h6>
                        <div class="card-footer" id="card-footer">Card Footer</div>
                    </div>
                </div>
            </div>
            <%
                    }
                } catch (SQLException ex) {
                  ex.printStackTrace();
                } 
            %>
        </div>


        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    </body>
</html>
