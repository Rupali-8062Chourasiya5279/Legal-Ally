<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Kanun - Law Firm Website Template</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="Law Firm Website Template" name="keywords">
<meta content="Law Firm Website Template" name="description">

<!-- Favicon -->
<link href="/views/img/favicon.ico" rel="icon">

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=EB+Garamond:ital,wght@1,600;1,700;1,800&family=Roboto:wght@400;500&display=swap"
	rel="stylesheet">

<!-- CSS Libraries -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
	rel="stylesheet">
<link href="/views/lib/animate/animate.min.css" rel="stylesheet">
<link href="/views/lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">

<!-- Template Stylesheet -->
<link href="/views/css/style.css" rel="stylesheet">
</head>

<body>
	<div class="wrapper">
		<jsp:include page="header.jsp"></jsp:include>


		<!-- Page Header Start -->
		<div class="page-header">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<h2>Attorneys</h2>
					</div>
					<div class="col-12">
						<a href="">Home</a> <a href="">Attorneys</a>
					</div>
				</div>
			</div>
		</div>
		<!-- Page Header End -->


		<!-- About Start -->
		<div class="about">
			<div class="container">
				<div class="row align-items-center">
					<div class="col-lg-5 col-md-6">
						<div class="about-img">
							<img src="/views/img/about.jpg" alt="Image">
						</div>
					</div>
					<div class="col-lg-7 col-md-6">
						<div class="section-header">
							<h2>About Attorneys</h2>
						</div>
						<div class="about-text">
							<p>At Kanun, our attorneys bring decades of legal expertise,
								strategic thinking, and unwavering commitment to every client we
								serve. From corporate litigation to personal legal matters, our
								firm is equipped to handle even the most complex cases with
								professionalism and precision.</p>
							<p>Our team of attorneys is not just experienced—they are
								passionate advocates who work tirelessly to protect your rights
								and interests. With a client-focused approach and a strong
								ethical foundation, we strive to deliver results that not only
								meet but exceed expectations.</p>
							<a class="btn" href="">Learn More</a>
						</div>

					</div>
				</div>
			</div>
		</div>
		<!-- About End -->


		<!-- Team Start -->
		<div class="team">
			<div class="container">
				<div class="section-header">
					<h2>Meet Our Expert Attorneys</h2>
				</div>
				<div class="row">
					<div class="col-lg-3 col-md-6">
						<div class="team-item">
							<div class="team-img">
								<a href="/user/lawyerProfile?id=2"><img src="/views/img/team-1.jpg" alt="Team Image"></a>
							</div>
							<div class="team-text">
								<h2>Adam Phillips</h2>
								<p>Business Consultant</p>
								<div class="team-social">
									<a class="social-tw" href=""><i class="fab fa-twitter"></i></a>
									<a class="social-fb" href=""><i class="fab fa-facebook-f"></i></a>
									<a class="social-li" href=""><i class="fab fa-linkedin-in"></i></a>
									<a class="social-in" href=""><i class="fab fa-instagram"></i></a>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-md-6">
						<div class="team-item">
							<div class="team-img">
								<a href="/user/lawyerProfile?id=3"><img src="/views/img/team-2.jpg" alt="Team Image"></a>
							</div>
							<div class="team-text">
								<h2>Dylan Adams</h2>
								<p>Criminal Consultant</p>
								<div class="team-social">
									<a class="social-tw" href=""><i class="fab fa-twitter"></i></a>
									<a class="social-fb" href=""><i class="fab fa-facebook-f"></i></a>
									<a class="social-li" href=""><i class="fab fa-linkedin-in"></i></a>
									<a class="social-in" href=""><i class="fab fa-instagram"></i></a>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-md-6">
						<div class="team-item">
							<div class="team-img">
								<a href="/user/lawyerProfile?id=4"><img src="/views/img/team-3.jpg" alt="Team Image"></a>
							</div>
							<div class="team-text">
								<h2>Gloria Edwards</h2>
								<p>Divorce Consultant</p>
								<div class="team-social">
									<a class="social-tw" href=""><i class="fab fa-twitter"></i></a>
									<a class="social-fb" href=""><i class="fab fa-facebook-f"></i></a>
									<a class="social-li" href=""><i class="fab fa-linkedin-in"></i></a>
									<a class="social-in" href=""><i class="fab fa-instagram"></i></a>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-md-6">
						<div class="team-item">
							<div class="team-img">
								<a href="/user/lawyerProfile?id=5"><img src="/views/img/team-4.jpg" alt="Team Image"></a>
							</div>
							<div class="team-text">
								<h2>Josh Dunn</h2>
								<p>Immigration Consultant</p>
								<div class="team-social">
									<a class="social-tw" href=""><i class="fab fa-twitter"></i></a>
									<a class="social-fb" href=""><i class="fab fa-facebook-f"></i></a>
									<a class="social-li" href=""><i class="fab fa-linkedin-in"></i></a>
									<a class="social-in" href=""><i class="fab fa-instagram"></i></a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Team End -->


		<!-- Newsletter Start -->
		<div class="newsletter">
			<div class="container">
				<div class="section-header">
					<h2>Subscribe Our Newsletter</h2>
				</div>
				<div class="form">
					<input class="form-control" placeholder="Email here">
					<button class="btn">Submit</button>
				</div>
			</div>
		</div>
		<!-- Newsletter End -->


		<jsp:include page="footer.jsp"></jsp:include>

		<a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>
	</div>

	<!-- JavaScript Libraries -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
	<script src="/views/lib/easing/easing.min.js"></script>
	<script src="/views/lib/owlcarousel/owl.carousel.min.js"></script>
	<script src="/views/lib/isotope/isotope.pkgd.min.js"></script>

	<!-- Template Javascript -->
	<script src="/views/js/main.js"></script>
</body>
</html>
