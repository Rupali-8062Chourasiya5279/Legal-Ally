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
        <link href="https://fonts.googleapis.com/css2?family=EB+Garamond:ital,wght@1,600;1,700;1,800&family=Roboto:wght@400;500&display=swap" rel="stylesheet"> 
        
        <!-- CSS Libraries -->
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="/views/lib/animate/animate.min.css" rel="stylesheet">
        <link href="/views/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

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
                            <h2>Case Studies</h2>
                        </div>
                        <div class="col-12">
                            <a href="">Home</a>
                            <a href="">Case Studies</a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Page Header End -->


            <!-- Portfolio Start -->
            <div class="portfolio">
                <div class="container">
                    <div class="section-header">
                        <h2>Our Case Studies</h2>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <ul id="portfolio-flters">
                                <li data-filter="*" class="filter-active">All</li>
                                <li data-filter=".first">Civil</li>
                                <li data-filter=".second">Criminal</li>
                                <li data-filter=".third">Business</li>
                            </ul>
                        </div>
                    </div>
                    <div class="row portfolio-container">
                        <div class="col-lg-4 col-md-6 col-sm-12 portfolio-item first">
                            <div class="portfolio-wrap">
                                <img src="/views/img/portfolio-1.jpg" alt="Portfolio Image">
                                <figure>
                                    <p>Crime</p>
                                    <a href="#">Murder Case</a>
                                    <span>01-Jan-2045</span>
                                </figure>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-sm-12 portfolio-item second">
                            <div class="portfolio-wrap">
                                <img src="/views/img/portfolio-2.jpg" alt="Portfolio Image">
                                <figure>
                                    <p>Politics</p>
                                    <a href="#">Political Case</a>
                                    <span>01-Jan-2045</span>
                                </figure>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-sm-12 portfolio-item third">
                            <div class="portfolio-wrap">
                                <img src="/views/img/portfolio-3.jpg" alt="Portfolio Image">
                                <figure>
                                    <p>Family</p>
                                    <a href="#">Divorce Case</a>
                                    <span>01-Jan-2045</span>
                                </figure>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-sm-12 portfolio-item first">
                            <div class="portfolio-wrap">
                                <img src="/views/img/portfolio-4.jpg" alt="Portfolio Image">
                                <figure>
                                    <p>Finance</p>
                                    <a href="#">Money Laundering</a>
                                    <span>01-Jan-2045</span>
                                </figure>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-sm-12 portfolio-item second">
                            <div class="portfolio-wrap">
                                <img src="/views/img/portfolio-5.jpg" alt="Portfolio Image">
                                <figure>
                                    <p>Business</p>
                                    <a href="#">Weber & Partners</a>
                                    <span>01-Jan-2045</span>
                                </figure>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-sm-12 portfolio-item third">
                            <div class="portfolio-wrap">
                                <img src="/views/img/portfolio-6.jpg" alt="Portfolio Image">
                                <figure>
                                    <p>Finance</p>
                                    <a href="#">Property Sharing Case</a>
                                    <span>01-Jan-2045</span>
                                </figure>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12 load-more">
                            <a class="btn" href="#">Load More</a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Portfolio Start -->


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
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
        <script src="/views/lib/easing/easing.min.js"></script>
        <script src="/views/lib/owlcarousel/owl.carousel.min.js"></script>
        <script src="/views/lib/isotope/isotope.pkgd.min.js"></script>

        <!-- Template Javascript -->
        <script src="/views/js/main.js"></script>
    </body>
</html>
