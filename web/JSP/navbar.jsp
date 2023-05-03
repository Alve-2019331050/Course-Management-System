<nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">
            <img src="${pageContext.request.contextPath}/images/logo.png" alt="SUST" style="width:60px;height:60px"> 
            &nbsp;&nbsp;Course Management System
        </a>
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" href="./AdminHome">Home</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="./RegisterTeacher">Register Teacher</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="./RegisterStudent">Register Student</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="./ManageCourse">Manage Course</a>
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
</nav>
<script>
    const activePage = window.location.pathname;
    document.querySelectorAll('li a').forEach(link => {
        if((link.href.substring(21))===activePage){
            link.classList.add('active');
        }
    })
</script>