<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    </head>
    <body style="background-color:lightblue;padding-top:70px">
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
            <div class="card" style="width:500px;margin-top: 70px">
                <div class="card-header">Teachers</div>
                <div class="card-body m-0 p-0" style="overflow-y:auto;max-height:250px;">
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
                                    Class.forName("com.mysql.cj.jdbc.Driver");
                                    connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/servlet_cms_db ", "root", "AlverahmaN");
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
            <div class="card" style="width:500px;margin-top: 70px">
                <div class="card-header">Students</div>
                <div class="card-body m-0 p-0" style="overflow:auto;max-height:250px;">
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
