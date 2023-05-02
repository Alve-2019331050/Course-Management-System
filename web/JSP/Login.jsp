<%-- 
    Document   : Login
    Created on : Apr 25, 2023, 2:07:09 AM
    Author     : Raha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
        
        <title>LogIn</title>
        <style>
            *{
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }
            body{
                min-height: 100vh;
                background: white;
                display: flex;
                font-family: serif;
            }
            .container{
                margin: auto;
                width: 500px;
                max-width: 90%;
            }
            .container form{
                width: 100%;
                height: 100%;
                padding: 20px;
                background: black;
                border-radius: 4px;
                box-shadow: 0 8px 16px rgba(0,0,0,.3);
            }
            .container form h2{
                text-align: center;
                margin-bottom: 24px;
                color: white;
            }
            .container form .form-control{
                width: 100%;
                height: 40px;
                background: white;
                border-radius: 4px;
                border: 1px solid silver;
                margin: 10px 0 18px 0;
                padding: 0px 10px;
            }
            .container form .btn{
                margin-left: 50%;
                transform: translate(-50%);
                width: 120px;
                height: 40px;
                border: none;
                outline: none;
                background: #80191b;
                cursor: pointer;
                font-size: 16px;
                color: white;
                border-radius: 4px;
                transition: .3s;
            }
            .container form .btn:hover{
                opacity: .7;
            }
            .container label{
                color: white;
            }
        </style>
    </head>
    <body>
        <% if(request.getAttribute("errorMessage") != null){ %>
        <div class="alert alert-warning alert-dismissible" role="alert">
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            <%= request.getAttribute("errorMessage") %>
        </div>
        <% } %>
        <div class="container">
            <form action=LogIn method=post>
                <h2>LogIn </h2>
                <table>
                    <tr>
                        <td>
                            <div class="form-group">
                                <label for = "Email">Email : </label>
                                <input type = "text" name = "email" placeholder="Email" id = "email" class="form-control" size = 100%><br>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            
                            <div class="form-group">
                                <label for = "Password">Password : </label>
                                <input type = "text" name = "password" placeholder="Password" id = "password" class="form-control" size = 100%><br>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            
                            <input type = "submit" value = "LOGIN" class="btn"><br>
                        </td>
                    </tr>
                </table>
            </form>   
        </div
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
    </body>
</html>
