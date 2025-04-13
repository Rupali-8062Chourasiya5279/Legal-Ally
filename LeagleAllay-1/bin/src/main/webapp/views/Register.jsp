<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Register | Kanun</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="/views/css/style.css" rel="stylesheet">
</head>
<body>

    <%@ include file="header.jsp" %>

    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6 bg-light p-5 shadow rounded">
                <h3 class="text-center mb-4">Register</h3>
                <form action="/user/register" method="post">
                    <div class="form-group">
                        <label for="role">Select Role</label>
                        <select class="form-control" id="role" name="role" required>
                            <option value="">-- Choose Role --</option>
                            <option value="client">Client</option>
                            <option value="lawyer">Lawyer</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label>Full Name</label>
                        <input type="text" name="fullName" class="form-control" required />
                    </div>
                    <div class="form-group">
                        <label>Email</label>
                        <input type="email" name="email" class="form-control" required />
                    </div>
                    <div class="form-group">
                        <label>Password</label>
                        <input type="password" name="password" class="form-control" required />
                    </div>
                    <button type="submit" class="btn btn-dark btn-block">Register</button>
                </form>
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
</body>
</html>
