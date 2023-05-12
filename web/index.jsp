<%-- 
    Document   : index
    Created on : May 4, 2023, 4:48:59 AM
    Author     : Raha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Course Management System</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Bruno+Ace+SC&family=Noto+Sans:wght@500&family=Poppins:wght@700&display=swap" rel="stylesheet">
        <style>
            .carousel-item{
                padding: 5%;
                text-align: center;
                font-size: 2.25rem;
                line-height: 3rem;
                font-weight: 700;
                font-family: Poppins, "Noto Sans", "San Francisco", "Segoe UI", "Helvetica Neue", Helvetica, Arial, sans-serif;
            }
            #home-image2{
                padding: 5%;
                text-align: center;
            }
            .dash{
                border-bottom: 3px solid #950101;
            }
            .modal-content{
                margin: auto;
                width: 500px;
                font-family: serif;
            }
            .modal-content form{
                width: 100%;
                height: 100%;
                padding: 20px;
                background: #472c4c;
                border-radius: 4px;
                box-shadow: 0 8px 16px rgba(0,0,0,.3);
            }
            .modal-content form h2{
                text-align: center;
                margin-bottom: 24px;
                color: white;
            }
            .modal-content form .form-control{
                width: 100%;
                height: 40px;
                background: white;
                border-radius: 4px;
                border: 1px solid silver;
                margin: 10px 0 18px 0;
                padding: 0px 10px;
            }
            .modal-content form .btn{
                margin-left: 50%;
                transform: translate(-50%);
                width: 120px;
                height: 40px;
                border: none;
                outline: none;
                background: #04724d;
                cursor: pointer;
                font-size: 16px;
                color: white;
                border-radius: 4px;
                transition: .3s;
            }
            .modal-content form .btn:hover{
                opacity: .7;
            }
            .modal-content label{
                color: white;
            }
        </style>
    </head>
    <body style="background-color: #bfc1e0">
        <!-- navigation bar -->
        <nav class="navbar navbar-expand-lg" style="background-color:#EEF0F2">
            <div class="container-fluid">
                <a href="#" class="navbar-brand ms-3">
                    <span style="font-family:'Bruno Ace SC';letter-spacing:2px;font-weight: bolder">
                        <span style="color:#950101;font-size:40px;">Swift</span><span style="color:#473bf0;font-size:50px">Course</span>
                    </span>
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item">
                            <a class="nav-link text-uppercase dash" href="./" id="home" style="font-family:'Noto Sans'">Home</a>
                        </li>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <li class="nav-item">
                            <a class="nav-link text-uppercase" href="./AboutUs" id="about-us" style="font-family:'Noto Sans'">About Us</a>
                        </li>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <li class="nav-item">
                            <a class="nav-link text-uppercase" type="button" data-bs-toggle="modal" data-bs-target="#logInModal" style="font-family:'Noto Sans'">Log In</a>
                            <div class="modal fade" id="logInModal" tabindex="-1" aria-hidden="true">
                                <div class="modal-dialog modal-dialog-centered">
                                    <div class="modal-content">
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
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <% if(request.getAttribute("errorMessage") != null){ %>
        <div class="alert alert-warning alert-dismissible" style="margin-bottom: 0px">
            <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
            <%= request.getAttribute("errorMessage") %>
        </div>
        <% } %>

        <!-- carousal -->
        <div class="row">
            <div class="col-lg-12">
                <div id="carouselExample" class="carousel slide carousel-fade" data-bs-ride="carousel" style="background-color:#00122d">
                    <div class="carousel-indicators">
                        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
                        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
                    </div>
                    <div class="carousel-inner">
                        <!-- First item -->
                        <div class="carousel-item active"data-bs-interval="2000">
                            <p class="text-white fs-1">There's a better way to teach</p>
                            <p class="fs-4 text-white" style="font-size:1.75rem !important;font-weight:normal !important;font-family:Sans-Serif">Manage courses with ease ...</p>
                            <img class="rounded" src="${pageContext.request.contextPath}/images/home logo2.jpg" alt="home image1" style="width:1000px;height:500px">
                        </div>
                        <!-- Second item -->
                        <div class="carousel-item" data-bs-interval="2000">
                            <p class="text-white fs-1">Collaborate effectively with the students and manage their learning workflow with us ...</p>
                            <img class="rounded" src="${pageContext.request.contextPath}/images/home logo5.jpg" alt="home image2" style="width:1000px;height:500px">
                        </div>
                        <!-- Third item -->
                        <div class="carousel-item" data-bs-interval="2000">
                            <p class="text-white fs-1">With us, Learning should not be clumsy and painful anymore ...</p>
                            <img class="rounded" src="${pageContext.request.contextPath}/images/home logo7.jpg" alt="home image3" style="width:1000px;height:500px">
                        </div>
                    </div>

                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Previous</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Next</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Next</span>
                    </button>
                </div>
            </div>

            <!-- paragraph -->
            <div class="row p-5 d-flex justify-content-center" style="margin-top:100px">
                <div class="col-lg-8">
                    <p style="font-size:35px;font-family:Poppins;padding-bottom: 24px;line-height:2.5rem;margin-left:200px">
                        Manage course management<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;hassles, all in one place
                    </p>
                    <p class="text-dark fs-3 text-center">
                        Our product is a course management system that lets educational institutions manage the learning process,
                        instructors and students. It allows students and teachers to collaborate and perform variety of task all in one place.
                    </p>
                </div>
            </div>
            
            <hr>
            
            <!-- feature poster -->
            <p class="text-center mb-5" style="font-size: 60px">Our Services</p>
            <div class="row ms-auto">
                <div class="col-lg-6">
                    <img class="rounded" src="${pageContext.request.contextPath}/images/one.jpg" alt="home image2" style="width:690px;height:280px">
                </div>
                <div class="col-lg-6">
                    <img class="rounded" src="${pageContext.request.contextPath}/images/two.jpg" alt="home image2" style="width:690px;height:280px">
                </div>
            </div>
            <div class="row ms-auto gy-4">
                <div class="col-lg-6">
                    <img class="rounded" src="${pageContext.request.contextPath}/images/three.jpg" alt="home image2" style="width:690px;height:280px">
                </div>
                <div class="col-lg-6">
                    <img class="rounded" src="${pageContext.request.contextPath}/images/four.jpg" alt="home image2" style="width:690px;height:280px">
                </div>
            </div>
            <div class="row ms-auto gy-4">
                <div class="col-lg-6">
                    <img class="rounded" src="${pageContext.request.contextPath}/images/five.jpg" alt="home image2" style="width:690px;height:250px">
                </div>
                <div class="col-lg-6 mb-5">
                    <img class="rounded" src="${pageContext.request.contextPath}/images/six.jpg" alt="home image2" style="width:690px;height:250px">
                </div>
            </div>
        </div>
        <%@include file="./JSP/footer.jsp"%>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    </body>
</html>
