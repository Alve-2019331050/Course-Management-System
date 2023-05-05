<style>
    .dash{
        border-bottom: 3px solid #950101;
    }
</style>

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
                    <a class="nav-link" href="./AdminHome" style="font-family:'Noto Sans'">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="./RegisterTeacher" style="font-family:'Noto Sans'">Register Teacher</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="./RegisterStudent" style="font-family:'Noto Sans'">Register Student</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="./ManageCourse" style="font-family:'Noto Sans'">Manage Course</a>
                </li>
                <li class="nav-item dropdown me-2">
                    <button class="nav-link btn" type="button" data-bs-toggle="dropdown">
                        <img src="${pageContext.request.contextPath}/images/admin.png" alt="admin" class="rounded-circle img-fluid" style="width:50px;height:40px">
                    </button>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="./LogOut">Logout</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>
<script>
    const activePage = window.location.pathname;
    document.querySelectorAll('li a').forEach(link => {
        if ((link.href.substring(21)) === activePage) {
            link.classList.add('active');
            link.classList.add('dash');
        }
    })
</script>