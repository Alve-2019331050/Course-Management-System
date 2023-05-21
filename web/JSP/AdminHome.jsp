<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="cms.connection.DBConnection"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Bruno+Ace+SC&family=Noto+Sans:wght@500&family=Poppins:wght@700&display=swap" rel="stylesheet">
    </head>
    <body style="background-color:#bfc1e0">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
        <%@include file="navbar.jsp"%>
        <%
            String message = request.getParameter("registrationMessage");
            String failed = request.getParameter("failed");
            if(message!=null){
        %>
        <div class="alert alert-success alert-dismissible" style="margin-bottom: -2px">
            <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
            <strong>Success!</strong> <%=message%> created.
        </div>
        <%
        }
        else if(failed!=null){
        %>
        <div class="alert alert-danger alert-dismissible" style="margin-bottom: -2px">
            <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
            <strong>Failed!</strong> User creation failed.
        </div>
        <%
        }
        %>
        <svg width="100%" height="100%" id="svg" viewBox="0 0 1440 390" xmlns="http://www.w3.org/2000/svg" class="transition duration-300 ease-in-out delay-150"><defs><linearGradient id="gradient" x1="0%" y1="50%" x2="100%" y2="50%"><stop offset="5%" stop-color="#ababde"></stop><stop offset="95%" stop-color="#00122d"></stop></linearGradient></defs><path d="M 0,400 C 0,400 0,200 0,200 C 111.28229665071768,227.32057416267943 222.56459330143537,254.64114832535887 317,233 C 411.43540669856463,211.35885167464113 489.02392344497616,140.75598086124398 585,142 C 680.9760765550238,143.24401913875602 795.3397129186602,216.33492822966508 899,223 C 1002.6602870813398,229.66507177033492 1095.617224880383,169.9043062200957 1184,155 C 1272.382775119617,140.0956937799043 1356.1913875598084,170.04784688995215 1440,200 C 1440,200 1440,400 1440,400 Z" stroke="none" stroke-width="0" fill="url(#gradient)" fill-opacity="1" class="transition-all duration-300 ease-in-out delay-150 path-0" transform="rotate(-180 720 200)"></path></svg>
        <div class="d-flex justify-content-around">
            <div class="card" style="width:680px;margin-top: -320px">
                <div class="card-header">Teachers</div>
                <div class="card-body m-0 p-0" style="overflow-y:auto;max-height:500px;">
                    <table class="table table-striped text-center">
                        <thead class="sticky-top bg-white">
                            <tr>
                                <th>Name</th>
                                <th>Dept.</th>
                                <th>Email</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                Connection connection = null;
                                Statement st = null;
                                ResultSet rs = null;
                                try{
                                    connection = DBConnection.getConnection();
                                    String query = "select * from teacher";
                                    st = connection.createStatement();
                                    rs = st.executeQuery(query);
                                    while(rs.next()){
                            %>
                            <tr>
                                <td>
                                    <%=
                                        rs.getString(2)
                                    %>
                                </td>
                                <td>
                                    <%=
                                        rs.getString(3)
                                    %>
                                </td>
                                <td>
                                    <%=
                                        rs.getString(4)
                                    %>
                                </td>
                            </tr>
                            <%
                                    }
                                }catch(Exception e){
                                    e.printStackTrace();
                                }
                            %>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="card" style="width:680px;margin-top: -320px">
                <div class="card-header">Students</div>
                <div class="card-body m-0 p-0" style="overflow:auto;max-height:500px;">
                    <table class="table table-striped text-center table-responsive" style="min-width:550px">
                        <thead class="sticky-top bg-white">
                            <tr>
                                <th>Name</th>
                                <th>Dept.</th>
                                <th>Registration No.</th>
                                <th>Email</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                try{
                                    Class.forName("com.mysql.cj.jdbc.Driver");
                                    connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/servlet_cms_db ", "root", "AlverahmaN");
                                    String query = "select * from student";
                                    st = connection.createStatement();
                                    rs = st.executeQuery(query);
                                    while(rs.next()){
                            %>
                            <tr>
                                <td>
                                    <%=
                                        rs.getString(2)
                                    %>
                                </td>
                                <td>
                                    <%=
                                        rs.getString(3)
                                    %>
                                </td>
                                <td>
                                    <%=
                                        rs.getString(4)
                                    %>
                                </td>
                                <td>
                                    <%=
                                        rs.getString(5)
                                    %>
                                </td>
                            </tr>
                            <%
                                    }
                                }catch(Exception e){
                                    e.printStackTrace();
                                }
                            %>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>
