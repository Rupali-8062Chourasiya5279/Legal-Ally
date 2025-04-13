<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login | Kanun</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="/views/css/style.css" rel="stylesheet">
</head>
<body>

    <%-- Include header.jsp if you modularized header --%>
    <%@ include file="header.jsp" %>

    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6 bg-light p-5 shadow rounded">
                <h3 class="text-center mb-4">Login</h3>
                <form id="loginForm" action="/user/loginTask" method="post" onsubmit="return validateForm();">
                    <div class="form-group">
                        <label for="role">Select Role</label>
                        <select class="form-control" id="role" name="role" required>
                            <option value="">-- Choose Role --</option>
                            <option value="client">Client</option>
                            <option value="lawyer">Lawyer</option>
                        </select>
                        <small id="roleError" class="text-danger"></small>
                    </div>
                    <div class="form-group">
                        <label>Email</label>
                        <input type="email" name="email" id="email" class="form-control" required />
                        <small id="emailError" class="text-danger"></small>
                    </div>
                    <div class="form-group">
                        <label>Password</label>
                        <input type="password" name="password" id="password" class="form-control" required />
                        <small id="passwordError" class="text-danger"></small>
                    </div>
                    <button type="submit" class="btn btn-dark btn-block">Login</button>
                </form>
            </div>
        </div>
    </div>

    <!-- JS Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>

    <!-- JS Validation Script -->
    <script>
        function validateForm() {
            let isValid = true;

            // Reset errors
            document.getElementById("roleError").innerText = "";
            document.getElementById("emailError").innerText = "";
            document.getElementById("passwordError").innerText = "";

            const role = document.getElementById("role").value;
            const email = document.getElementById("email").value.trim();
            const password = document.getElementById("password").value;

            // Role validation
            if (role === "") {
                document.getElementById("roleError").innerText = "Please select a role.";
                isValid = false;
            }

            // Email validation
            const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            if (!emailPattern.test(email)) {
                document.getElementById("emailError").innerText = "Please enter a valid email address.";
                isValid = false;
            }

            // Password validation
            if (password === "") {
                document.getElementById("passwordError").innerText = "Password is required.";
                isValid = false;
            } else if (password.length < 6) {
                document.getElementById("passwordError").innerText = "Password must be at least 6 characters.";
                isValid = false;
            }

            return isValid;
        }
    </script>
</body>
</html>
