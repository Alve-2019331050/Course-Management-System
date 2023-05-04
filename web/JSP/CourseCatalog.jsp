<%@page import="cms.connection.DBConnection"%>
<%@ page import="java.sql.*" %>
<%@page import="cms.dao.CourseDao"%>
<%@page import="cms.model.Course"%>
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Course Catalog</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    </head>
    <body class="bg-dark">
        <%@include file = "studentNavbar.jsp" %>
        <div class="container-fluid" style="width:1000px;height:130px;margin-top: 120px;border:3px solid white">
            <p class="h4 text-light mt-2" style="margin-bottom: 15px">
                <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-filter" viewBox="0 0 16 16">
                <path d="M6 10.5a.5.5 0 0 1 .5-.5h3a.5.5 0 0 1 0 1h-3a.5.5 0 0 1-.5-.5zm-2-3a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7a.5.5 0 0 1-.5-.5zm-2-3a.5.5 0 0 1 .5-.5h11a.5.5 0 0 1 0 1h-11a.5.5 0 0 1-.5-.5z"/>
                </svg>
                Filter Course
            </p>
            <form action="./CourseCatalog" method="post">
                <div class="row ms-2 gx-4">
                    <div class="col">
                        <div class="input-group">
                            <span class="input-group-text">Department:</span>
                            <input class="form-control" placeholder="Select Department" list="depts" name="dept">
                            <datalist id="depts">
                                <option value="CSE">
                                <option value="EEE">
                                <option value="SWE">
                                <option value="FES">
                                <option value="ARC">
                                <option value="CEP">
                                <option value="CEE">
                                <option value="FET">
                                <option value="IPE">
                                <option value="MEE">
                                <option value="PME">
                                <option value="BMB">
                                <option value="GEB">
                                <option value="BUS">
                                <option value="CHE">
                                <option value="GEE">
                                <option value="MAT">
                                <option value="PHY">
                                <option value="STA">
                                <option value="OCG">
                                <option value="ANP">
                                <option value="ECO">
                                <option value="PAD">
                                <option value="BNG">
                                <option value="ENG">
                                <option value="PSS">
                                <option value="SCW">
                                <option value="SOC">
                            </datalist>
                        </div>
                    </div>
                    <div class="col">
                        <div class="input-group">
                            <span class="input-group-text">Course:</span>
                            <input class="form-control" placeholder="Select Course" list="courses" name="course">
                            <datalist id="courses">
                                <%
                                    try{
                                        Connection connection = DBConnection.getConnection();
                                        String query = "select * from course";
                                        Statement st = connection.createStatement();
                                        ResultSet rs = st.executeQuery(query);
                                        while(rs.next()){
                                %>
                                <option value="<%=rs.getString(4)%> <%=rs.getString(3)%>">
                                    <%
                                            }
                                        }catch(Exception e){
                                           e.printStackTrace();
                                        }
                                    %>
                            </datalist>
                        </div>
                    </div>
                    <div class="col-lg-2">
                        <button type="submit" class="btn btn-light">Search</button>
                    </div>
                </div>
            </form>
        </div>
        <div class="course-body container-fluid" style="margin-top: 40px">
            <%
                String dept = (String) request.getAttribute("dept");
                String course = (String) request.getAttribute("course");
                CourseDao cdao = new CourseDao(DBConnection.getConnection());
                List<Course> courses;
                if(course!=null && course!=""){
                    courses = cdao.getSingleCourse(course);
                }
                else if(dept!=null && dept!=""){
                    courses = cdao.getCourse(dept);
                }
                else{
                    courses = cdao.getAllCourse();
                }
                int count = courses.size();
            %>
            <p class="h1 text-light" style="margin-left: 70px"><%=count%> results</p>
            <div class="mx-5 my-3">
                <div class="row gy-3">
                    <%
                        for(int i=0;i<count;i++){
                            Course currentCourse = courses.get(i);
                    %>
                    <div class="col-lg-4">
                        <div class="card">
                            <div class="card-body">
                                <p class="h5 card-title" style="height:60px"><%= currentCourse.getTitle() %></p>
                                <p class="h6 card-subtitle mb-2"><%= currentCourse.getDept() %> <%= currentCourse.getCode() %></p>
                                <div class="card-footer" id="card-footer">
                                    <p>Taken By <strong><%= currentCourse.getTeacher()%></strong></p>
                                    <button type="button" class="btn btn-outline-dark">Enroll now</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <%
                        }
                    %>
                </div>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    </body>
</html>
