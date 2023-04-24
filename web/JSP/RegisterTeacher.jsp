<%-- 
    Document   : RegisterTeacher
    Created on : Apr 23, 2023, 3:14:39 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Teacher</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    </head>
    <body>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
        <div class ="container mt-5 py-3 rounded bg-dark text-white" style="width:30%">
            <h2 class="text-center">Register Teacher</h2>
            <form action="./RegisterTeacher" method="post">
                <div class ="mt-3 mb-3">
                    <label for ="name" class ="form-label">Name:</label>
                    <input type="text" class="form-control" placeholder="Enter name" name="name">
                </div>
                <div class ="mb-3">
                    <label for ="dept" class ="form-label">Department:</label>
                    <input class="form-control" placeholder="Choose department" list="depts" name="dept">
                    <datalist id="depts">
                        <option value="CSE">
                        <option value="EEE">
                        <option value="SWE">
                        <option value="FES">
                        <option value="ARC">
                        <option value="CEP">
                        <option value="FET">
                        <option value="IPE">
                        <option value="MEE">
                        <option value="PME">
                        <option value="BMB">
                        <option value="GEN">
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
                <div class ="mb-3">
                    <label for ="email" class ="form-label">Email:</label>
                    <input type="email" class="form-control" placeholder="Enter email" name="email">
                </div>
                <div class ="mb-3">
                    <label for ="pwd" class ="form-label">Password:</label>
                    <input type="password" class="form-control" placeholder="Enter password" name="pwd">
                </div>
                <div class="form-check mb-3">
                    <label class="form-check-label">
                        <input class="form-check-input" type="checkbox" name="remember"> Remember me
                    </label>
                </div>
                <div class="text-center mb-3">
                    <button type="submit" class="text-center btn btn-primary">Submit</button>
                </div>
            </form>
        </div>
    </body>
</html>
