<%@page import="com.example.demo.Entities.ClientRequests"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Client Requests</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<!-- CSS Libraries -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
<link href="/views/css/style.css" rel="stylesheet">
</head>
<body>
	<div class="wrapper">
		<jsp:include page="header.jsp"></jsp:include>

		<div class="container mt-5">
			<div class="section-header">
				<h2>Client Booking Requests</h2>
			</div>

			<%
				List<ClientRequests> bookings = (List<ClientRequests>)session.getAttribute("allBookings");
				if (bookings != null && !bookings.isEmpty()) {
			%>
			<table class="table table-bordered table-hover table-striped">
				<thead class="thead-dark">
					<tr>
						<th>#</th>
						<th>Client Name</th>
						<th>Lawyer Name</th>
						<th>Status</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>
				<%
					for (ClientRequests b : bookings) {
				%>
					<tr>
						<td><%= b.getId() %></td>
						<td><%= b.getClient().getName() %></td>
						<td><%= b.getClient().getEmail() %></td>
						<td><%= b.getClient().getPhone() %></td>
						<td><%= b.getBookingTime()%></td>
						<td></td>
						<td>
							<a class="btn btn-sm btn-primary" href="/user/viewBooking?id=<%= b.getId() %>">Accept</a>
							<a class="btn btn-sm btn-danger" href="/user/deleteBooking?id=<%= b.getId() %>">Cancel</a>
						</td>
					</tr>
				<%
					}
				%>
				</tbody>
			</table>
			<%
				} else {
			%>
			<div class="alert alert-warning" role="alert">
				No booking requests found.
			</div>
			<%
				}
			%>
		</div>

		<jsp:include page="footer.jsp"></jsp:include>
	</div>

	<!-- JS Libraries -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
</body>
</html>
