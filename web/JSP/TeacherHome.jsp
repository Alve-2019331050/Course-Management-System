<%-- 
    Document : TeacherHome 
    Created on : Apr 29, 2023, 1:51:03 AM 
    Author : Raha
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
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Noto+Sans:wght@500&family=Pacifico&family=Poppins:wght@700&display=swap" rel="stylesheet">
    </head>
    <body style="background-color: #141414">
        <!-- navigation bar -->
        <nav class="navbar navbar-expand-lg" style="background-color:#EEF0F2">
            <div class="container-fluid">
                <a href="#" class="navbar-brand">
                    <img src="${pageContext.request.contextPath}/images/logo.png" alt="sust logo" style="width:80px;height:80px">
                    &nbsp;&nbsp;<span style="font-family:'Pacifico', cursive;font-size:30px">
                        <span style="color:#0d21a1">Course </span><span style="color:#950101">Management </span><span style="color:#0d21a1">System</span>
                    </span>
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto">
                        <% String teacherName = (String) request.getSession().getAttribute("user"); %>
                        <li class="nav-item">
                            <a class="nav-link" href="#" id="teacher-name" style="font-family:'Noto Sans'">Teacher Name</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="./LogOut" style="font-family:'Noto Sans'">Log Out</a>
                        </li>
                        <script>
                            document.getElementById("teacher-name").textContent = "<%= teacherName %>";
                        </script>
                    </ul>
                </div>
            </div>
        </nav>
        <!--fetch course name and code from teacher table using MySQL connection-->
        <div class="container-fluid" style="margin-top: 70px">
            <p class="h1 text-white ms-4">Your Courses</p>
            <div class="row gy-3 mt-5 ms-2">
                <% 
                    PrintWriter pout = response.getWriter(); 
                    Connection con = DBConnection.getConnection(); 
                    try{ 
                        PreparedStatement ps = con.prepareStatement("select title,code,dept from course where teacher=?"); 
                        ps.setString(1, teacherName); 
                        ResultSet result = ps.executeQuery(); 
                        while(result.next()){ 
                            String dept = result.getString("dept"); 
                            String code = result.getString("code"); 
                            String course_code = dept + code; 
                %>
                <!-- card showing assigned courses -->
                <div class="col-lg-4">
                    <div class="card">
                        <div class="card-body">
                            <!-- course title -->
                            <h5 class="card-title"><%= result.getString("title") %></h5>
                            <!-- course subtitle -->
                            <h6 class="card-subtitle mb-2 text-muted"><%=course_code%></h6>
                            <div class="card-footer" id="card-footer">
                                <!-- button to go to modal -->
                                <a type="button" class="btn btn-outline-dark" data-bs-toggle="modal" data-bs-target="#enrolledStudentModal" onClick="getCourseCode()">Enrolled Student</a>
                                <!-- get course code written on the card when enrolled student button clicked -->
                                <script>
                                    function getCourseCode() {
                                        var courseCode = event.target.parentElement.parentElement.children.item(1).textContent;
                                        const frame = document.createElement("iframe");
                                        frame.setAttribute("src", "${pageContext.request.contextPath}/JSP/enrolledStudentTable.jsp?param=" + courseCode);
                                        frame.setAttribute("width", "750px");
                                        var target = document.getElementsByClassName("modal-body")[0];
                                        target.innerHTML = "";
                                        target.appendChild(frame);
                                    }
                                </script>
                                <!-- modal to show enrolled student's list -->
                                <div class="modal fade" id="enrolledStudentModal" tabindex="-1" aria-labelledby="enrolledStudentModalLabel" aria-hidden="true">
                                    <div class="modal-dialog modal-lg">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="enrolledStudentModalLabel">
                                                    Student Information
                                                </h5>
                                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                            </div>
                                            <div class="modal-body"></div>
                                            <div class="modal-footer">
                                                <button
                                                    type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">Close</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
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
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    </body>
</html>
