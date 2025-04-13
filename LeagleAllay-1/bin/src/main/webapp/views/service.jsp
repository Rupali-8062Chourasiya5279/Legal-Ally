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
<style type="text/css">
.feature-img img {
    width: 100%;
    height: auto;
    transition: transform 0.4s ease, box-shadow 0.4s ease;
    border-radius: 8px;
}

.feature-img img:hover {
    transform: scale(1.05);
    box-shadow: 0 10px 20px rgba(0, 0, 0, 0.3);
}

</style>
</head>

<body>
	<div class="wrapper">
		<jsp:include page="header.jsp"></jsp:include>

		<!-- Page Header Start -->
		<div class="page-header">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<h2>Practices Areas</h2>
					</div>
					<div class="col-12">
						<a href="">Home</a> <a href="">Practices Areas</a>
					</div>
				</div>
			</div>
		</div>
		<!-- Page Header End -->

		<!-- Service Start -->
<div class="service">
    <div class="container">
        <div class="section-header">
            <h2>Our Practices Areas</h2>
        </div>
        <div class="row">
            <div class="col-lg-4 col-md-6">
                <div class="service-item">
                    <div class="service-icon">
                        <i class="fa fa-landmark"></i>
                    </div>
                    <h3>Civil Law</h3>
                    <p>We handle disputes between individuals and organizations, including property issues, contracts, and personal injury claims.</p>
                    <form action="/user/lawDetails" method="get">
                        <input type="hidden" name="id" value="civil">
                        <a href="#" onclick="event.preventDefault(); this.closest('form').submit();" class="btn">Learn More</a>
                    </form>
                </div>
            </div>

            <div class="col-lg-4 col-md-6">
                <div class="service-item">
                    <div class="service-icon">
                        <i class="fa fa-users"></i>
                    </div>
                    <h3>Family Law</h3>
                    <p>Our family law experts provide assistance in matters like divorce, child custody, alimony, and adoption procedures.</p>
                    <form action="/user/lawDetails" method="get">
                        <input type="hidden" name="id" value="family">
                        <a href="#" onclick="event.preventDefault(); this.closest('form').submit();" class="btn">Learn More</a>
                    </form>
                </div>
            </div>

            <div class="col-lg-4 col-md-6">
                <div class="service-item">
                    <div class="service-icon">
                        <i class="fa fa-hand-holding-usd"></i>
                    </div>
                    <h3>Business Law</h3>
                    <p>We offer legal support for businesses, including contract drafting, mergers and acquisitions, and regulatory compliance.</p>
                    <form action="/user/lawDetails" method="get">
                        <input type="hidden" name="id" value="business">
                        <a href="#" onclick="event.preventDefault(); this.closest('form').submit();" class="btn">Learn More</a>
                    </form>
                </div>
            </div>

            <div class="col-lg-4 col-md-6">
                <div class="service-item">
                    <div class="service-icon">
                        <i class="fa fa-graduation-cap"></i>
                    </div>
                    <h3>Education Law</h3>
                    <p>We represent students, parents, and educational institutions in matters of academic rights, policies, and discrimination.</p>
                    <form action="/user/lawDetails" method="get">
                        <input type="hidden" name="id" value="education">
                        <a href="#" onclick="event.preventDefault(); this.closest('form').submit();" class="btn">Learn More</a>
                    </form>
                </div>
            </div>

            <div class="col-lg-4 col-md-6">
                <div class="service-item">
                    <div class="service-icon">
                        <i class="fa fa-gavel"></i>
                    </div>
                    <h3>Criminal Law</h3>
                    <p>Our criminal defense attorneys protect your rights and provide representation in cases involving theft, assault, or fraud.</p>
                    <form action="/user/lawDetails" method="get">
                        <input type="hidden" name="id" value="criminal">
                        <a href="#" onclick="event.preventDefault(); this.closest('form').submit();" class="btn">Learn More</a>
                    </form>
                </div>
            </div>

            <div class="col-lg-4 col-md-6">
                <div class="service-item">
                    <div class="service-icon">
                        <i class="fa fa-globe"></i>
                    </div>
                    <h3>Cyber Law</h3>
                    <p>We deal with cybercrime, data protection, and online fraud, ensuring your digital rights and privacy are safeguarded.</p>
                    <form action="/user/lawDetails" method="get">
                        <input type="hidden" name="id" value="cyber">
                        <a href="#" onclick="event.preventDefault(); this.closest('form').submit();" class="btn">Learn More</a>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Service End -->

		<!-- Feature Start -->
		<div class="feature">
			<div class="container">
				<div class="row">
					<div class="col-md-7">
						<div class="section-header">
							<h2>Why Choose Us</h2>
						</div>
						<div class="row align-items-center feature-item">
							<div class="col-5">
								<div class="feature-icon">
									<i class="fa fa-gavel"></i>
								</div>
							</div>
							<div class="col-7">
								<h3>Best law practices</h3>
								<p>We follow industry-leading practices to ensure the highest level of professionalism, ethics, and legal excellence.</p>
							</div>
						</div>
						<div class="row align-items-center feature-item">
							<div class="col-5">
								<div class="feature-icon">
									<i class="fa fa-balance-scale"></i>
								</div>
							</div>
							<div class="col-7">
								<h3>Efficiency & Trust</h3>
								<p>Our team prioritizes transparency and timely execution, building trust with each client through clear communication.</p>
							</div>
						</div>
						<div class="row align-items-center feature-item">
							<div class="col-5">
								<div class="feature-icon">
									<i class="far fa-smile"></i>
								</div>
							</div>
							<div class="col-7">
								<h3>Results you deserve</h3>
								<p>We work tirelessly to deliver the outcomes that serve your best interests, both legally and personally.</p>
							</div>
						</div>
					</div>
					<div class="col-md-5">
						<div class="feature-img">
							<img src="/views/img/feature.jpg" alt="Feature">
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Feature End -->
	</div>

	<!-- JavaScript Libraries -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
	<script src="/views/lib/easing/easing.min.js"></script>
	<script src="/views/lib/owlcarousel/owl.carousel.min.js"></script>
	<script src="/views/lib/isotope/isotope.pkgd.min.js"></script>

	<!-- Template Javascript -->
	<script src="/views/js/main.js"></script>
</body>
</html>
