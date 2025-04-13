<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String email1 = (String) session.getAttribute("email");
    if(email1==null){
    response.setHeader("Cache-Control", "No-Cache");
    response.setHeader("Cache-Control", "No-Store");
    response.sendRedirect("/user/login");
    }
    %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Dashboard | Kanun</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="/views/css/style.css" rel="stylesheet">
</head>
<body>

    <%-- Include header (optional, for navigation/menu) --%>
    <%@ include file="DashHeader.jsp" %>
<form action="/user/team" method="post">
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6 bg-light p-5 shadow rounded text-center">
                <p class="lead">Your email: <strong><%= email %></strong></p>
                <i class="fas fa-user-shield fa-3x text-dark mt-3"></i><br/><br/>
                <% if ("client".equals(role)) { %>
                    <div class="ml-auto">
                    <a class="btn btn-primary" href="/user/team">Find Lawyer</a>
                </div>
                <% } %>
            </div>
        </div>
    </div>
    </form>
<jsp:include page="footer.jsp"></jsp:include>
    <!-- Bootstrap and jQuery -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
</body>
</html>
