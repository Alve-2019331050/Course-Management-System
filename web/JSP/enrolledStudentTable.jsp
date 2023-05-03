<%@ page import="java.sql.*" %>
<%@ page import="cms.connection.DBConnection" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    </head>
    <body>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
        <%
            Connection con = DBConnection.getConnection();
            String course_code = (String) request.getParameter("param");
        %>

        <!-- table showing enrolled student's information -->
        <table class="table table-bordered table-dark table-striped table-hover">
            <tr>
                <th>#</th>
                <th>Name</th>
                <th>Registration Number</th>
                <th>Department</th>
                <th>Email</th>
            </tr>
            <!-- fetch data of enrolled students from takes table of database using MySQL connection -->
            <%
                try{
                    PreparedStatement ps1 = con.prepareStatement("select name,Regno,department,email from takes where course_code=?");
                    ps1.setString(1, course_code);
                    ResultSet result1 = ps1.executeQuery();
                    int count = 1;
                    while(result1.next()){
                                                    
                        //pout.println(result1.getString("title"));
            %>
            <tr>
                <td><%= count %></td>
                <td><%= result1.getString("name") %></td>
                <td><%= result1.getString("Regno") %></td>
                <td><%= result1.getString("department") %></td>
                <td><%= result1.getString("email") %></td>
            </tr>
            <%
                        count++;
                    }
                } catch (SQLException ex) {
                  ex.printStackTrace();
                } 
            %>
        </table>
    </body>
</html>