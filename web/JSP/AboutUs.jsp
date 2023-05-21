<%-- 
    Document   : AboutUs
    Created on : May 6, 2023, 3:07:36 AM
    Author     : Raha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>About Us</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Bruno+Ace+SC&family=Noto+Sans:wght@500&family=Poppins:wght@700&display=swap" rel="stylesheet">

        <style>
            section:nth-of-type(1){
                position: relative;
                width: 100%;
                height: 120vh;
                display: flex;
                justify-content: center;
                overflow: hidden;
            }
            section:nth-of-type(1) .content{
                position: relative;
                z-index: 1;
                margin: 0 auto;
                max-width: 900px;
                text-align: center;
            }
            section:nth-of-type(1):before{
                content: '';
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                background: #00122d;

            }
            section:nth-of-type(1) .content h1{
                margin: 0;
                padding: 0;
                color: #EEF0F2;
                font-size: 2.75rem;
                line-height: 3rem;
                font-weight: 700;
                font-family: Poppins, "Noto Sans", "San Francisco", "Segoe UI", "Helvetica Neue", Helvetica, Arial, sans-serif;
                padding-bottom: 24px;
            }
            section:nth-of-type(1) .content p{
                color: #EEF0F2;
                font-size: 1.125rem;
                font-weight: 400;
                font-family: "Noto Sans", "San Francisco", "Segoe UI", "Helvetica Neue", Helvetica, Arial, sans-serif;
                padding-top: 30px;
            }
            .btn:hover{
                opacity: .7;
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
    <body>
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
                            <a class="nav-link text-uppercase" href="./" id="home" style="font-family:'Noto Sans'">Home</a>
                        </li>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <li class="nav-item">
                            <a class="nav-link text-uppercase dash" href="./AboutUs" id="about-us" style="font-family:'Noto Sans'">About Us</a>
                        </li>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <li class="nav-item">
                            <a class="nav-link text-uppercase" type="button" data-bs-toggle="modal" data-bs-target="#logInModal" style="font-family:'Noto Sans'">Log In</a>
                            <!-- Log In Modal starts -->
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

        <!-- rectangle section-->
        <section>
            <div class="content" style="margin-top:100px">
                <h1>Assisting you in delivering education <br> to the world, quicker and efficiently</h1><br>
                <p>
                    Empower Your Learning Journey with our Course Management System.<br> <br>
                </p>
                <img class="rounded" src="${pageContext.request.contextPath}/images/home logo3.jpg" alt="aboutUs image1" style="width:700px;height:350px">
                <br>
                <p><span style="color:#92aaf7;font-size:1.6rem !important">Stay Organized | Manage your courses | Take control of your education<br></span>
                    Experience seamless learning with our user-friendly platform designed to help you achieve your goals.
                </p>
            </div>
        </section>

        <!-- wave -->
        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320"><path fill="#00122d" fill-opacity="0.95" d="M0,160L24,154.7C48,149,96,139,144,133.3C192,128,240,128,288,160C336,192,384,256,432,261.3C480,267,528,213,576,197.3C624,181,672,203,720,218.7C768,235,816,245,864,224C912,203,960,149,1008,106.7C1056,64,1104,32,1152,37.3C1200,43,1248,85,1296,117.3C1344,149,1392,171,1416,181.3L1440,192L1440,0L1416,0C1392,0,1344,0,1296,0C1248,0,1200,0,1152,0C1104,0,1056,0,1008,0C960,0,912,0,864,0C816,0,768,0,720,0C672,0,624,0,576,0C528,0,480,0,432,0C384,0,336,0,288,0C240,0,192,0,144,0C96,0,48,0,24,0L0,0Z"></path></svg>

        <!-- image and tagline -->
        <div class="container mb-5" >
            <div class="row">
                <!-- image -->
                <div class="col-md-6">
                    <img src="${pageContext.request.contextPath}/images/teacher student.jpg" class="rounded img-fluid float-start" alt="Responsive image">
                </div>
                <!-- tagline -->
                <div class="col-md-6">
                    <h3><span style="text-align: center;background-color:#a7c1f2;color:#03045e;font-size:1.175rem; line-height:1.25rem;font-weight:600;text-transform: uppercase;font-family: "Noto Sans", "San Francisco", "Segoe UI", "Helvetica Neue", Helvetica, Arial, sans-serif;">&nbsp&nbsp Our mission  &nbsp&nbsp</span></h3>
                    <h2 class="mt-5" style="text-align: left;font-size: 2.75rem;line-height: 3rem;font-weight: 700;font-family: Poppins !important">
                        Empowering the Future of Education: Streamlining Learning and Inspiring Success.
                    </h2>
                    <!-- Get Started Button -->
                    <span style="margin-left:250px">
                        <a type="button" class="btn" style="background-color: #d62828;color: white" data-bs-toggle="modal" data-bs-target="#logInModal">
                            Get Started Now
                            <!-- Right Arrow icon -->
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-right" viewBox="0 0 16 16">
                            <path fill-rule="evenodd" d="M1 8a.5.5 0 0 1 .5-.5h11.793l-3.147-3.146a.5.5 0 0 1 .708-.708l4 4a.5.5 0 0 1 0 .708l-4 4a.5.5 0 0 1-.708-.708L13.293 8.5H1.5A.5.5 0 0 1 1 8z"/>
                            </svg>
                        </a>
                    </span>
                </div>
            </div>
        </div>

        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320"><path fill="#0099ff" fill-opacity="0.3" d="M0,288L17.1,282.7C34.3,277,69,267,103,240C137.1,213,171,171,206,154.7C240,139,274,149,309,149.3C342.9,149,377,139,411,160C445.7,181,480,235,514,224C548.6,213,583,139,617,133.3C651.4,128,686,192,720,218.7C754.3,245,789,235,823,202.7C857.1,171,891,117,926,101.3C960,85,994,107,1029,149.3C1062.9,192,1097,256,1131,234.7C1165.7,213,1200,107,1234,85.3C1268.6,64,1303,128,1337,154.7C1371.4,181,1406,171,1423,165.3L1440,160L1440,320L1422.9,320C1405.7,320,1371,320,1337,320C1302.9,320,1269,320,1234,320C1200,320,1166,320,1131,320C1097.1,320,1063,320,1029,320C994.3,320,960,320,926,320C891.4,320,857,320,823,320C788.6,320,754,320,720,320C685.7,320,651,320,617,320C582.9,320,549,320,514,320C480,320,446,320,411,320C377.1,320,343,320,309,320C274.3,320,240,320,206,320C171.4,320,137,320,103,320C68.6,320,34,320,17,320L0,320Z"></path></svg>
        <hr>
        <!-- lower section -->
        <section>

            <!--            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320"><path fill="#0099ff" fill-opacity="0.3" d="M0,128L17.1,122.7C34.3,117,69,107,103,138.7C137.1,171,171,245,206,256C240,267,274,213,309,197.3C342.9,181,377,203,411,229.3C445.7,256,480,288,514,288C548.6,288,583,256,617,256C651.4,256,686,288,720,293.3C754.3,299,789,277,823,245.3C857.1,213,891,171,926,128C960,85,994,43,1029,48C1062.9,53,1097,107,1131,160C1165.7,213,1200,267,1234,272C1268.6,277,1303,235,1337,213.3C1371.4,192,1406,192,1423,192L1440,192L1440,0L1422.9,0C1405.7,0,1371,0,1337,0C1302.9,0,1269,0,1234,0C1200,0,1166,0,1131,0C1097.1,0,1063,0,1029,0C994.3,0,960,0,926,0C891.4,0,857,0,823,0C788.6,0,754,0,720,0C685.7,0,651,0,617,0C582.9,0,549,0,514,0C480,0,446,0,411,0C377.1,0,343,0,309,0C274.3,0,240,0,206,0C171.4,0,137,0,103,0C68.6,0,34,0,17,0L0,0Z"></path></svg>-->

            <!-- Team Information -->
            <div class="container" id="team" style="margin-top:100px">
                <div class="row bg-white">
                    <div class="row"><h1 class="bg-light text-blue text-center text-uppercase">Meet the Team</h1></div>&nbsp&nbsp
                    <br>
                    <div class="row mt-5">
                        <p class="bg-light text-muted text-center text-uppercase">
                            We are a team of two enthusiastic members currently pursuing our undergrad in the Department of 
                            Computer Science and Engineering, Shahjalal University of Science and Engineering. This project was 
                            a part of our course work in the course of "CSE344 : Web Technologies".
                        </p></div>&nbsp;&nbsp;
                    <div class="row" style="margin-top:100px; margin-left: 110px">
                        <div class="col left-column">
                            <div class="developer">
                                <img src="${pageContext.request.contextPath}/images/raha.jpg" class="rounded-circle img-fluid float-start" alt="Responsive image" style="width:400px;height:400px">
                            </div>
                        </div>
                        <div class="col right-column">
                            <div class="developer">
                                <img src="${pageContext.request.contextPath}/images/alve.jpg" class="rounded-circle img-fluid float-start" alt="Responsive image" style="width:400px;height:400px">
                            </div>
                        </div>
                    </div>
                    <div class="row mb-3" style="margin-top:100px; margin-left: 110px">
                        <div class="col left-column">
                            <div class="developer" style="margin-left:60px">
                                <h3>
                                    Farzana Reefat Raha<br>
                                    <p class="text-muted" style="font-size:12px">
                                        <i>Registration Number : 2019331078<br>CSE,SUST.</i>
                                    </p>
                                </h3>
                            </div>
                        </div>
                        <div class="col right-column">
                            <div class="developer" style="margin-left:60px">
                                <h3>
                                    Md Shibly Rahman Alve
                                    <p class="text-muted" style="font-size:12px">
                                        <i>Registration Number : 2019331050<br>CSE,SUST.</i>
                                    </p>
                                </h3>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </section>
        <%@include file="footer.jsp"%>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    </body>
</html>
