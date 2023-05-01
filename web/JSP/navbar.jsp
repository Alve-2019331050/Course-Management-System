<nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">
            <img src="https://images.prothomalo.com/prothomalo-english%2Fimport%2Fmedia%2F2018%2F07%2F13%2F08d5f9f1e56c9ace4cd13e506b7a22fc-SUST-Logo.jpg?auto=format%2Ccompress&w=400&dpr=2.6" alt="SUST" class="rounded-circle img-fluid" style="width:50px;height:40px"> 
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
                    <img src="https://www.kindpng.com/picc/m/173-1731325_person-icon-png-transparent-png.png" alt="admin" class="rounded-circle img-fluid" style="width:50px;height:40px">
                </button>
                <ul class="dropdown-menu">
                    <li><a class="dropdown-item" href="#">Logout</a></li>
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