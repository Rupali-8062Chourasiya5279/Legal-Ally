<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Profile | Kanun</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="/views/css/style.css" rel="stylesheet">
</head>
<body>

    <%@ include file="header.jsp" %>

    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-8 bg-light p-5 shadow rounded">
                <h3 class="text-center mb-4">Welcome to Your Profile</h3>

                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label><strong>Name:</strong></label>
                        <p>${user.name}</p>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label><strong>Email:</strong></label>
                        <p>${user.email}</p>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label><strong>Phone:</strong></label>
                        <p>${user.phone}</p>
                    </div>

                    <%-- Lawyer specific field --%>
                    <c:if test="${user.specialization != null}">
                        <div class="col-md-6 mb-3">
                            <label><strong>Specialization:</strong></label>
                            <p>${user.specialization}</p>
                        </div>
                    </c:if>

                    <%-- Client specific field --%>
                    <c:if test="${user.booking != null}">
                        <div class="col-md-6 mb-3">
                            <label><strong>Booking Info:</strong></label>
                            <p>${user.booking.details}</p>
                        </div>
                    </c:if>
                </div>

                <div class="text-center mt-4">
                    <a href="/logout" class="btn btn-dark">Logout</a>
                </div>
            </div>
        </div>
    </div>

    <%@ include file="footer.jsp" %>

    <!-- JS Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
</body>
</html>
