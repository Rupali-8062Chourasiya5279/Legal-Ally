<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- Top Bar Start -->
<div class="top-bar">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-3">
                <div class="logo">
                    <a href="/user/home">
                        <h1>Kanun</h1>
                    </a>
                </div>
            </div>
            <div class="col-lg-9">
                <div class="top-bar-right">
                    <div class="text">
                        <h2>8:00 - 9:00</h2>
                        <p>Opening Hour Mon - Fri</p>
                    </div>
                    <div class="text">
                        <h2>+123 456 7890</h2>
                        <p>Call Us For Free Consultation</p>
                    </div>
                    <div class="social">
                        <a href="#"><i class="fab fa-twitter"></i></a>
                        <a href="#"><i class="fab fa-facebook-f"></i></a>
                        <a href="#"><i class="fab fa-linkedin-in"></i></a>
                        <a href="#"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Top Bar End -->

<!-- Nav Bar Start -->
<div class="nav-bar">
    <div class="container-fluid">
        <nav class="navbar navbar-expand-lg bg-dark navbar-dark">
            <a href="#" class="navbar-brand">MENU</a>
            <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                <div class="navbar-nav mr-auto">
                    <a href="/user/home" class="nav-item nav-link active">Home</a>
                    <a href="/user/about" class="nav-item nav-link">About</a>
                    <a href="/user/service" class="nav-item nav-link">Practice</a>
                    <a href="/user/team" class="nav-item nav-link">Attorneys</a>
                    <a href="/user/portfolio" class="nav-item nav-link">Case Studies</a>
                    <% 
                    String email = (String)session.getAttribute("email");
                    if (email != null) { %>
                    <a class="nav-item nav-link" href="/user/dashboard">Dashboard</a>
                <%} %>
                    <div class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" data-toggle="dropdown">Pages</a>
                        <div class="dropdown-menu">
                            <a href="/user/blog" class="dropdown-item">Blog Page</a>
                            <a href="/user/single" class="dropdown-item">Single Page</a>
                        </div>
                    </div>
                    <a href="/user/login" class="nav-item nav-link">Login</a>
                    
                    <div class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" data-toggle="dropdown">Register</a>
                        <div class="dropdown-menu">
                            <a href="/user/clientRegister" class="dropdown-item">As A Client</a>
                            <a href="/user/lawyerRegister" class="dropdown-item">As A Lawyer</a>
                        </div>
                    </div>
                    <a href="/user/contact" class="nav-item nav-link">Contact</a>
                </div>
                <div class="ml-auto">
                    <a class="btn btn-danger" href="/user/logout">Logout</a>
                </div>
                <div class="ml-auto">
                    <a class="btn btn-primary" href="/user/appointment">Get Appointment</a>
                </div>
            </div>
        </nav>
    </div>
</div>
<!-- Nav Bar End -->

