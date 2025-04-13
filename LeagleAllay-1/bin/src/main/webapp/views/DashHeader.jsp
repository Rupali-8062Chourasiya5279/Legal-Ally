<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
    String email = (String) session.getAttribute("email");
    String role = (String) session.getAttribute("role");
    if(email==null){
    	response.sendRedirect("/user/home");
    	return;
    }else{%>
    <script type="text/javascript">
    function login(){
    	alert("Login Successfull.......");
    }
    login();
    </script>
<%}%>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand" href="/home.jsp">Kanun</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarContent">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarContent">
        <ul class="navbar-nav ml-auto">

            <li class="nav-item">
                <a class="nav-link" href="/user/home">Home</a>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="/user/about">About</a>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="/user/contact">Contact</a>
            </li>

            <% if (email != null && role != null) { %>

                <li class="nav-item">
                    <a class="nav-link" href="/user/dashboard">Dashboard</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="/user/profile">Profile</a>
                </li>

                <% if ("client".equals(role)) { %>
                    <li class="nav-item">
                        <a class="nav-link" href="/user/team">Find Lawyer</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/user/portfolio">My Consultations</a>
                    </li>
                <% } else if ("lawyer".equals(role)) { %>
                    <li class="nav-item">
                        <a class="nav-link" href="/user/clientRequests">Client Requests</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/user/appointments">Appointments</a>
                    </li>
                <% } %>

                <li class="nav-item">
                    <a class="nav-link" href="/user/logout">Logout</a>
                </li>

            <% } else { %>

                <li class="nav-item">
                    <a class="nav-link" href="/login.jsp">Login</a>
                </li>

                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="registerDropdown" role="button" data-toggle="dropdown">
                        Register
                    </a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="/user/clientRegister">Client</a>
                        <a class="dropdown-item" href="/user/lawyerRegister">Lawyer</a>
                    </div>
                </li>

            <% } %>
        </ul>
    </div>
</nav>
<!-- Page Header Start -->
            <div class="page-header">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <h2>DashBoard</h2>
                        </div>
                        <div class="col-12">
                            <a href="">Welcome</a>
                            <a href="">to <%=role %> Dashboard</a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Page Header End -->
</body>
</html>