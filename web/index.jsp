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

        <style>
            .carousel-item{
                padding: 5%;
                text-align: center;
                font-style: italic;
            }
            #home-image2{
                padding: 5%;
                text-align: center;
            }
        </style>
    </head>
    <body class="bg-black">

        <!-- navigation bar -->
        <nav class="navbar navbar-expand-lg  bg-light">
            <div class="container-fluid">
                <a href="#" class="navbar-brand">
                    <img src="${pageContext.request.contextPath}/images/logo.png" alt="sust logo" style="width:80px;height:80px">
                    &nbsp;&nbsp;Course Management System
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item">
                            <a class="nav-link text-uppercase" href="#" id="home">Home</a>
                        </li>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <li class="nav-item">
                            <a class="nav-link text-uppercase" href="#" id="about-us">About Us</a>
                        </li>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <li class="nav-item">
                            <a class="nav-link text-uppercase" href="/CourseManagementSystem/LogIn">Log In</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <!-- carousal -->
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <div id="carouselExample" class="carousel slide carousel-fade" data-bs-ride="carousel">
                        <div class="carousel-indicators">
                            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
                            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
                        </div>
                        <div class="carousel-inner">
                            <!-- First item -->
                            <div class="carousel-item active"data-bs-interval="2000">
                                <p class="text-white fs-1">Manage Courses with ease !!</p>
                                <img class="rounded" src="${pageContext.request.contextPath}/images/home logo2.jpg" alt="home image1" style="width:1000px;height:500px">
                            </div>
                            <!-- Second item -->
                            <div class="carousel-item" data-bs-interval="2000">
                                <p class="text-white fs-2">Collaborate effectively with the students and manage their learning workflow with us ...</p>
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
            </div>
            <div class="row p-5 d-flex justify-content-center">
                <div class="col-lg-8">
                    <p class="text-white fs-1">
                        Our product is a course management system that lets educational institutions manage the learning process,
                        instructors and students. It allows students and teachers to collaborate and perform variety of task all in one place.
                    </p>
                </div>
            </div>
            <!-- feature poster -->
            <div class="row">
                <div class="col-lg-12 d-flex justify-content-center">
                    <img class="rounded" src="${pageContext.request.contextPath}/images/Features.jpg" alt="home image2" style="width:800px;height:2000px" id="home-image2">
                </div>
            </div>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    </body>
</html>
