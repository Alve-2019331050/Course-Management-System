<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Access Denied</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    </head>
    <body>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
        <div class="container d-flex justify-content-center" style="margin-top: 80px">
            <div class="alert alert-danger">
                <img src="${pageContext.request.contextPath}/images/warning.png" style="width:200px;margin-left: 215px">
                <p class="h2 text-center mt-2">Access Denied</p>
                <p class="h6 mt-2" style="margin-left: 10px">You are not allowed to access this page. Only Authorized person can access this page.</p>
            </div>
        </div>
    </body>
</html>
