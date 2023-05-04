<!-- navigation bar -->
<nav class="navbar navbar-expand-lg  bg-light fixed-top">
    <div class="container-fluid">
        <!-- logo -->
        <a href="#" class="navbar-brand">
            <img src="${pageContext.request.contextPath}/images/logo.png" alt="sust logo" style="width:60px;height:60px">
            &nbsp;&nbsp;Course Management System
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item"><a class="nav-link" href="/CourseManagementSystem/StudentDashboard">Dashboard</a></li>
                <li class="nav-item"><a class="nav-link" href="/CourseManagementSystem/CourseCatalog">Catalog</a></li>
                <!-- getting student's name after login -->
                <% String studentName = (String) request.getSession().getAttribute("user"); %>
                <li class="nav-item"><a class="nav-link" href="#" id="student-name">Student Name</a></li>
                <script>
                            document.getElementById("student-name").textContent = '<%= studentName %>';
                </script>

                <li class="nav-item"><a class="nav-link" href="./LogOut">Log Out</a></li>
            </ul>
        </div>
    </div>
</nav>