	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	    pageEncoding="ISO-8859-1"%>
	<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Insert title here</title>
	<link href="img/favicon.ico" rel="icon">
	<link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Roboto:wght@500;700&display=swap" rel="stylesheet"> 
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    
	<style>
		 :root {
      --primary: #ebd216;
      --secondary: #191C24;
      --light: #6C7293;
      --dark: #000000;
    }

    body {
      background-color: var(--dark);
      color: var(--light);
      font-family: 'Open Sans', sans-serif;
    }

    h1, h2, h3, h4, h5, h6 {
      font-family: 'Roboto', sans-serif;
      color: #FFFFFF;
      font-weight: 700;
    }

    input {
      border-color: var(--dark);
      background-color: var(--dark);
    }

    .nav-tabs {
      border-color: var(--dark);
    }

    .nav-tabs .nav-link:hover {
      border-color: var(--dark);
    }

    .nav-tabs .nav-link.active {
      border-color: var(--dark);
    }

    .list-group {
      color: var(--light);
      border-color: var(--dark);
    }

    .list-group-item {
      border-color: var(--dark);
    }

    .border-radius {
      border-radius: 5px;
    }

    a {
      text-decoration: none;
    }

    .sidebar .navbar .navbar-nav .nav-link {
        padding: 7px 20px;
        color: var(--light);
        font-weight: 500;
        border-left: 3px solid var(--secondary);
        border-radius: 0 30px 30px 0;
        outline: none;
    }

    .sidebar .navbar .navbar-nav .nav-link:hover,
    .sidebar .navbar .navbar-nav .nav-link.active {
        color: var(--primary);
        background: var(--dark);
        border-color: var(--primary);
    }

    .sidebar .navbar .navbar-nav .nav-link i {
        width: 40px;
        height: 40px;
        display: inline-flex;
        align-items: center;
        justify-content: center;
        background: var(--dark);
        border-radius: 40px;
    }

    .sidebar .navbar .navbar-nav .nav-link:hover i,
    .sidebar .navbar .navbar-nav .nav-link.active i {
        background: var(--secondary);
    }

    .sidebar .navbar .dropdown-toggle::after {
        position: absolute;
        top: 15px;
        right: 15px;
        border: none;
        content: "\f107";
        font-family: "Font Awesome 5 Free";
        font-weight: 900;
        transition: .5s;
    }

    .sidebar .navbar .dropdown-toggle[aria-expanded=true]::after {
        transform: rotate(-180deg);
    }

    .sidebar .navbar .dropdown-item {
        padding-left: 25px;
        border-radius: 0 30px 30px 0;
        color: var(--light);
    }

    .sidebar .navbar .dropdown-item:hover,
    .sidebar .navbar .dropdown-item.active {
        background: var(--dark);
    }

    .content .navbar .navbar-nav .nav-link {
        margin-left: 25px;
        padding: 12px 0;
        color: var(--light);
        outline: none;
    }

    .content .navbar .navbar-nav .nav-link:hover,
    .content .navbar .navbar-nav .nav-link.active {
        color: var(--primary);
    }

    .content .navbar .sidebar-toggler,
    .content .navbar .navbar-nav .nav-link i {
        width: 40px;
        height: 40px;
        display: inline-flex;
        align-items: center;
        justify-content: center;
        background: var(--dark);
        border-radius: 40px;
    }

    .content .navbar .dropdown-item {
        color: var(--light);
    }

    .content .navbar .dropdown-item:hover,
    .content .navbar .dropdown-item.active {
        background: var(--dark);
    }

    .content .navbar .dropdown-toggle::after {
        margin-left: 6px;
        vertical-align: middle;
        border: none;
        content: "\f107";
        font-family: "Font Awesome 5 Free";
        font-weight: 900;
        transition: .5s;
    }

    .content .navbar .dropdown-toggle[aria-expanded=true]::after {
        transform: rotate(-180deg);
    }

    @media (max-width: 575.98px) {
        .content .navbar .navbar-nav .nav-link {
            margin-left: 15px;
        }
    }
		
	</style>
	</head>
	<body>
		
	<div class="sidebar pe-4 pb-3">
            <nav class="navbar bg-secondary navbar-dark">
                <a href="index.html" class="navbar-brand mx-4 mb-3">
                    <h3 class="text-primary"><i class="fa fa-user-edit me-2"></i>DarkPan</h3>
                </a>
                <div class="d-flex align-items-center ms-4 mb-4">
                    <div class="position-relative">
                        <img class="rounded-circle" src="img/user.jpg" alt="" style="width: 40px; height: 40px;">
                        <div class="bg-success rounded-circle border border-2 border-white position-absolute end-0 bottom-0 p-1"></div>
                    </div>
                    <div class="ms-3">
                        <h6 class="mb-0">Jhon Doe</h6>
                        <span>Admin</span>
                    </div>
                </div>
                <div class="navbar-nav w-100">
                    <a href="index.html" class="nav-item nav-link active"><i class="fa fa-tachometer-alt me-2"></i>Dashboard</a>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="fa fa-laptop me-2"></i>Elements</a>
                        <div class="dropdown-menu bg-transparent border-0">
                            <a href="button.html" class="dropdown-item">Buttons</a>
                            <a href="typography.html" class="dropdown-item">Typography</a>
                            <a href="element.html" class="dropdown-item">Other Elements</a>
                        </div>
                    </div>
                    <a href="widget.html" class="nav-item nav-link"><i class="fa fa-th me-2"></i>Widgets</a>
                    <a href="form.html" class="nav-item nav-link"><i class="fa fa-keyboard me-2"></i>Forms</a>
                    <a href="table.html" class="nav-item nav-link"><i class="fa fa-table me-2"></i>Tables</a>
                    <a href="chart.html" class="nav-item nav-link"><i class="fa fa-chart-bar me-2"></i>Charts</a>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="far fa-file-alt me-2"></i>Pages</a>
                        <div class="dropdown-menu bg-transparent border-0">
                            <a href="signin.html" class="dropdown-item">Sign In</a>
                            <a href="signup.html" class="dropdown-item">Sign Up</a>
                            <a href="404.html" class="dropdown-item">404 Error</a>
                            <a href="blank.html" class="dropdown-item">Blank Page</a>
                        </div>
                    </div>
                </div>
            </nav>
        </div>
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/chart/chart.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="lib/tempusdominus/js/moment.min.js"></script>
    <script src="lib/tempusdominus/js/moment-timezone.min.js"></script>
    <script src="lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>
	</body>
	</html>