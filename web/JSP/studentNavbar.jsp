<style>
    .dash{
        border-bottom: 3px solid #950101;
    }
</style>

<!-- navigation bar -->
<nav class="navbar navbar-expand-lg  bg-light fixed-top">
    <div class="container-fluid">
        <!-- logo -->
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
                <li class="nav-item"><a class="nav-link" href="/CourseManagementSystem/StudentDashboard" style="font-family:'Noto Sans'">Dashboard</a></li>
                <li class="nav-item"><a class="nav-link" href="/CourseManagementSystem/CourseCatalog" style="font-family:'Noto Sans'">Catalog</a></li>
                <!-- getting student's name after login -->
                <% String studentName = (String) request.getSession().getAttribute("user"); %>
                <li class="nav-item"><a class="nav-link" href="#" id="student-name" style="font-family:'Noto Sans'">Student Name</a></li>
                <script>
                    document.getElementById("student-name").textContent = '<%= studentName %>';
                    const activePage = window.location.pathname;
                    document.querySelectorAll('li a').forEach(link => {
                        if ((link.href.substring(21)) === activePage) {
                            link.classList.add('active');
                            link.classList.add('dash');
                        }
                    })
                </script>

                <li class="nav-item"><a class="nav-link" href="./LogOut" style="font-family:'Noto Sans'">Log Out</a></li>
            </ul>
        </div>
    </div>
</nav>