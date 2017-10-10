<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en-US">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="author" content="ThemeStarz">

<link href='http://fonts.googleapis.com/css?family=Roboto:300,400,700'
	rel='stylesheet' type='text/css'>
<link href="assets/fonts/font-awesome.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet" href="bootstrap/css/bootstrap.css"
	type="text/css">
<link rel="stylesheet" href="css/bootstrap-select.min.css"
	type="text/css">
<link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
<link rel="stylesheet" href="css/jquery.slider.min.css" type="text/css">
<link rel="stylesheet" href="css/owl.carousel.css" type="text/css">
<link rel="stylesheet" href="css/style.css" type="text/css">

<title>Zoner | About Us</title>

</head>

<body class="page-sub-page page-about-us" id="page-top">
	<!-- Wrapper -->
	<div class="wrapper">
		<!-- Navigation -->
		<div class="navigation">
			<div class="secondary-navigation">
				<div class="container">
					<div class="contact">
						<figure>
							<strong>Phone:</strong>081-567-1717
						</figure>
						<figure>
							<strong>Email:</strong>buntana@outlook.com
						</figure>
					</div>
					<div class="user-area">
						<div class="actions">
							<a href="create-agency.html" class="promoted">Create Agency</a> <a
								href="create-account.html" class="promoted"><strong>Register</strong></a>
							<a href="sign-in.html">Sign In</a>
						</div>
						<div class="language-bar">
							<a href="#" class="active"> <img
								src="<c:url value="/img/flags/gb.png"/>" alt=""></a> <a
								href="#"> <img src="<c:url value="/img/flags/de.png"/>"
								alt=""></a> <a href="#"><img
								src="<c:url value="/img/flags/es.png"/>" alt=""></a></a>
						</div>
					</div>
				</div>
			</div>
			<div class="container">
				<header class="navbar" id="top" role="banner">
					<div class="navbar-header">
						<button class="navbar-toggle" type="button" data-toggle="collapse"
							data-target=".bs-navbar-collapse">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<div class="navbar-brand nav" id="brand">
							<a href="index-google-map-fullscreen"><img
								src="<c:url value="/img/logo1@1x.png"/>" alt="MALL BANGKOK"></a>
						</div>
					</div>
					<nav
						class="collapse navbar-collapse bs-navbar-collapse navbar-right"
						role="navigation">
						<ul class="nav navbar-nav">
							<li class="active"><a href="index-google-map-fullscreen">Homepage</a></li>
							<li class="has-child"><a href="#">Directory</a>
								<ul class="child-navigation">
									<li><a href="#">List By Type</a>
										<ul class="child-navigation">
											<c:forEach var="type" items="${types}">
												<li><a href="list-mall?typename=${type}"><c:out value="${type}"/></a></li>
											</c:forEach>
										</ul></li>
									<li><a href="#">List By Area</a>
										<ul class="child-navigation">
											<c:forEach var="area" items="${areas}">
												<li><a href="list-mall?typename=${area}"><c:out value="${area}"/></a></li>
											</c:forEach>
										</ul>
									</li>
									<li><a href="list-mall?typename=All Malls">List All</a></li>
								</ul></li>
							<li class="has-child"><a href="#">Search Mall</a>
								<ul class="child-navigation">
									<li><a href="loadsearchfilter">Search Filter</a></li>
									<li><a href="index-slider-search-custom">Search Custom</a></li>
								</ul></li>
							<li><a href="parking-user">Parking</a>
								</li>
							<li class="has-child"><a href="#">Blog</a>
								<ul class="child-navigation">
									<c:forEach var="val" items="${blogtype}">
										<li><a href="blog?articletype=${val}"><c:out value="${val}"/></a></li>
									</c:forEach>
								</ul></li>
							<li><a href="agency-detail">Contact</a></li>
							<c:if test="${username != null }">
								<li><a href="my-properties">Admin Management</a></li>
							</c:if>
						</ul>
					</nav>
					<!-- /.navbar collapse-->
				</header>
				<!-- /.navbar -->
			</div>
			<!-- /.container -->
		</div>
		<!-- /.navigation -->
		<!-- end Navigation -->
		<!-- Page Content -->
		<div id="page-content">
			<!-- Breadcrumb -->
			<div class="container">
				<ol class="breadcrumb">
					<li><a href="#">Home</a></li>
					<li class="active">About Us</li>
				</ol>
			</div>
			<!-- end Breadcrumb -->

			<div class="container">
				<div class="row">
					<!-- About Us -->
					<div class="col-md-12 col-sm-12">
						<section id="about-us">
							<header>
								<h1>About Us</h1>
							</header>
							<section id="ceo-section" class="center">
								<header class="center">
									<div class="cite-title">Serving you since 1999</div>
								</header>
								<div class="cite no-bottom-margin">Lorem ipsum dolor sit
									amet, consectetur adipiscing elit. Nulla dolor purus, porta
									eget justo et, pulvinar vehicula dolor. Sed at turpis at augue
									convallis auctor ut in mi</div>
								<hr class="divider">
								<a href="agent-detail.html" class="image"> <img
									src="<c:url value="/img/agent-01.jpg"/>" alt=""></a> <a
									href="agent-detail.html"><h3>John Doe</h3></a>
								<figure class="subtitle">Company CEO
								</figure>
								<div class="background-image">
									<img src="<c:url value="/img/about-us-bg.jpg"/>" alt="">


								</div>
							</section>
							<!-- /#ceo-section -->
							<div class="divider-image center">
								<img src="<c:url value="/img/sine-wave.png"/>" alt="">
							</div>
							<section id="our-team">
								<header class="center">
									<h2 class="no-border">Our Team</h2>
								</header>
								<div class="row">
									<div class="col-md-offset-1 col-md-5 col-sm-offset-1 col-sm-5">
										<div class="member">
											<a href="agent-detail.html" class="image"><img alt=""
												src="img/client-01.jpg"></a>
											<div class="tag">Top Agent</div>
											<div class="wrapper">
												<a href="agent-detail.html"><h3>Carolyn Sloan</h3></a>
												<figure class="subtitle">Agent
												</figure>
												<dl>
													<dt>Phone:</dt>
													<dd>(123) 456 789</dd>
													<dt>Email:</dt>
													<dd>
														<a href="mailto:#">john.doe@example.com</a>
													</dd>
													<dt>Skype:</dt>
													<dd>john.doe</dd>
												</dl>
											</div>
										</div>
										<!-- /.member -->
									</div>
									<!-- /.col-md-5 -->
									<div class="col-md-5 col-sm-5">
										<div class="member">
											<a href="agent-detail.html" class="image"> <img
												src="<c:url value="/img/member-01.jpg"/>" alt=""></a>

											<div class="wrapper">
												<a href="agent-detail.html"><h3>Erika Green</h3></a>
												<figure class="subtitle">Support
												</figure>
												<dl>
													<dt>Phone:</dt>
													<dd>(123) 456 789</dd>
													<dt>Email:</dt>
													<dd>
														<a href="mailto:#">john.doe@example.com</a>
													</dd>
													<dt>Skype:</dt>
													<dd>john.doe</dd>
												</dl>
											</div>
										</div>
										<!-- /.member -->
									</div>
									<!-- /.col-md-5 -->
								</div>
								<!-- /.row -->
								<div class="row">
									<div class="col-md-4 col-sm-4">
										<div class="member">
											<a href="agent-detail.html" class="image"> <img
												src="<c:url value="/img/member-02.jpg"/>" alt=""></a>
											<div class="wrapper">
												<a href="agent-detail.html"><h3>Mary A. Parrish</h3></a>
												<figure class="subtitle">Agent
												</figure>
												<dl>
													<dt>Phone:</dt>
													<dd>(123) 456 789</dd>
													<dt>Email:</dt>
													<dd>
														<a href="mailto:#">john.doe@example.com</a>
													</dd>
													<dt>Skype:</dt>
													<dd>john.doe</dd>
												</dl>
											</div>
										</div>
										<!-- /.member -->
									</div>
									<!-- /.col-md-4 -->
									<div class="col-md-4 col-sm-4">
										<div class="member">
											<a href="agent-detail.html" class="image"><img
												src="<c:url value="/img/member-02.jpg"/>" alt=""></a>
											<div class="wrapper">
												<a href="agent-detail.html"><h3>Russell G. Nowicki</h3></a>
												<figure class="subtitle">Agent
												</figure>
												<dl>
													<dt>Phone:</dt>
													<dd>(123) 456 789</dd>
													<dt>Email:</dt>
													<dd>
														<a href="mailto:#">john.doe@example.com</a>
													</dd>
													<dt>Skype:</dt>
													<dd>john.doe</dd>
												</dl>
											</div>
										</div>
										<!-- /.member -->
									</div>
									<!-- /.col-md-4 -->
									<div class="col-md-4 col-sm-4">
										<div class="member">
											<a href="agent-detail.html" class="image"><img
												src="<c:url value="/img/member-04.jpg"/>" alt=""></a>
											<div class="wrapper">
												<a href="agent-detail.html"><h3>Kristine Hicks</h3></a>
												<figure class="subtitle">Agent
												</figure>
												<dl>
													<dt>Phone:</dt>
													<dd>(123) 456 789</dd>
													<dt>Email:</dt>
													<dd>
														<a href="mailto:#">john.doe@example.com</a>
													</dd>
													<dt>Skype:</dt>
													<dd>john.doe</dd>
												</dl>
											</div>
										</div>
										<!-- /.member -->
									</div>
									<!-- /.col-md-4 -->
								</div>
								<!-- /.row -->
							</section>
							<!-- /#our-tem -->

							<section id="fun-facts" class="block counting-numbers">
								<header class="center">
									<h2 class="no-border">Fun Facts</h2>
								</header>
								<div class="row">
									<div class="fun-facts">
										<div class="col-md-3">
											<div class="number-wrapper">
												<div class="number" data-from="1" data-to="136">136</div>
												<figure>Properties Listed
												</figure>
											</div>
											<!-- /.number-wrapper -->
										</div>
										<!-- /.col-md-3 -->
										<div class="col-md-3">
											<div class="number-wrapper">
												<div class="number" data-from="1" data-to="2145">2145</div>
												<figure>Satisfied Clients
												</figure>
											</div>
											<!-- /.number-wrapper -->
										</div>
										<!-- /.col-md-3 -->
										<div class="col-md-3">
											<div class="number-wrapper">
												<div class="number" data-from="1" data-to="468">468</div>
												<figure>Properties Sold
												</figure>
											</div>
											<!-- /.number-wrapper -->
										</div>
										<!-- /.col-md-3 -->
										<div class="col-md-3">
											<div class="number-wrapper">
												<div class="number" data-from="1" data-to="5475">5475</div>
												<figure>Day we are here
												</figure>
											</div>
											<!-- /.number-wrapper -->
										</div>
										<!-- /.col-md-3 -->
									</div>
									<!-- /.fun-facts -->
								</div>
								<!-- /.row -->
							</section>
							<!-- /#fun-facts -->
							<section id="testimonials" class="block">
								<header class="center">
									<h2 class="no-border">What other said about us</h2>
								</header>
								<div class="owl-carousel testimonials-carousel">
									<blockquote class="testimonial">
										<figure>
											<div class="image">
												<img src="<c:url value="/img/client-01.jpg"/>" alt="">

											</div>
										</figure>
										<aside class="cite">
											<p>Fusce risus metus, placerat in consectetur eu,
												porttitor a est sed sed dolor lorem cras adipiscing</p>
											<footer>Natalie Jenkins</footer>
										</aside>
									</blockquote>
									<blockquote class="testimonial">
										<figure>
											<div class="image">
												<img src="<c:url value="/img/client-01.jpg"/>" alt="">

											</div>
										</figure>
										<aside class="cite">
											<p>Fusce risus metus, placerat in consectetur eu,
												porttitor a est sed sed dolor lorem cras adipiscing</p>
											<footer>Natalie Jenkins</footer>
										</aside>
									</blockquote>
								</div>
								<!-- /.testimonials-carousel -->
							</section>
							<!-- /#testimonials -->
						</section>
						<!-- /#about-us -->
					</div>
					<!-- /.col-md-12 -->
					<!-- end About Us -->
					<!-- Sidebar goes here -->
					<!-- end Sidebar -->
				</div>
				<!-- /.row -->
			</div>
			<!-- /.container -->
		</div>
		<!-- end Page Content -->
		<!-- Page Footer -->
		<footer id="page-footer">
			<div class="inner">
				<aside id="footer-thumbnails" class="footer-thumbnails"></aside>
				<!-- /#footer-thumbnails -->
				<aside id="footer-copyright">
					<div class="container">
						<span>Mall Bangkok By Boat Buntana</span> <span
							class="pull-right"><a href="#page-top" class="roll">Go
								to top</a></span>
					</div>
				</aside>
			</div>
			<!-- /.inner -->
		</footer>
		<!-- end Page Footer -->
	</div>

	<script type="text/javascript" src="assets/js/jquery-2.1.0.min.js"></script>
	<script type="text/javascript"
		src="assets/js/jquery-migrate-1.2.1.min.js"></script>
	<script type="text/javascript"
		src="assets/bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="assets/js/smoothscroll.js"></script>
	<script type="text/javascript" src="assets/js/owl.carousel.min.js"></script>
	<script type="text/javascript" src="assets/js/retina-1.1.0.min.js"></script>
	<script type="text/javascript" src="assets/js/waypoints.min.js"></script>
	<script type="text/javascript" src="assets/js/jquery.countTo.js"></script>
	<script type="text/javascript" src="assets/js/custom.js"></script>
	<!--[if gt IE 8]>
<script type="text/javascript" src="assets/js/ie.js"></script>
<![endif]-->

</body>
</html>