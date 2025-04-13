<%@page import="com.example.demo.Entities.Client"%>
<%@page import="com.example.demo.Entities.Lawyer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Lawyer Profile</title>
    <link rel="stylesheet"
        href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
        rel="stylesheet">
    <link href="/views/css/style.css" rel="stylesheet">
    <style>
        .profile-image {
            width: 200px;
            height: 200px;
            object-fit: cover;
            border-radius: 50%;
            border: 4px solid #007bff;
        }
    </style>
</head>
<body>
    <div class="container mt-5">
    <%
    Client client = (Client) session.getAttribute("client");
    boolean showSuccess = client != null && request.getParameter("attempted") != null;
		if (showSuccess) {
		%>
		<div class="alert alert-success text-center" role="alert">
			Request Sent Successfully!</div>
		<%
		}
		%>
        <div class="row justify-content-center">
            <div class="col-md-8 bg-light p-5 shadow rounded">
                <h2 class="text-center text-primary mb-4">Welcome, Lawyer!</h2>
                <%
           
                    Lawyer l = (Lawyer) session.getAttribute("lawyer");
             
                %>

                <!-- Profile Image -->
                <div class="text-center mb-4">
                <img src="data:image/png;base64,<%= java.util.Base64.getEncoder().encodeToString(l.getImage()) %>" alt="Profile Image" style="border-radius: 50%;border: 5px solid #007bff" width="150px" height="150px" alt="Image" />
                </div>

                <!-- Profile Details -->
                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label><strong>Name:</strong></label>
                        <p><%= l.getName() %></p>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label><strong>Email:</strong></label>
                        <p><%= l.getEmail() %></p>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label><strong>Phone:</strong></label>
                        <p><%= l.getPhone() %></p>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label><strong>Specialization:</strong></label>
                        <p><%= l.getSpecialization() %></p>
                    </div>
                </div>

                <%
               
				if (client != null) {
				%>
				<form action="sendReq" method="post" class="text-center mt-4">
					<input type="hidden" name="attempted" value="true" />
					<button type="submit" class="btn btn-dark">Send Request</button>
				</form>

				<%
				}
				%>
            </div>
        </div>
    </div>

    <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
