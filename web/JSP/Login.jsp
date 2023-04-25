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
        <title>LogIn Page</title>
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
        <div class="container">
            <form action="" method="">
                <h2>LogIn </h2>
                <table>
                    <tr>
                        <td>
                            <div class="form-group">
                                <label for = "Email">Email : </label>
                                <input type = "text" name = "email" placeholder="Email" id = "email" class="form-control"><br>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="form-group">
                                <label for = "Password">Password : </label>
                                <input type = "text" name = "password" placeholder="Password" id = "password" class="form-control"><br>
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
        </div>
    </body>
</html>
