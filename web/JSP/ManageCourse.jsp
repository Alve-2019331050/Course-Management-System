<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="cms.connection.DBConnection"%>
<%@page import="cms.dao.CourseDao"%>
<%@page import="cms.model.Course"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manage Course</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Noto+Sans:wght@500&family=Pacifico&family=Poppins:wght@700&display=swap" rel="stylesheet">
    </head>
    <body style="background-color:#bfc1e0;">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
        <%@include file="navbar.jsp"%>
        <%
            String success = (String) request.getAttribute("Success");
            String failed = (String) request.getAttribute("Failed");
            if(success!=null){
        %>
        <div class="alert alert-success alert-dismissible">
            <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
            <strong><%=success%></strong>
        </div>
        <%
            }
            if(failed!=null){
        %>
        <div class="alert alert-danger alert-dismissible">
            <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
            <strong><%=failed%></strong>
        </div>
        <%
}
        %>
        <div class="hstack gap-2 align-items-start">
            <div class="accordion my-5" id="course-accordion" style="width:900px;margin-left: 100px">
                <h1 class="mb-4 ms-3">Courses</h1>
                <div class="accordion-item" style="background-color:#EEF0F2">
                    <%
                        CourseDao cdao = new CourseDao(DBConnection.getConnection());
                        List<Course> courses = cdao.getCourse("CSE");
                        int count = courses.size();
                    %>
                    <h2 class="accordion-header" id="cse-heading">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#cse-body" aria-expanded="true" aria-controls="cse-body">
                            Computer Science & Engineering (<%=count%>)
                        </button>
                    </h2>
                    <div class="accordion-collapse collapse" id="cse-body" area-labelledby="cse-heading" data-bs-parent="course-accordion">
                        <div class="container-fluid accordion-body">
                            <div class="row gy-3">
                                <%
                                    for(int i=0;i<count;i++){
                                        Course course = courses.get(i);
                                %>
                                <div class="col-lg-4">
                                    <div class="card" style="background-color: #c1c8e8">
                                        <div class="card-body">
                                            <p class="h5 card-title" style="height:60px"><%= course.getTitle() %></p>
                                            <p class="h6 card-subtitle mb-2"><%= course.getDept() %> <%= course.getCode() %></p>
                                            <div class="card-footer" id="card-footer">Taken By <strong><%= course.getTeacher()%></strong></div>
                                        </div>
                                    </div>
                                </div>
                                <%
                                    }
                                %>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="accordion-item">
                    <%
                        cdao = new CourseDao(DBConnection.getConnection());
                        courses = cdao.getCourse("EEE");
                        count = courses.size();
                    %>
                    <h2 class="accordion-header" id="eee-heading">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#eee-body" aria-expanded="true" aria-controls="eee-body">
                            Electrical & Electronic Engineering (<%=count%>)
                        </button>
                    </h2>
                    <div class="accordion-collapse collapse" id="eee-body" area-labelledby="eee-heading" data-bs-parent="course-accordion">
                        <div class="container-fluid accordion-body">
                            <div class="row gy-3">
                                <%
                                    for(int i=0;i<count;i++){
                                        Course course = courses.get(i);
                                %>
                                <div class="col-lg-4">
                                    <div class="card" style="background-color: #c1c8e8">
                                        <div class="card-body">
                                            <p class="h5 card-title" style="height:60px"><%= course.getTitle() %></p>
                                            <p class="h6 card-subtitle mb-2"><%= course.getDept() %> <%= course.getCode() %></p>
                                            <div class="card-footer" id="card-footer">Taken By <strong><%= course.getTeacher()%></strong></div>
                                        </div>
                                    </div>
                                </div>
                                <%
                                    }
                                %>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="accordion-item">
                    <%
                        cdao = new CourseDao(DBConnection.getConnection());
                        courses = cdao.getCourse("SWE");
                        count = courses.size();
                    %>
                    <h2 class="accordion-header" id="swe-heading">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#swe-body" aria-expanded="true" aria-controls="swe-body">
                            Software Engineering (<%=count%>)
                        </button>
                    </h2>
                    <div class="accordion-collapse collapse" id="swe-body" area-labelledby="swe-heading" data-bs-parent="course-accordion">
                        <div class="container-fluid accordion-body">
                            <div class="row gy-3">
                                <%
                                    for(int i=0;i<count;i++){
                                        Course course = courses.get(i);
                                %>
                                <div class="col-lg-4">
                                    <div class="card" style="background-color: #c1c8e8">
                                        <div class="card-body">
                                            <p class="h5 card-title" style="height:60px"><%= course.getTitle() %></p>
                                            <p class="h6 card-subtitle mb-2"><%= course.getDept() %> <%= course.getCode() %></p>
                                            <div class="card-footer" id="card-footer">Taken By <strong><%= course.getTeacher()%></strong></div>
                                        </div>
                                    </div>
                                </div>
                                <%
                                    }
                                %>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="accordion-item">
                    <%
                        cdao = new CourseDao(DBConnection.getConnection());
                        courses = cdao.getCourse("FES");
                        count = courses.size();
                    %>
                    <h2 class="accordion-header" id="fes-heading">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#fes-body" aria-expanded="true" aria-controls="fes-body">
                            Forestry & Environmental Science (<%=count%>)
                        </button>
                    </h2>
                    <div class="accordion-collapse collapse" id="fes-body" area-labelledby="fes-heading" data-bs-parent="course-accordion">
                        <div class="container-fluid accordion-body">
                            <div class="row gy-3">
                                <%
                                    for(int i=0;i<count;i++){
                                        Course course = courses.get(i);
                                %>
                                <div class="col-lg-4">
                                    <div class="card" style="background-color: #c1c8e8">
                                        <div class="card-body">
                                            <p class="h5 card-title" style="height:60px"><%= course.getTitle() %></p>
                                            <p class="h6 card-subtitle mb-2"><%= course.getDept() %> <%= course.getCode() %></p>
                                            <div class="card-footer" id="card-footer">Taken By <strong><%= course.getTeacher()%></strong></div>
                                        </div>
                                    </div>
                                </div>
                                <%
                                    }
                                %>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="accordion-item">
                    <%
                        cdao = new CourseDao(DBConnection.getConnection());
                        courses = cdao.getCourse("ARC");
                        count = courses.size();
                    %>
                    <h2 class="accordion-header" id="arc-heading">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#arc-body" aria-expanded="true" aria-controls="arc-body">
                            Architecture (<%=count%>)
                        </button>
                    </h2>
                    <div class="accordion-collapse collapse" id="arc-body" area-labelledby="arc-heading" data-bs-parent="course-accordion">
                        <div class="container-fluid accordion-body">
                            <div class="row gy-3">
                                <%
                                    for(int i=0;i<count;i++){
                                        Course course = courses.get(i);
                                %>
                                <div class="col-lg-4">
                                    <div class="card" style="background-color: #c1c8e8">
                                        <div class="card-body">
                                            <p class="h5 card-title" style="height:60px"><%= course.getTitle() %></p>
                                            <p class="h6 card-subtitle mb-2"><%= course.getDept() %> <%= course.getCode() %></p>
                                            <div class="card-footer" id="card-footer">Taken By <strong><%= course.getTeacher()%></strong></div>
                                        </div>
                                    </div>
                                </div>
                                <%
                                    }
                                %>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="accordion-item">
                    <%
                        cdao = new CourseDao(DBConnection.getConnection());
                        courses = cdao.getCourse("CEP");
                        count = courses.size();
                    %>
                    <h2 class="accordion-header" id="cep-heading">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#cep-body" aria-expanded="true" aria-controls="cep-body">
                            Chemical Engineering & Polymer Science (<%=count%>)
                        </button>
                    </h2>
                    <div class="accordion-collapse collapse" id="cep-body" area-labelledby="cep-heading" data-bs-parent="course-accordion">
                        <div class="container-fluid accordion-body">
                            <div class="row gy-3">
                                <%
                                    for(int i=0;i<count;i++){
                                        Course course = courses.get(i);
                                %>
                                <div class="col-lg-4">
                                    <div class="card" style="background-color: #c1c8e8">
                                        <div class="card-body">
                                            <p class="h5 card-title" style="height:60px"><%= course.getTitle() %></p>
                                            <p class="h6 card-subtitle mb-2"><%= course.getDept() %> <%= course.getCode() %></p>
                                            <div class="card-footer" id="card-footer">Taken By <strong><%= course.getTeacher()%></strong></div>
                                        </div>
                                    </div>
                                </div>
                                <%
                                    }
                                %>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="accordion-item">
                    <%
                        cdao = new CourseDao(DBConnection.getConnection());
                        courses = cdao.getCourse("CEE");
                        count = courses.size();
                    %>
                    <h2 class="accordion-header" id="cee-heading">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#cee-body" aria-expanded="true" aria-controls="cee-body">
                            Civil & Environmental Engineering (<%=count%>)
                        </button>
                    </h2>
                    <div class="accordion-collapse collapse" id="cee-body" area-labelledby="cee-heading" data-bs-parent="course-accordion">
                        <div class="container-fluid accordion-body">
                            <div class="row gy-3">
                                <%
                                    for(int i=0;i<count;i++){
                                        Course course = courses.get(i);
                                %>
                                <div class="col-lg-4">
                                    <div class="card" style="background-color: #c1c8e8">
                                        <div class="card-body">
                                            <p class="h5 card-title" style="height:60px"><%= course.getTitle() %></p>
                                            <p class="h6 card-subtitle mb-2"><%= course.getDept() %> <%= course.getCode() %></p>
                                            <div class="card-footer" id="card-footer">Taken By <strong><%= course.getTeacher()%></strong></div>
                                        </div>
                                    </div>
                                </div>
                                <%
                                    }
                                %>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="accordion-item">
                    <%
                        cdao = new CourseDao(DBConnection.getConnection());
                        courses = cdao.getCourse("FET");
                        count = courses.size();
                    %>
                    <h2 class="accordion-header" id="fet-heading">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#fet-body" aria-expanded="true" aria-controls="fet-body">
                            Food Engineering & Tea Technology (<%=count%>)
                        </button>
                    </h2>
                    <div class="accordion-collapse collapse" id="fet-body" area-labelledby="fet-heading" data-bs-parent="course-accordion">
                        <div class="container-fluid accordion-body">
                            <div class="row gy-3">
                                <%
                                    for(int i=0;i<count;i++){
                                        Course course = courses.get(i);
                                %>
                                <div class="col-lg-4">
                                    <div class="card" style="background-color: #c1c8e8">
                                        <div class="card-body">
                                            <p class="h5 card-title" style="height:60px"><%= course.getTitle() %></p>
                                            <p class="h6 card-subtitle mb-2"><%= course.getDept() %> <%= course.getCode() %></p>
                                            <div class="card-footer" id="card-footer">Taken By <strong><%= course.getTeacher()%></strong></div>
                                        </div>
                                    </div>
                                </div>
                                <%
                                    }
                                %>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="accordion-item">
                    <%
                        cdao = new CourseDao(DBConnection.getConnection());
                        courses = cdao.getCourse("IPE");
                        count = courses.size();
                    %>
                    <h2 class="accordion-header" id="ipe-heading">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#ipe-body" aria-expanded="true" aria-controls="ipe-body">
                            Industrial & Production Engineering (<%=count%>)
                        </button>
                    </h2>
                    <div class="accordion-collapse collapse" id="ipe-body" area-labelledby="ipe-heading" data-bs-parent="course-accordion">
                        <div class="container-fluid accordion-body">
                            <div class="row gy-3">
                                <%
                                    for(int i=0;i<count;i++){
                                        Course course = courses.get(i);
                                %>
                                <div class="col-lg-4">
                                    <div class="card" style="background-color: #c1c8e8">
                                        <div class="card-body">
                                            <p class="h5 card-title" style="height:60px"><%= course.getTitle() %></p>
                                            <p class="h6 card-subtitle mb-2"><%= course.getDept() %> <%= course.getCode() %></p>
                                            <div class="card-footer" id="card-footer">Taken By <strong><%= course.getTeacher()%></strong></div>
                                        </div>
                                    </div>
                                </div>
                                <%
                                    }
                                %>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="accordion-item">
                    <%
                        cdao = new CourseDao(DBConnection.getConnection());
                        courses = cdao.getCourse("MEE");
                        count = courses.size();
                    %>
                    <h2 class="accordion-header" id="mee-heading">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#mee-body" aria-expanded="true" aria-controls="mee-body">
                            Mechanical Engineering (<%=count%>)
                        </button>
                    </h2>
                    <div class="accordion-collapse collapse" id="mee-body" area-labelledby="mee-heading" data-bs-parent="course-accordion">
                        <div class="container-fluid accordion-body">
                            <div class="row gy-3">
                                <%
                                    for(int i=0;i<count;i++){
                                        Course course = courses.get(i);
                                %>
                                <div class="col-lg-4">
                                    <div class="card" style="background-color: #c1c8e8">
                                        <div class="card-body">
                                            <p class="h5 card-title" style="height:60px"><%= course.getTitle() %></p>
                                            <p class="h6 card-subtitle mb-2"><%= course.getDept() %> <%= course.getCode() %></p>
                                            <div class="card-footer" id="card-footer">Taken By <strong><%= course.getTeacher()%></strong></div>
                                        </div>
                                    </div>
                                </div>
                                <%
                                    }
                                %>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="accordion-item">
                    <%
                        cdao = new CourseDao(DBConnection.getConnection());
                        courses = cdao.getCourse("PME");
                        count = courses.size();
                    %>
                    <h2 class="accordion-header" id="pme-heading">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#pme-body" aria-expanded="true" aria-controls="pme-body">
                            Petroleum and Mining Engineering (<%=count%>)
                        </button>
                    </h2>
                    <div class="accordion-collapse collapse" id="pme-body" area-labelledby="pme-heading" data-bs-parent="course-accordion">
                        <div class="container-fluid accordion-body">
                            <div class="row gy-3">
                                <%
                                    for(int i=0;i<count;i++){
                                        Course course = courses.get(i);
                                %>
                                <div class="col-lg-4">
                                    <div class="card" style="background-color: #c1c8e8">
                                        <div class="card-body">
                                            <p class="h5 card-title" style="height:60px"><%= course.getTitle() %></p>
                                            <p class="h6 card-subtitle mb-2"><%= course.getDept() %> <%= course.getCode() %></p>
                                            <div class="card-footer" id="card-footer">Taken By <strong><%= course.getTeacher()%></strong></div>
                                        </div>
                                    </div>
                                </div>
                                <%
                                    }
                                %>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="accordion-item">
                    <%
                        cdao = new CourseDao(DBConnection.getConnection());
                        courses = cdao.getCourse("BMB");
                        count = courses.size();
                    %>
                    <h2 class="accordion-header" id="bmb-heading">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#bmb-body" aria-expanded="true" aria-controls="bmb-body">
                            Biochemistry and Molecular Biology (<%=count%>)
                        </button>
                    </h2>
                    <div class="accordion-collapse collapse" id="bmb-body" area-labelledby="bmb-heading" data-bs-parent="course-accordion">
                        <div class="container-fluid accordion-body">
                            <div class="row gy-3">
                                <%
                                    for(int i=0;i<count;i++){
                                        Course course = courses.get(i);
                                %>
                                <div class="col-lg-4">
                                    <div class="card" style="background-color: #c1c8e8">
                                        <div class="card-body">
                                            <p class="h5 card-title" style="height:60px"><%= course.getTitle() %></p>
                                            <p class="h6 card-subtitle mb-2"><%= course.getDept() %> <%= course.getCode() %></p>
                                            <div class="card-footer" id="card-footer">Taken By <strong><%= course.getTeacher()%></strong></div>
                                        </div>
                                    </div>
                                </div>
                                <%
                                    }
                                %>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="accordion-item">
                    <%
                        cdao = new CourseDao(DBConnection.getConnection());
                        courses = cdao.getCourse("GEB");
                        count = courses.size();
                    %>
                    <h2 class="accordion-header" id="geb-heading">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#geb-body" aria-expanded="true" aria-controls="geb-body">
                            Genetic Engineering & Biotechnology (<%=count%>)
                        </button>
                    </h2>
                    <div class="accordion-collapse collapse" id="geb-body" area-labelledby="geb-heading" data-bs-parent="course-accordion">
                        <div class="container-fluid accordion-body">
                            <div class="row gy-3">
                                <%
                                    for(int i=0;i<count;i++){
                                        Course course = courses.get(i);
                                %>
                                <div class="col-lg-4">
                                    <div class="card" style="background-color: #c1c8e8">
                                        <div class="card-body">
                                            <p class="h5 card-title" style="height:60px"><%= course.getTitle() %></p>
                                            <p class="h6 card-subtitle mb-2"><%= course.getDept() %> <%= course.getCode() %></p>
                                            <div class="card-footer" id="card-footer">Taken By <strong><%= course.getTeacher()%></strong></div>
                                        </div>
                                    </div>
                                </div>
                                <%
                                    }
                                %>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="accordion-item">
                    <%
                        cdao = new CourseDao(DBConnection.getConnection());
                        courses = cdao.getCourse("BUS");
                        count = courses.size();
                    %>
                    <h2 class="accordion-header" id="bus-heading">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#bus-body" aria-expanded="true" aria-controls="bus-body">
                            Business Administration (<%=count%>)
                        </button>
                    </h2>
                    <div class="accordion-collapse collapse" id="bus-body" area-labelledby="bus-heading" data-bs-parent="course-accordion">
                        <div class="container-fluid accordion-body">
                            <div class="row gy-3">
                                <%
                                    for(int i=0;i<count;i++){
                                        Course course = courses.get(i);
                                %>
                                <div class="col-lg-4">
                                    <div class="card" style="background-color: #c1c8e8">
                                        <div class="card-body">
                                            <p class="h5 card-title" style="height:60px"><%= course.getTitle() %></p>
                                            <p class="h6 card-subtitle mb-2"><%= course.getDept() %> <%= course.getCode() %></p>
                                            <div class="card-footer" id="card-footer">Taken By <strong><%= course.getTeacher()%></strong></div>
                                        </div>
                                    </div>
                                </div>
                                <%
                                    }
                                %>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="accordion-item">
                    <%
                        cdao = new CourseDao(DBConnection.getConnection());
                        courses = cdao.getCourse("CHE");
                        count = courses.size();
                    %>
                    <h2 class="accordion-header" id="che-heading">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#che-body" aria-expanded="true" aria-controls="che-body">
                            Chemistry (<%=count%>)
                        </button>
                    </h2>
                    <div class="accordion-collapse collapse" id="che-body" area-labelledby="che-heading" data-bs-parent="course-accordion">
                        <div class="container-fluid accordion-body">
                            <div class="row gy-3">
                                <%
                                    for(int i=0;i<count;i++){
                                        Course course = courses.get(i);
                                %>
                                <div class="col-lg-4">
                                    <div class="card" style="background-color: #c1c8e8">
                                        <div class="card-body">
                                            <p class="h5 card-title" style="height:60px"><%= course.getTitle() %></p>
                                            <p class="h6 card-subtitle mb-2"><%= course.getDept() %> <%= course.getCode() %></p>
                                            <div class="card-footer" id="card-footer">Taken By <strong><%= course.getTeacher()%></strong></div>
                                        </div>
                                    </div>
                                </div>
                                <%
                                    }
                                %>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="accordion-item">
                    <%
                        cdao = new CourseDao(DBConnection.getConnection());
                        courses = cdao.getCourse("GEE");
                        count = courses.size();
                    %>
                    <h2 class="accordion-header" id="gee-heading">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#gee-body" aria-expanded="true" aria-controls="gee-body">
                            Geography and Environment (<%=count%>)
                        </button>
                    </h2>
                    <div class="accordion-collapse collapse" id="gee-body" area-labelledby="gee-heading" data-bs-parent="course-accordion">
                        <div class="container-fluid accordion-body">
                            <div class="row gy-3">
                                <%
                                    for(int i=0;i<count;i++){
                                        Course course = courses.get(i);
                                %>
                                <div class="col-lg-4">
                                    <div class="card" style="background-color: #c1c8e8">
                                        <div class="card-body">
                                            <p class="h5 card-title" style="height:60px"><%= course.getTitle() %></p>
                                            <p class="h6 card-subtitle mb-2"><%= course.getDept() %> <%= course.getCode() %></p>
                                            <div class="card-footer" id="card-footer">Taken By <strong><%= course.getTeacher()%></strong></div>
                                        </div>
                                    </div>
                                </div>
                                <%
                                    }
                                %>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="accordion-item">
                    <%
                        cdao = new CourseDao(DBConnection.getConnection());
                        courses = cdao.getCourse("MAT");
                        count = courses.size();
                    %>
                    <h2 class="accordion-header" id="mat-heading">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#mat-body" aria-expanded="true" aria-controls="mat-body">
                            Mathematics (<%=count%>)
                        </button>
                    </h2>
                    <div class="accordion-collapse collapse" id="mat-body" area-labelledby="mat-heading" data-bs-parent="course-accordion">
                        <div class="container-fluid accordion-body">
                            <div class="row gy-3">
                                <%
                                    for(int i=0;i<count;i++){
                                        Course course = courses.get(i);
                                %>
                                <div class="col-lg-4">
                                    <div class="card" style="background-color: #c1c8e8">
                                        <div class="card-body">
                                            <p class="h5 card-title" style="height:60px"><%= course.getTitle() %></p>
                                            <p class="h6 card-subtitle mb-2"><%= course.getDept() %> <%= course.getCode() %></p>
                                            <div class="card-footer" id="card-footer">Taken By <strong><%= course.getTeacher()%></strong></div>
                                        </div>
                                    </div>
                                </div>
                                <%
                                    }
                                %>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="accordion-item">
                    <%
                        cdao = new CourseDao(DBConnection.getConnection());
                        courses = cdao.getCourse("PHY");
                        count = courses.size();
                    %>
                    <h2 class="accordion-header" id="phy-heading">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#phy-body" aria-expanded="true" aria-controls="phy-body">
                            Physics (<%=count%>)
                        </button>
                    </h2>
                    <div class="accordion-collapse collapse" id="phy-body" area-labelledby="phy-heading" data-bs-parent="course-accordion">
                        <div class="container-fluid accordion-body">
                            <div class="row gy-3">
                                <%
                                    for(int i=0;i<count;i++){
                                        Course course = courses.get(i);
                                %>
                                <div class="col-lg-4">
                                    <div class="card" style="background-color: #c1c8e8">
                                        <div class="card-body">
                                            <p class="h5 card-title" style="height:60px"><%= course.getTitle() %></p>
                                            <p class="h6 card-subtitle mb-2"><%= course.getDept() %> <%= course.getCode() %></p>
                                            <div class="card-footer" id="card-footer">Taken By <strong><%= course.getTeacher()%></strong></div>
                                        </div>
                                    </div>
                                </div>
                                <%
                                    }
                                %>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="accordion-item">
                    <%
                        cdao = new CourseDao(DBConnection.getConnection());
                        courses = cdao.getCourse("STA");
                        count = courses.size();
                    %>
                    <h2 class="accordion-header" id="sta-heading">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#sta-body" aria-expanded="true" aria-controls="sta-body">
                            Statistics (<%=count%>)
                        </button>
                    </h2>
                    <div class="accordion-collapse collapse" id="sta-body" area-labelledby="sta-heading" data-bs-parent="course-accordion">
                        <div class="container-fluid accordion-body">
                            <div class="row gy-3">
                                <%
                                    for(int i=0;i<count;i++){
                                        Course course = courses.get(i);
                                %>
                                <div class="col-lg-4">
                                    <div class="card" style="background-color: #c1c8e8">
                                        <div class="card-body">
                                            <p class="h5 card-title" style="height:60px"><%= course.getTitle() %></p>
                                            <p class="h6 card-subtitle mb-2"><%= course.getDept() %> <%= course.getCode() %></p>
                                            <div class="card-footer" id="card-footer">Taken By <strong><%= course.getTeacher()%></strong></div>
                                        </div>
                                    </div>
                                </div>
                                <%
                                    }
                                %>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="accordion-item">
                    <%
                        cdao = new CourseDao(DBConnection.getConnection());
                        courses = cdao.getCourse("OCG");
                        count = courses.size();
                    %>
                    <h2 class="accordion-header" id="ocg-heading">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#ocg-body" aria-expanded="true" aria-controls="ocg-body">
                            Oceanography (<%=count%>)
                        </button>
                    </h2>
                    <div class="accordion-collapse collapse" id="ocg-body" area-labelledby="ocg-heading" data-bs-parent="course-accordion">
                        <div class="container-fluid accordion-body">
                            <div class="row gy-3">
                                <%
                                    for(int i=0;i<count;i++){
                                        Course course = courses.get(i);
                                %>
                                <div class="col-lg-4">
                                    <div class="card" style="background-color: #c1c8e8">
                                        <div class="card-body">
                                            <p class="h5 card-title" style="height:60px"><%= course.getTitle() %></p>
                                            <p class="h6 card-subtitle mb-2"><%= course.getDept() %> <%= course.getCode() %></p>
                                            <div class="card-footer" id="card-footer">Taken By <strong><%= course.getTeacher()%></strong></div>
                                        </div>
                                    </div>
                                </div>
                                <%
                                    }
                                %>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="accordion-item">
                    <%
                        cdao = new CourseDao(DBConnection.getConnection());
                        courses = cdao.getCourse("ANP");
                        count = courses.size();
                    %>
                    <h2 class="accordion-header" id="anp-heading">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#anp-body" aria-expanded="true" aria-controls="anp-body">
                            Anthropology (<%=count%>)
                        </button>
                    </h2>
                    <div class="accordion-collapse collapse" id="anp-body" area-labelledby="anp-heading" data-bs-parent="course-accordion">
                        <div class="container-fluid accordion-body">
                            <div class="row gy-3">
                                <%
                                    for(int i=0;i<count;i++){
                                        Course course = courses.get(i);
                                %>
                                <div class="col-lg-4">
                                    <div class="card" style="background-color: #c1c8e8">
                                        <div class="card-body">
                                            <p class="h5 card-title" style="height:60px"><%= course.getTitle() %></p>
                                            <p class="h6 card-subtitle mb-2"><%= course.getDept() %> <%= course.getCode() %></p>
                                            <div class="card-footer" id="card-footer">Taken By <strong><%= course.getTeacher()%></strong></div>
                                        </div>
                                    </div>
                                </div>
                                <%
                                    }
                                %>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="accordion-item">
                    <%
                        cdao = new CourseDao(DBConnection.getConnection());
                        courses = cdao.getCourse("ECO");
                        count = courses.size();
                    %>
                    <h2 class="accordion-header" id="eco-heading">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#eco-body" aria-expanded="true" aria-controls="eco-body">
                            Economics (<%=count%>)
                        </button>
                    </h2>
                    <div class="accordion-collapse collapse" id="eco-body" area-labelledby="eco-heading" data-bs-parent="course-accordion">
                        <div class="container-fluid accordion-body">
                            <div class="row gy-3">
                                <%
                                    for(int i=0;i<count;i++){
                                        Course course = courses.get(i);
                                %>
                                <div class="col-lg-4">
                                    <div class="card" style="background-color: #c1c8e8">
                                        <div class="card-body">
                                            <p class="h5 card-title" style="height:60px"><%= course.getTitle() %></p>
                                            <p class="h6 card-subtitle mb-2"><%= course.getDept() %> <%= course.getCode() %></p>
                                            <div class="card-footer" id="card-footer">Taken By <strong><%= course.getTeacher()%></strong></div>
                                        </div>
                                    </div>
                                </div>
                                <%
                                    }
                                %>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="accordion-item">
                    <%
                        cdao = new CourseDao(DBConnection.getConnection());
                        courses = cdao.getCourse("PAD");
                        count = courses.size();
                    %>
                    <h2 class="accordion-header" id="pad-heading">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#pad-body" aria-expanded="true" aria-controls="pad-body">
                            Public Administration (<%=count%>)
                        </button>
                    </h2>
                    <div class="accordion-collapse collapse" id="pad-body" area-labelledby="pad-heading" data-bs-parent="course-accordion">
                        <div class="container-fluid accordion-body">
                            <div class="row gy-3">
                                <%
                                    for(int i=0;i<count;i++){
                                        Course course = courses.get(i);
                                %>
                                <div class="col-lg-4">
                                    <div class="card" style="background-color: #c1c8e8">
                                        <div class="card-body">
                                            <p class="h5 card-title" style="height:60px"><%= course.getTitle() %></p>
                                            <p class="h6 card-subtitle mb-2"><%= course.getDept() %> <%= course.getCode() %></p>
                                            <div class="card-footer" id="card-footer">Taken By <strong><%= course.getTeacher()%></strong></div>
                                        </div>
                                    </div>
                                </div>
                                <%
                                    }
                                %>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="accordion-item">
                    <%
                        cdao = new CourseDao(DBConnection.getConnection());
                        courses = cdao.getCourse("BNG");
                        count = courses.size();
                    %>
                    <h2 class="accordion-header" id="bng-heading">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#bng-body" aria-expanded="true" aria-controls="bng-body">
                            Bangla (<%=count%>)
                        </button>
                    </h2>
                    <div class="accordion-collapse collapse" id="bng-body" area-labelledby="bng-heading" data-bs-parent="course-accordion">
                        <div class="container-fluid accordion-body">
                            <div class="row gy-3">
                                <%
                                    for(int i=0;i<count;i++){
                                        Course course = courses.get(i);
                                %>
                                <div class="col-lg-4">
                                    <div class="card" style="background-color: #c1c8e8">
                                        <div class="card-body">
                                            <p class="h5 card-title" style="height:60px"><%= course.getTitle() %></p>
                                            <p class="h6 card-subtitle mb-2"><%= course.getDept() %> <%= course.getCode() %></p>
                                            <div class="card-footer" id="card-footer">Taken By <strong><%= course.getTeacher()%></strong></div>
                                        </div>
                                    </div>
                                </div>
                                <%
                                    }
                                %>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="accordion-item">
                    <%
                        cdao = new CourseDao(DBConnection.getConnection());
                        courses = cdao.getCourse("ENG");
                        count = courses.size();
                    %>
                    <h2 class="accordion-header" id="eng-heading">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#eng-body" aria-expanded="true" aria-controls="eng-body">
                            English (<%=count%>)
                        </button>
                    </h2>
                    <div class="accordion-collapse collapse" id="eng-body" area-labelledby="eng-heading" data-bs-parent="course-accordion">
                        <div class="container-fluid accordion-body">
                            <div class="row gy-3">
                                <%
                                    for(int i=0;i<count;i++){
                                        Course course = courses.get(i);
                                %>
                                <div class="col-lg-4">
                                    <div class="card" style="background-color: #c1c8e8">
                                        <div class="card-body">
                                            <p class="h5 card-title" style="height:60px"><%= course.getTitle() %></p>
                                            <p class="h6 card-subtitle mb-2"><%= course.getDept() %> <%= course.getCode() %></p>
                                            <div class="card-footer" id="card-footer">Taken By <strong><%= course.getTeacher()%></strong></div>
                                        </div>
                                    </div>
                                </div>
                                <%
                                    }
                                %>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="accordion-item">
                    <%
                        cdao = new CourseDao(DBConnection.getConnection());
                        courses = cdao.getCourse("PSS");
                        count = courses.size();
                    %>
                    <h2 class="accordion-header" id="pss-heading">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#pss-body" aria-expanded="true" aria-controls="pss-body">
                            Political Studies (<%=count%>)
                        </button>
                    </h2>
                    <div class="accordion-collapse collapse" id="pss-body" area-labelledby="pss-heading" data-bs-parent="course-accordion">
                        <div class="container-fluid accordion-body">
                            <div class="row gy-3">
                                <%
                                    for(int i=0;i<count;i++){
                                        Course course = courses.get(i);
                                %>
                                <div class="col-lg-4">
                                    <div class="card" style="background-color: #c1c8e8">
                                        <div class="card-body">
                                            <p class="h5 card-title" style="height:60px"><%= course.getTitle() %></p>
                                            <p class="h6 card-subtitle mb-2"><%= course.getDept() %> <%= course.getCode() %></p>
                                            <div class="card-footer" id="card-footer">Taken By <strong><%= course.getTeacher()%></strong></div>
                                        </div>
                                    </div>
                                </div>
                                <%
                                    }
                                %>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="accordion-item">
                    <%
                        cdao = new CourseDao(DBConnection.getConnection());
                        courses = cdao.getCourse("SCW");
                        count = courses.size();
                    %>
                    <h2 class="accordion-header" id="scw-heading">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#scw-body" aria-expanded="true" aria-controls="scw-body">
                            Social Work (<%=count%>)
                        </button>
                    </h2>
                    <div class="accordion-collapse collapse" id="scw-body" area-labelledby="scw-heading" data-bs-parent="course-accordion">
                        <div class="container-fluid accordion-body">
                            <div class="row gy-3">
                                <%
                                    for(int i=0;i<count;i++){
                                        Course course = courses.get(i);
                                %>
                                <div class="col-lg-4">
                                    <div class="card" style="background-color: #c1c8e8">
                                        <div class="card-body">
                                            <p class="h5 card-title" style="height:60px"><%= course.getTitle() %></p>
                                            <p class="h6 card-subtitle mb-2"><%= course.getDept() %> <%= course.getCode() %></p>
                                            <div class="card-footer" id="card-footer">Taken By <strong><%= course.getTeacher()%></strong></div>
                                        </div>
                                    </div>
                                </div>
                                <%
                                    }
                                %>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="accordion-item">
                    <%
                        cdao = new CourseDao(DBConnection.getConnection());
                        courses = cdao.getCourse("SOC");
                        count = courses.size();
                    %>
                    <h2 class="accordion-header" id="soc-heading">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#soc-body" aria-expanded="true" aria-controls="soc-body">
                            Sociology (<%=count%>)
                        </button>
                    </h2>
                    <div class="accordion-collapse collapse" id="soc-body" area-labelledby="soc-heading" data-bs-parent="course-accordion">
                        <div class="container-fluid accordion-body">
                            <div class="row gy-3">
                                <%
                                    for(int i=0;i<count;i++){
                                        Course course = courses.get(i);
                                %>
                                <div class="col-lg-4">
                                    <div class="card" style="background-color: #c1c8e8">
                                        <div class="card-body">
                                            <p class="h5 card-title" style="height:60px"><%= course.getTitle() %></p>
                                            <p class="h6 card-subtitle mb-2"><%= course.getDept() %> <%= course.getCode() %></p>
                                            <div class="card-footer" id="card-footer">Taken By <strong><%= course.getTeacher()%></strong></div>
                                        </div>
                                    </div>
                                </div>
                                <%
                                    }
                                %>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="vr ms-auto" style="width:4px"></div>
            <div class="d-flex flex-column">
                <div class="card m-4" style="width:300px">
                    <div class="h6 card-header text-center">Create New Course</div>
                    <div class="card-body" style="background-color:#050017">
                        <form action="./ManageCourse?create" method="post" class="needs-validation">
                            <div>
                                <label for ="title" class ="form-label text-white">Title:</label>
                                <input type="text" class="form-control" placeholder="Enter Course Title" name="title" required>
                                <div class="valid-feedback">Valid.</div>
                                <div class="invalid-feedback">Please fill out this field.</div>
                            </div>
                            <div class="mt-1">
                                <label for ="code" class ="form-label text-white">Code:</label>
                                <input type="number" class="form-control" placeholder="Enter Course Code" name="code" required>
                                <div class="valid-feedback">Valid.</div>
                                <div class="invalid-feedback">Please fill out this field.</div>
                            </div>
                            <div class ="mt-1">
                                <label for ="dept" class ="form-label text-white">Department:</label>
                                <input class="form-control" placeholder="Choose department" list="depts" name="dept" required>
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
                                <div class="valid-feedback">Valid.</div>
                                <div class="invalid-feedback">Please fill out this field.</div>
                            </div>
                            <div class="mt-1">
                                <label for ="teacher" class ="form-label text-white">Teacher:</label>
                                <input class="form-control" placeholder="Assign Teacher" list="teachers" name="teacher">
                                <datalist id="teachers">
                                    <%
                                        Connection connection = null;
                                        ResultSet rs = null;
                                        Statement st = null;
                                        try{
                                            connection = DBConnection.getConnection();
                                            String query = "select name from teacher";
                                            st = connection.createStatement();
                                            rs = st.executeQuery(query);
                                            while(rs.next()){
                                    %>
                                    <option value="<%=rs.getString(1)%>">
                                        <%
                                                }
                                            }catch(Exception e){
                                               e.printStackTrace();
                                            }
                                        %>
                                </datalist>
                            </div>
                            <div class="text-center mt-3">
                                <button type="submit" class="text-center btn text-white" style="background-color:#950101">Create</button>
                            </div>
                        </form>
                    </div>
                </div>
                <hr style="border-top: 3px solid black;margin-left: -10px">
                <div class="card m-4" style="width:300px">
                    <div class="h6 card-header text-center">Assign Teacher</div>
                    <div class="card-body" style="background-color:#050017">
                        <form action="./ManageCourse?assign" method="post" class="needs-validation">
                            <div>
                                <label for ="course" class ="form-label text-white">Course:</label>
                                <input class="form-control" placeholder="Select Course" list="courses" name="course" required>
                                <datalist id="courses">
                                    <%
                                        try{
                                            connection = DBConnection.getConnection();
                                            String query = "select * from course";
                                            st = connection.createStatement();
                                            rs = st.executeQuery(query);
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
                                <div class="valid-feedback">Valid.</div>
                                <div class="invalid-feedback">Please fill out this field.</div>
                            </div>
                            <div class="mt-1">
                                <label for ="teacher" class ="form-label text-white">Teacher:</label>
                                <input class="form-control" placeholder="Select Teacher" list="teachers" name="teacher" required>
                                <div class="valid-feedback">Valid.</div>
                                <div class="invalid-feedback">Please fill out this field.</div>
                            </div>
                            <div class="text-center mt-3">
                                <button type="submit" class="text-center btn text-white" style="background-color:#950101">Assign</button>
                            </div>
                        </form>
                    </div>
                </div>
                <hr style="border-top: 3px solid black;margin-left: -10px">
            </div>
        </div>
    </body>
</html>
