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
        <link href="https://fonts.googleapis.com/css2?family=Noto+Sans:wght@500&family=Pacifico&family=Poppins:wght@700&display=swap" rel="stylesheet">
    </head>
    <body style="background-color:#bfc1e0">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
        <%@include file="navbar.jsp"%>
        <%
            String message = request.getParameter("registrationMessage");
            if(message!=null){
        %>
        <div class="alert alert-success alert-dismissible">
            <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
            <strong>Success!</strong> <%=message%> created.
        </div>
        <%
        }
        %>
        <div class="d-flex justify-content-around">
            <div class="card" style="width:680px;margin-top: 100px">
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
            <div class="card" style="width:680px;margin-top: 100px">
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
