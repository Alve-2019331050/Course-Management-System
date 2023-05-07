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
        <link href="https://fonts.googleapis.com/css2?family=Noto+Sans:wght@500&family=Pacifico&family=Poppins:wght@700&display=swap" rel="stylesheet">
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
        </style>
    </head>
    <body style="background-color: #bfc1e0">
        <!-- navigation bar -->
        <nav class="navbar navbar-expand-lg" style="background-color:#EEF0F2">
            <div class="container-fluid">
                <a href="#" class="navbar-brand">
                    <img src="${pageContext.request.contextPath}/images/logo.png" alt="sust logo" style="width:80px;height:80px">
                    &nbsp;&nbsp;<span style="font-family:'Pacifico', cursive;font-size:30px">
                        <span style="color:#0d21a1">Course </span><span style="color:#950101">Management </span><span style="color:#0d21a1">System</span>
                    </span>
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item">
                            <a class="nav-link text-uppercase" href="./" id="home" style="font-family:'Noto Sans'">Home</a>
                        </li>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <li class="nav-item">
                            <a class="nav-link text-uppercase" href="./AboutUs" id="about-us" style="font-family:'Noto Sans'">About Us</a>
                        </li>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <li class="nav-item">
                            <a class="nav-link text-uppercase" href="/CourseManagementSystem/LogIn" style="font-family:'Noto Sans'">Log In</a>
                        </li>
                    </ul>
                    <script>
                        const activePage = window.location.pathname;
                        document.querySelectorAll('li a').forEach(link => {
                            if ((link.href.substring(21)) === activePage) {
                                link.classList.add('dash');
                            }
                        })
                    </script>
                </div>
            </div>
        </nav>

        <!-- carousal -->
        <div class="row">
            <div class="col-lg-12">
                <div id="carouselExample" class="carousel slide carousel-fade" data-bs-ride="carousel" style="background-color:#050017">
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
                    <img class="rounded" src="${pageContext.request.contextPath}/images/one.jpg" alt="home image2" style="width:700px;height:280px">
                </div>
                <div class="col-lg-6">
                    <img class="rounded" src="${pageContext.request.contextPath}/images/two.jpg" alt="home image2" style="width:700px;height:280px">
                </div>
            </div>
            <div class="row ms-auto gy-4">
                <div class="col-lg-6">
                    <img class="rounded" src="${pageContext.request.contextPath}/images/three.jpg" alt="home image2" style="width:700px;height:280px">
                </div>
                <div class="col-lg-6">
                    <img class="rounded" src="${pageContext.request.contextPath}/images/four.jpg" alt="home image2" style="width:700px;height:280px">
                </div>
            </div>
            <div class="row ms-auto gy-4">
                <div class="col-lg-6">
                    <img class="rounded" src="${pageContext.request.contextPath}/images/five.jpg" alt="home image2" style="width:700px;height:250px">
                </div>
                <div class="col-lg-6 mb-5">
                    <img class="rounded" src="${pageContext.request.contextPath}/images/six.jpg" alt="home image2" style="width:700px;height:250px">
                </div>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    </body>
</html>
