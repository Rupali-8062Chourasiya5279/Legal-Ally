<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Client Registration</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    
    <!-- CSS -->
    <link href="/views/css/style.css" rel="stylesheet">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="wrapper">
    <jsp:include page="header.jsp"></jsp:include>

    <div class="page-header">
        <div class="container">
            <h2>Client Registration</h2>
        </div>
    </div>

    <div class="contact">
        <div class="container">
            <div class="contact-form">
                <form action="/user/registerClient" method="post" onsubmit="return validateClientForm();">
                    <div class="form-group">
                        <input type="text" name="name" id="name" class="form-control" placeholder="Your Name" required />
                        <small id="nameError" class="text-danger"></small>
                    </div>
                    <div class="form-group">
                        <input type="email" name="email" id="email" class="form-control" placeholder="Your Email" required />
                        <small id="emailError" class="text-danger"></small>
                    </div>
                    <div class="form-group">
                        <input type="password" name="password" id="password" class="form-control" placeholder="Your Password" required />
                        <small id="passwordError" class="text-danger"></small>
                    </div>
                    <div class="form-group">
                        <input type="password" name="cpassword" id="cpassword" class="form-control" placeholder="Confirm Your Password" required />
                        <small id="cpasswordError" class="text-danger"></small>
                    </div>
                    <div class="form-group">
                        <input type="text" name="phone" id="phone" class="form-control" placeholder="Your Phone" required />
                        <small id="phoneError" class="text-danger"></small>
                    </div>
                    <div>
                        <button class="btn btn-dark" type="submit">Register as Client</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <jsp:include page="footer.jsp"></jsp:include>
</div>

<!-- JavaScript Validation -->
<script>
    function validateClientForm() {
        let isValid = true;

        // Clear all error messages
        ["name", "email", "password", "cpassword", "phone"].forEach(id => {
            document.getElementById(id + "Error").innerText = "";
        });

        // Input values
        const name = document.getElementById("name").value.trim();
        const email = document.getElementById("email").value.trim();
        const password = document.getElementById("password").value;
        const cpassword = document.getElementById("cpassword").value;
        const phone = document.getElementById("phone").value.trim();

        // Name: Only letters/spaces, at least 2 chars, at least 1 uppercase & 1 lowercase
        const nameRegex = /^(?=.*[a-z])(?=.*[A-Z])[A-Za-z\s]{2,}$/;
        if (!nameRegex.test(name)) {
            document.getElementById("nameError").innerText = "Name must have at least 1 uppercase and 1 lowercase letter.";
            isValid = false;
        }

        // Email format
        const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        if (!emailRegex.test(email)) {
            document.getElementById("emailError").innerText = "Invalid email format.";
            isValid = false;
        }

        // Password: min 6, one upper, one lower, one digit, one special char
        const passwordRegex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[\W_]).{6,}$/;
        if (!passwordRegex.test(password)) {
            document.getElementById("passwordError").innerText = "Password must be 6+ chars, with uppercase, lowercase, digit & special char.";
            isValid = false;
        }

        // Confirm password match
        if (password !== cpassword) {
            document.getElementById("cpasswordError").innerText = "Passwords do not match.";
            isValid = false;
        }

        // Phone: 10 digits, not starting with 0, not all same digits
        const phoneRegex = /^[1-9][0-9]{9}$/;
        const sameDigit = /^(\d)\1{9}$/;
        if (!phoneRegex.test(phone)) {
            document.getElementById("phoneError").innerText = "Phone must be 10 digits and not start with 0.";
            isValid = false;
        } else if (sameDigit.test(phone)) {
            document.getElementById("phoneError").innerText = "Phone number cannot be all same digits.";
            isValid = false;
        }

        return isValid;
    }
</script>
</body>
</html>
