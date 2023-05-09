<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Student</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Bruno+Ace+SC&family=Noto+Sans:wght@500&family=Poppins:wght@700&display=swap" rel="stylesheet">
    </head>
    <body style="background-color:#bfc1e0;">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
        <%@include file="navbar.jsp"%>
        <svg width="100%" height="100%" id="svg" viewBox="0 0 1440 390" xmlns="http://www.w3.org/2000/svg" class="transition duration-300 ease-in-out delay-150"><defs><linearGradient id="gradient" x1="0%" y1="50%" x2="100%" y2="50%"><stop offset="5%" stop-color="#ababde"></stop><stop offset="95%" stop-color="#00122d"></stop></linearGradient></defs><path d="M 0,400 C 0,400 0,200 0,200 C 111.28229665071768,227.32057416267943 222.56459330143537,254.64114832535887 317,233 C 411.43540669856463,211.35885167464113 489.02392344497616,140.75598086124398 585,142 C 680.9760765550238,143.24401913875602 795.3397129186602,216.33492822966508 899,223 C 1002.6602870813398,229.66507177033492 1095.617224880383,169.9043062200957 1184,155 C 1272.382775119617,140.0956937799043 1356.1913875598084,170.04784688995215 1440,200 C 1440,200 1440,400 1440,400 Z" stroke="none" stroke-width="0" fill="url(#gradient)" fill-opacity="1" class="transition-all duration-300 ease-in-out delay-150 path-0" transform="rotate(-180 720 200)"></path></svg>
        <div class="shadow card w-50 mx-auto mb-5" style="margin-top: -330px;">
            <div class="h3 card-header text-center">Register Student</div>
            <div class="card-body" style="background-color:#00122d">
                <form action="./RegisterStudent" method="post" class="needs-validation">
                    <div class ="mt-2 mb-2">
                        <label for ="name" class ="form-label text-white">Name:</label>
                        <input type="text" class="form-control" placeholder="Enter name" name="name" required>
                        <div class="valid-feedback">Valid.</div>
                        <div class="invalid-feedback">Please fill out this field.</div>
                    </div>
                    <div class ="mb-2">
                        <label for ="dept" class ="form-label text-white">Department:</label>
                        <input class="form-control" placeholder="Choose department" list="depts" name="dept" required>
                        <datalist id="depts">
                            <option value="CSE">
                            <option value="EEE">
                            <option value="SWE">
                            <option value="FES">
                            <option value="ARC">
                            <option value="CEP">
                            <option value="CEE">
                            <option value="FET">
                            <option value="IPE">
                            <option value="MEE">
                            <option value="PME">
                            <option value="BMB">
                            <option value="GEB">
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
                        <div class="valid-feedback">Valid.</div>
                        <div class="invalid-feedback">Please fill out this field.</div>
                    </div>
                    <div class ="mb-2">
                        <label for ="regno" class ="form-label text-white">Registration No:</label>
                        <input type="number" class="form-control" placeholder="Enter registration no" name="regno" required>
                        <div class="valid-feedback">Valid.</div>
                        <div class="invalid-feedback">Please fill out this field.</div>
                    </div>
                    <div class ="mb-2">
                        <label for ="email" class ="form-label text-white">Email:</label>
                        <input type="email" class="form-control" placeholder="Enter email" name="email" required>
                        <div class="valid-feedback">Valid.</div>
                        <div class="invalid-feedback">Please fill out this field.</div>
                    </div>
                    <div class ="mb-2">
                        <label for ="pwd" class ="form-label text-white">Password:</label>
                        <input type="password" class="form-control" placeholder="Enter password" name="pwd" required>
                        <div class="valid-feedback">Valid.</div>
                        <div class="invalid-feedback">Please fill out this field.</div>
                    </div>
                    <div class="form-check mb-2">
                        <label class="form-check-label text-white">
                            <input class="form-check-input" type="checkbox" name="remember"> Remember me
                        </label>
                    </div>
                    <div class="text-center mb-2">
                        <button type="submit" class="text-center btn text-white" style="background-color:#950101">Submit</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
