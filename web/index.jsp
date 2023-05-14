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
                background: #00122d;
                opacity: 0.95;
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
                                        <div class="container-fluid">
                                            <div class="row">
                                                <!--wave-->
                                                <svg id="wave" style="transform:rotate(0deg); transition: 0.3s;" viewBox="0 0 1440 480" version="1.1" xmlns="http://www.w3.org/2000/svg"><defs><linearGradient id="sw-gradient-0" x1="0" x2="0" y1="1" y2="0"><stop stop-color="rgba(1.348, 10.52, 42.263, 1)" offset="0%"></stop><stop stop-color="rgba(63.155, 156.102, 80.212, 1)" offset="100%"></stop></linearGradient></defs><path style="transform:translate(0, 0px); opacity:1" fill="url(#sw-gradient-0)" d="M0,432L40,392C80,352,160,272,240,248C320,224,400,256,480,248C560,240,640,192,720,192C800,192,880,240,960,224C1040,208,1120,128,1200,112C1280,96,1360,144,1440,144C1520,144,1600,96,1680,64C1760,32,1840,16,1920,72C2000,128,2080,256,2160,296C2240,336,2320,288,2400,288C2480,288,2560,336,2640,352C2720,368,2800,352,2880,312C2960,272,3040,208,3120,208C3200,208,3280,272,3360,272C3440,272,3520,208,3600,168C3680,128,3760,112,3840,120C3920,128,4000,160,4080,192C4160,224,4240,256,4320,224C4400,192,4480,96,4560,80C4640,64,4720,128,4800,152C4880,176,4960,160,5040,192C5120,224,5200,304,5280,320C5360,336,5440,288,5520,248C5600,208,5680,176,5720,160L5760,144L5760,480L5720,480C5680,480,5600,480,5520,480C5440,480,5360,480,5280,480C5200,480,5120,480,5040,480C4960,480,4880,480,4800,480C4720,480,4640,480,4560,480C4480,480,4400,480,4320,480C4240,480,4160,480,4080,480C4000,480,3920,480,3840,480C3760,480,3680,480,3600,480C3520,480,3440,480,3360,480C3280,480,3200,480,3120,480C3040,480,2960,480,2880,480C2800,480,2720,480,2640,480C2560,480,2480,480,2400,480C2320,480,2240,480,2160,480C2080,480,2000,480,1920,480C1840,480,1760,480,1680,480C1600,480,1520,480,1440,480C1360,480,1280,480,1200,480C1120,480,1040,480,960,480C880,480,800,480,720,480C640,480,560,480,480,480C400,480,320,480,240,480C160,480,80,480,40,480L0,480Z"></path><defs><linearGradient id="sw-gradient-1" x1="0" x2="0" y1="1" y2="0"><stop stop-color="rgba(219.852, 41.773, 124.126, 1)" offset="0%"></stop><stop stop-color="rgba(208.519, 236.138, 240.343, 1)" offset="100%"></stop></linearGradient></defs><path style="transform:translate(0, 50px); opacity:0.9" fill="url(#sw-gradient-1)" d="M0,96L40,144C80,192,160,288,240,320C320,352,400,320,480,280C560,240,640,192,720,152C800,112,880,80,960,112C1040,144,1120,240,1200,296C1280,352,1360,368,1440,320C1520,272,1600,160,1680,112C1760,64,1840,80,1920,128C2000,176,2080,256,2160,288C2240,320,2320,304,2400,264C2480,224,2560,160,2640,120C2720,80,2800,64,2880,88C2960,112,3040,176,3120,224C3200,272,3280,304,3360,272C3440,240,3520,144,3600,104C3680,64,3760,80,3840,112C3920,144,4000,192,4080,240C4160,288,4240,336,4320,312C4400,288,4480,192,4560,160C4640,128,4720,160,4800,184C4880,208,4960,224,5040,224C5120,224,5200,208,5280,232C5360,256,5440,320,5520,344C5600,368,5680,352,5720,344L5760,336L5760,480L5720,480C5680,480,5600,480,5520,480C5440,480,5360,480,5280,480C5200,480,5120,480,5040,480C4960,480,4880,480,4800,480C4720,480,4640,480,4560,480C4480,480,4400,480,4320,480C4240,480,4160,480,4080,480C4000,480,3920,480,3840,480C3760,480,3680,480,3600,480C3520,480,3440,480,3360,480C3280,480,3200,480,3120,480C3040,480,2960,480,2880,480C2800,480,2720,480,2640,480C2560,480,2480,480,2400,480C2320,480,2240,480,2160,480C2080,480,2000,480,1920,480C1840,480,1760,480,1680,480C1600,480,1520,480,1440,480C1360,480,1280,480,1200,480C1120,480,1040,480,960,480C880,480,800,480,720,480C640,480,560,480,480,480C400,480,320,480,240,480C160,480,80,480,40,480L0,480Z"></path><defs><linearGradient id="sw-gradient-2" x1="0" x2="0" y1="1" y2="0"><stop stop-color="rgba(215.299, 135.951, 104.124, 1)" offset="0%"></stop><stop stop-color="rgba(213.022, 27.244, 75.394, 1)" offset="100%"></stop></linearGradient></defs><path style="transform:translate(0, 100px); opacity:0.8" fill="url(#sw-gradient-2)" d="M0,192L40,160C80,128,160,64,240,64C320,64,400,128,480,168C560,208,640,224,720,264C800,304,880,368,960,344C1040,320,1120,208,1200,168C1280,128,1360,160,1440,160C1520,160,1600,128,1680,152C1760,176,1840,256,1920,280C2000,304,2080,272,2160,232C2240,192,2320,144,2400,160C2480,176,2560,256,2640,312C2720,368,2800,400,2880,408C2960,416,3040,400,3120,368C3200,336,3280,288,3360,224C3440,160,3520,80,3600,48C3680,16,3760,32,3840,56C3920,80,4000,112,4080,160C4160,208,4240,272,4320,280C4400,288,4480,240,4560,256C4640,272,4720,352,4800,320C4880,288,4960,144,5040,112C5120,80,5200,160,5280,232C5360,304,5440,368,5520,328C5600,288,5680,144,5720,72L5760,0L5760,480L5720,480C5680,480,5600,480,5520,480C5440,480,5360,480,5280,480C5200,480,5120,480,5040,480C4960,480,4880,480,4800,480C4720,480,4640,480,4560,480C4480,480,4400,480,4320,480C4240,480,4160,480,4080,480C4000,480,3920,480,3840,480C3760,480,3680,480,3600,480C3520,480,3440,480,3360,480C3280,480,3200,480,3120,480C3040,480,2960,480,2880,480C2800,480,2720,480,2640,480C2560,480,2480,480,2400,480C2320,480,2240,480,2160,480C2080,480,2000,480,1920,480C1840,480,1760,480,1680,480C1600,480,1520,480,1440,480C1360,480,1280,480,1200,480C1120,480,1040,480,960,480C880,480,800,480,720,480C640,480,560,480,480,480C400,480,320,480,240,480C160,480,80,480,40,480L0,480Z"></path><defs><linearGradient id="sw-gradient-3" x1="0" x2="0" y1="1" y2="0"><stop stop-color="rgba(40.935, 40.797, 51.37, 1)" offset="0%"></stop><stop stop-color="rgba(95.161, 105.024, 146.995, 1)" offset="100%"></stop></linearGradient></defs><path style="transform:translate(0, 150px); opacity:0.7" fill="url(#sw-gradient-3)" d="M0,96L40,80C80,64,160,32,240,72C320,112,400,224,480,248C560,272,640,208,720,216C800,224,880,304,960,320C1040,336,1120,288,1200,240C1280,192,1360,144,1440,104C1520,64,1600,32,1680,24C1760,16,1840,32,1920,96C2000,160,2080,272,2160,304C2240,336,2320,288,2400,288C2480,288,2560,336,2640,296C2720,256,2800,128,2880,104C2960,80,3040,160,3120,168C3200,176,3280,112,3360,120C3440,128,3520,208,3600,208C3680,208,3760,128,3840,80C3920,32,4000,16,4080,24C4160,32,4240,64,4320,128C4400,192,4480,288,4560,312C4640,336,4720,288,4800,288C4880,288,4960,336,5040,368C5120,400,5200,416,5280,392C5360,368,5440,304,5520,256C5600,208,5680,176,5720,160L5760,144L5760,480L5720,480C5680,480,5600,480,5520,480C5440,480,5360,480,5280,480C5200,480,5120,480,5040,480C4960,480,4880,480,4800,480C4720,480,4640,480,4560,480C4480,480,4400,480,4320,480C4240,480,4160,480,4080,480C4000,480,3920,480,3840,480C3760,480,3680,480,3600,480C3520,480,3440,480,3360,480C3280,480,3200,480,3120,480C3040,480,2960,480,2880,480C2800,480,2720,480,2640,480C2560,480,2480,480,2400,480C2320,480,2240,480,2160,480C2080,480,2000,480,1920,480C1840,480,1760,480,1680,480C1600,480,1520,480,1440,480C1360,480,1280,480,1200,480C1120,480,1040,480,960,480C880,480,800,480,720,480C640,480,560,480,480,480C400,480,320,480,240,480C160,480,80,480,40,480L0,480Z"></path>
                                                </svg>
                                            </div>
                                        </div>
                                        <form action=LogIn method=post>

                                            <table class="mt-5">
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
            <div class="row" style="margin-left:110px">
                <div class="col-lg-6">
                    <img class="rounded" src="${pageContext.request.contextPath}/images/one.jpg" alt="home image2" style="width:490px;height:158px">
                </div>
                <div class="col-lg-6">
                    <img class="rounded" src="${pageContext.request.contextPath}/images/two.jpg" alt="home image2" style="width:490px;height:158px">
                </div>
            </div>
            <div class="row gy-4" style="margin-left:110px">
                <div class="col-lg-6">
                    <img class="rounded" src="${pageContext.request.contextPath}/images/three.jpg" alt="home image2" style="width:490px;height:158px">
                </div>
                <div class="col-lg-6">
                    <img class="rounded" src="${pageContext.request.contextPath}/images/four.jpg" alt="home image2" style="width:490px;height:158px">
                </div>
            </div>
            <div class="row gy-4" style="margin-left:110px">
                <div class="col-lg-6">
                    <img class="rounded" src="${pageContext.request.contextPath}/images/five.jpg" alt="home image2" style="width:490px;height:160px">
                </div>
                <div class="col-lg-6 mb-5">
                    <img class="rounded" src="${pageContext.request.contextPath}/images/six.jpg" alt="home image2" style="width:490px;height:158px">
                </div>
            </div>
        </div>
        <%@include file="./JSP/footer.jsp"%>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    </body>
</html>
