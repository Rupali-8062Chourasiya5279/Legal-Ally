<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Lawyer Registration</title>
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
            <h2>Lawyer Registration</h2>
        </div>
    </div>

    <div class="contact">
        <div class="container">
            <div class="contact-form">
                <form action="/user/registerLawyer" enctype="multipart/form-data" method="post" onsubmit="return validateLawyerForm();">
                    <div class="form-group">
                        <input type="text" name="name" id="name" class="form-control" placeholder="Your Name" required />
                        <small id="nameError" class="text-danger"></small>
                    </div>
                    <div class="form-group">
                        <input type="text" name="specialization" id="specialization" class="form-control" placeholder="Specialization" required />
                        <small id="specializationError" class="text-danger"></small>
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
                    <!--  <div class="form-group">
                     	<label>Upload Profile Photo
                     	</label>
                        <input type="file" name="img" id="img" class="form-control" required />
                        <small id="imgerror" class="text-danger"></small>
                    </div> -->
                    <div class="form-group">
    <label for="img" class="font-weight-bold">Upload Profile Photo</label>
    <div class="custom-file">
        <input type="file" class="custom-file-input" id="img" name="file" required>
        <label class="custom-file-label" for="img">Choose file</label>
    </div>
    <small id="imgerror" class="text-danger"></small>
</div>
                    <div>
                        <button class="btn btn-dark" type="submit">Register as Lawyer</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <jsp:include page="footer.jsp"></jsp:include>
</div>

<!-- JavaScript Validation -->
<script>
    function validateLawyerForm() {
        let isValid = true;

        // Clear all error messages
        ["name", "specialization", "email", "password", "cpassword", "phone"].forEach(id => {
            document.getElementById(id + "Error").innerText = "";
        });

        // Input values
        const name = document.getElementById("name").value.trim();
        const specialization = document.getElementById("specialization").value.trim();
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

        // Specialization: Only letters and spaces, min 2 characters
        const specRegex = /^[A-Za-z\s]{2,}$/;
        if (!specRegex.test(specialization)) {
            document.getElementById("specializationError").innerText = "Enter a valid specialization.";
            isValid = false;
        }

        // Email format
        const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        if (!emailRegex.test(email)) {
            document.getElementById("emailError").innerText = "Invalid email format.";
            isValid = false;
        }

        // Password: min 6, one upper, one lower, one digit, one special
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
