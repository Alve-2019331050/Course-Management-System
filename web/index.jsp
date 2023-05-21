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
                border-radius: 20px;
            }
            .modal-content form{
                width: 100%;
                height: 100%;
                background: #00122d;
                opacity: 0.95;
                border-radius: 20px;
                overflow:hidden;
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
                background: #950101;
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
                                <div class="modal-dialog modal-dialog-centered" style="width:500px">
                                    <div class="modal-content">
                                        <form action=LogIn method=post>
                                            <svg width="100%" height="100%" id="svg" viewBox="0 0 1440 590" xmlns="http://www.w3.org/2000/svg" class="transition duration-300 ease-in-out delay-150"><style>
                                                .path-0{
                                                    animation:pathAnim-0 4s;
                                                    animation-timing-function: linear;
                                                    animation-iteration-count: infinite;
                                                }
                                                @keyframes pathAnim-0{
                                                    0%{
                                                        d: path("M 0,600 C 0,600 0,300 0,300 C 81.39470972174513,325.2325661284782 162.78941944349026,350.46513225695634 238,344 C 313.21058055650974,337.53486774304366 382.2370319477842,299.3720371006527 434,291 C 485.7629680522158,282.6279628993473 520.2624527653728,304.04671934043284 578,329 C 635.7375472346272,353.95328065956716 716.7131569907248,382.44108553761595 805,381 C 893.2868430092752,379.55891446238405 988.8849192717278,348.1889385091034 1056,354 C 1123.1150807282722,359.8110614908966 1161.7471659223634,402.8031604259705 1221,400 C 1280.2528340776366,397.1968395740295 1360.1264170388183,348.5984197870148 1440,300 C 1440,300 1440,600 1440,600 Z");
                                                    }
                                                    25%{
                                                        d: path("M 0,600 C 0,600 0,300 0,300 C 73.08278941944349,329.2332531776022 146.16557883888697,358.4665063552044 218,325 C 289.834421161113,291.5334936447956 360.42047406389554,195.3672277567846 426,199 C 491.57952593610446,202.6327722432154 552.1525249055308,306.06458261765715 608,347 C 663.8474750944692,387.93541738234285 714.9694263139814,366.37444177258675 799,333 C 883.0305736860186,299.62555822741325 999.9697698385432,254.43765029199585 1065,264 C 1130.0302301614568,273.56234970800415 1143.1514943318448,337.8749570594298 1197,353 C 1250.8485056681552,368.1250429405702 1345.4242528340776,334.0625214702851 1440,300 C 1440,300 1440,600 1440,600 Z");
                                                    }
                                                    50%{
                                                        d: path("M 0,600 C 0,600 0,300 0,300 C 79.57471659223637,252.79972518035038 159.14943318447274,205.59945036070079 234,205 C 308.85056681552726,204.40054963929921 378.9769838543455,250.40192373754724 445,299 C 511.0230161456545,347.59807626245276 572.9426313981451,398.79285468911024 642,394 C 711.0573686018549,389.20714531088976 787.2524905530744,328.4266575060117 860,279 C 932.7475094469256,229.5733424939883 1002.047406389557,191.50051528684298 1057,217 C 1111.952593610443,242.49948471315702 1152.5578838886981,331.57128134661633 1214,356 C 1275.4421161113019,380.42871865338367 1357.721058055651,340.2143593266918 1440,300 C 1440,300 1440,600 1440,600 Z");
                                                    }
                                                    75%{
                                                        d: path("M 0,600 C 0,600 0,300 0,300 C 75.2442459635864,253.2834077636551 150.4884919271728,206.5668155273102 213,218 C 275.5115080728272,229.4331844726898 325.2902782548952,299.0161456544143 396,345 C 466.7097217451048,390.9838543455857 558.3503950532463,413.36860185503264 632,389 C 705.6496049467537,364.63139814496736 761.3081415321196,293.5094469254551 831,248 C 900.6918584678804,202.49055307454486 984.4170388182756,182.5936104431467 1048,206 C 1111.5829611817244,229.4063895568533 1155.0237031947786,296.1161113019581 1217,319 C 1278.9762968052214,341.8838886980419 1359.4881484026107,320.94194434902096 1440,300 C 1440,300 1440,600 1440,600 Z");
                                                    }
                                                    100%{
                                                        d: path("M 0,600 C 0,600 0,300 0,300 C 81.39470972174513,325.2325661284782 162.78941944349026,350.46513225695634 238,344 C 313.21058055650974,337.53486774304366 382.2370319477842,299.3720371006527 434,291 C 485.7629680522158,282.6279628993473 520.2624527653728,304.04671934043284 578,329 C 635.7375472346272,353.95328065956716 716.7131569907248,382.44108553761595 805,381 C 893.2868430092752,379.55891446238405 988.8849192717278,348.1889385091034 1056,354 C 1123.1150807282722,359.8110614908966 1161.7471659223634,402.8031604259705 1221,400 C 1280.2528340776366,397.1968395740295 1360.1264170388183,348.5984197870148 1440,300 C 1440,300 1440,600 1440,600 Z");
                                                    }
                                                }</style><defs><linearGradient id="gradient" x1="0%" y1="50%" x2="100%" y2="50%"><stop offset="5%" stop-color="#950101"></stop><stop offset="95%" stop-color="#473bf0"></stop></linearGradient></defs><path d="M 0,600 C 0,600 0,300 0,300 C 81.39470972174513,325.2325661284782 162.78941944349026,350.46513225695634 238,344 C 313.21058055650974,337.53486774304366 382.2370319477842,299.3720371006527 434,291 C 485.7629680522158,282.6279628993473 520.2624527653728,304.04671934043284 578,329 C 635.7375472346272,353.95328065956716 716.7131569907248,382.44108553761595 805,381 C 893.2868430092752,379.55891446238405 988.8849192717278,348.1889385091034 1056,354 C 1123.1150807282722,359.8110614908966 1161.7471659223634,402.8031604259705 1221,400 C 1280.2528340776366,397.1968395740295 1360.1264170388183,348.5984197870148 1440,300 C 1440,300 1440,600 1440,600 Z" stroke="none" stroke-width="0" fill="url(#gradient)" fill-opacity="1" class="transition-all duration-300 ease-in-out delay-150 path-0" transform="rotate(-180 720 300)"></path></svg>
                                            <div class="h1 text-center text-white" style="font-weight:bolder;margin-top:-50px">Welcome to SwiftCourse</div>
                                            <div class="text-center text-white h6">Please enter your details to log in.</div>
                                            <table class="mt-3" style="margin:20px">
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
                                                            <input type = "password" name = "password" placeholder="Password" id = "password" class="form-control" size = 100%><br>
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
