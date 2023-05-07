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
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Noto+Sans:wght@500&family=Pacifico&family=Poppins:wght@700&display=swap" rel="stylesheet">
        <style>
            .btn:hover{
                opacity: .7;
            }
        </style>
    </head>
    <body style="background-color: #141414">
        <%@include file = "studentNavbar.jsp" %>
        <div class="container-fluid" style="width:1000px;height:130px;margin-top: 150px;border:3px solid white">
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
                                    <%
                                        cdao = new CourseDao(DBConnection.getConnection());
                                        if(cdao.exists((String)request.getSession().getAttribute("regno"),currentCourse.getDept()+currentCourse.getCode())){
                                    %>
                                    <button type="button" class="btn disabled" style="background-color:#586f7c;color:white">Enrolled</button>
                                    <%
                                        }
                                        else{
                                    %>
                                    <button type="button" class="btn text-white" data-bs-toggle="modal" data-bs-target="#confirmationModal" data-confirmbtn="button.confirm" onClick="saveEvent()" style="background-color: #04724d">Enroll now</button>
                                    <%
                                        }
                                    %>
                                    <div class="modal fade" id="confirmationModal" tabindex="-1" aria-hidden="true">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header text-bg-dark">
                                                    <h5 class="modal-title">
                                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-question-circle" viewBox="0 0 16 16">
                                                        <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
                                                        <path d="M5.255 5.786a.237.237 0 0 0 .241.247h.825c.138 0 .248-.113.266-.25.09-.656.54-1.134 1.342-1.134.686 0 1.314.343 1.314 1.168 0 .635-.374.927-.965 1.371-.673.489-1.206 1.06-1.168 1.987l.003.217a.25.25 0 0 0 .25.246h.811a.25.25 0 0 0 .25-.25v-.105c0-.718.273-.927 1.01-1.486.609-.463 1.244-.977 1.244-2.056 0-1.511-1.276-2.241-2.673-2.241-1.267 0-2.655.59-2.75 2.286zm1.557 5.763c0 .533.425.927 1.01.927.609 0 1.028-.394 1.028-.927 0-.552-.42-.94-1.029-.94-.584 0-1.009.388-1.009.94z"/>
                                                        </svg>
                                                        Confirm
                                                    </h5>
                                                    <button type="button" class="btn-close bg-light" data-bs-dismiss="modal" aria-label="Close"></button>
                                                </div>
                                                <div class="modal-body">
                                                    <h3>Do you really want to enroll in this course?</h3>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-dark confirm" data-bs-dismiss="modal" onClick="enroll()">Confirm</button>
                                                    <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Cancel</button>
                                                </div>
                                                <script>
                                                    var courseCode;
                                                    function saveEvent() {
                                                        courseCode = event.target.parentElement.parentElement.children.item(1).textContent;
                                                    }
                                                    function enroll() {
                                                        window.location.href = "CourseCatalog?course=" + courseCode;
                                                    }
                                                </script>
                                            </div>
                                        </div>
                                    </div>
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
