<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en-US">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="author" content="ThemeStarz">

<link href='http://fonts.googleapis.com/css?family=Roboto:300,400,700'
	rel='stylesheet' type='text/css'>
<link href="fonts/font-awesome.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="bootstrap/css/bootstrap.css"
	type="text/css">
<link rel="stylesheet" href="css/bootstrap-select.min.css"
	type="text/css">
<link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
<link rel="stylesheet" href="css/jquery.slider.min.css" type="text/css">
<link rel="stylesheet" href="css/owl.carousel.css" type="text/css">
<link rel="stylesheet" href="css/style.css" type="text/css">

<title>Mall Bangkok</title>

</head>

<body
	class="page-homepage navigation-fixed-bottom has-fullscreen-map map-google"
	id="page-top" data-spy="scroll" data-target=".navigation"
	data-offset="90">
	<!-- Wrapper -->
	<div class="wrapper">

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
						<c:choose>
							<c:when test="${username != null}">
								<a href="logout">Log Out</a>
							</c:when>
							<c:otherwise>
								<a href="sign-in">Sign In</a>
							</c:otherwise>
						</c:choose>
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

		<div class="container">
			<div class="geo-location-wrapper">
				<span class="btn geo-location"><i class="fa fa-map-marker"></i><span
					class="text">Find My Position</span></span>
			</div>
		</div>

		<!-- Map -->
		<div id="map" class="has-parallax"></div>
		<!-- end Map -->

		<!-- Search Box -->
		<div class="search-box-wrapper">
			<div class="search-box-inner">
				<div class="container">
					<div class="row">
						<div class="col-md-3 col-sm-4">
							<div class="search-box map">
								<form role="form" id="form-serchfilter" action="serch-demo"  method="get" class="form-map form-search">
									<h2>Search Your Mall</h2>
									<div class="form-group">
										<select name="area" >
											<option value="">Area</option>
											<option value="1">Central Bangkok</option>
											<option value="2">Siam </option>
											<option value="3">Sukhumvit</option>
											<option value="4">Thonburi</option>
											<option value="5">Inner Bangkok</option>
											<option value="6">Eastern Bangkok</option>
											<option value="7">Western Bangkok</option>
											<option value="8">Northern Bangkok</option>
											<option value="9">Eastern & Central</option>
											<option value="10">Northern</option>
											<option value="11">Northeast (Esan)</option>
											<option value="12">Southern</option>
										</select>
									</div>
									<!-- /.form-group -->
									<div class="form-group">
										<select name="type">
											<option value="0">Type</option>
											<option value="1">Shopping Mall</option>
											<option value="2">Community Mall</option>
											<option value="3">Theme Mall</option>
											<option value="4">Luxury Mall</option>
											<option value="5">Complex</option>
											<option value="6">Shopping Plaza</option>
											<option value="7">Deparment Store</option>
											<option value="8">Home Center</option>
											<option value="9">Superstore</option>
											<option value="10">Dining Destination</option>
											<option value="11">Marketplace</option>
											<option value="12">Regional Mall</option>
											<option value="13">Super Regional Mall</option>
											
										</select>
									</div>
									<!-- /.form-group -->
									<div class="form-group">
										<select name="groupmall">
											<option value="">Group</option>
											<option value="1">Central Group</option>
											<option value="">The Mall Group</option>
											<option value="">Siam Piwat</option>
											<option value="">MBK Group</option>
											<option value="">Chula</option>
											<option value="">Siam Future</option>
											<option value="">Land & House(Siam Retail)</option>
											<option value="">Aeon</option>
											<option value="">Major Group</option>
											<option value="">Gaysorn Group</option>
											<option value="">Tesco</option>
											<option value="">Imperial Land</option>
											<option value="">Rangsit Plaza</option>
											<option value="">Seacon Group</option>
											<option value="">Bangkok Land</option>
											<option value=""></option>
											<option value=""></option>
											
										</select>
									</div>
									<!-- /.form-group -->
									<div class="form-group">
										<select name="statusmall">
											<option value="">Status</option>
											<option value="1">Open</option>
											<option value="2">Close</option>
											
										</select>
									</div>
									<div class="form-group">
										<button type="submit" class="btn btn-default"form="form-serchfilter" value="Submit">Search
											Now</button>
									</div>
									<!-- /.form-group -->
								</form>
								<!-- /#form-map -->
							</div>
							<!-- /.search-box.map -->
						</div>
						<!-- /.col-md-3 -->
					</div>
					<!-- /.row -->
				</div>
				<!-- /.container -->
			</div>
			<!-- /.search-box-inner -->
		</div>
		<!-- end Search Box -->

		<!-- Page Content -->
		<div id="page-content">
			<section id="featured-properties"
				class="featured-properties block background-color-grey-light carousel-full-width">
				<div class="container">
					<header class="section-title">
						<h2>Mall Bangkok Update</h2>
					</header>
				</div>
				<!-- /.container -->
				<form id="frmIndex" action="list-mall" method="post">
				<div class="owl-carousel featured-properties-carousel">
					<c:forEach var="i" items="${mallupdated}">
						<div class="property big">
							<a href="javascript:;" onclick="onClick(${i.mallId})">
							<input type="hidden" id="valueClick" name="valueClick" />
								<div class="property-image">
									<img src="<c:url value="/img/mall/thumbnail/${i.imageMall}"/>"
										alt="">
								</div>
								<div class="overlay">
									<div class="info">
										<h3><c:out value="${i.mallNameEng }"/></h3>
										<figure><c:out value="${i.mallNameThai}"/></figure>
									</div>
								</div>
							</a>
						</div>
					</c:forEach>
					<!-- /.property -->
				</div>
				</form>
			</section>
			<!-- /#featured-properties -->
			<section id="price-drop" class="block">
				<div class="container">
					<header class="section-title">
						<h2>Featured Mall</h2>
						<a href="list-mall?typename=All Malls" class="link-arrow">All Mall</a>
					</header>
					<div class="row">
						<div class="col-sm-4">
							<div class="property">
								<figure class="tag status">Central Group</figure>
								<a href="list-mall?typename=Central">
									<div class="property-image">
										<img src="<c:url value="/img/properties/central-world.jpg"/>"
											alt="">
									</div>
									<div class="overlay">
										<div class="info">
											<div class="tag price">Central Group</div>
										</div>
									</div>
								</a>
							</div>
							<!-- /.property -->
						</div>
						<!-- /.col-md-3 -->
						<div class="col-sm-4">
							<div class="property">
								<figure class="tag status">The Mall Group</figure>
								<a href="list-mall?typename=The Mall">
									<div class="property-image">
										<img src="<c:url value="/img/properties/themall.jpg"/>" alt="">
									</div>
									<div class="overlay">
										<div class="info">
											<div class="tag price">The Mall Group</div>
										</div>
									</div>
								</a>
							</div>
							<!-- /.property -->
						</div>
						<!-- /.col-md-3 -->
						<div class="col-sm-4">
							<div class="property">
								<figure class="tag status">The Other Malls</figure>
								<a href="list-mall?typename=All Malls">
									<div class="property-image">
										<img src="<c:url value="/img/properties/futurepark.jpg"/>"
											alt="">
									</div>
									<div class="overlay">
										<div class="info">
											<div class="tag price">The Other Malls</div>
										</div>
									</div>
								</a>
							</div>
							<!-- /.property -->
						</div>
						<!-- /.col-md-3 -->

					</div>
					<!-- /.row-->
				</div>
				<!-- /.container -->
			</section>
			<!-- /#price-drop -->
			<section id="our-services" class="block">
				<div class="container">
					<header class="section-title">
						<h2>Our Services</h2>
					</header>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							<div class="feature-box equal-height">
								<figure class="icon">
									<i class="fa fa-folder"></i>
								</figure>
								<aside class="description">
									<header>
										<h3>Wide Range of Properties</h3>
									</header>
									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit</p>
									<a href="properties-listing.html" class="link-arrow">Read
										More</a>
								</aside>
							</div>
							<!-- /.feature-box -->
						</div>
						<!-- /.col-md-4 -->
						<div class="col-md-4 col-sm-4">
							<div class="feature-box equal-height">
								<figure class="icon">
									<i class="fa fa-users"></i>
								</figure>
								<aside class="description">
									<header>
										<h3>14 Agents for Your Service</h3>
									</header>
									<p>Aliquam gravida magna et fringilla convallis.
										Pellentesque habitant morbi</p>
									<a href="agents-listing.html" class="link-arrow">Read More</a>
								</aside>
							</div>
							<!-- /.feature-box -->
						</div>
						<!-- /.col-md-4 -->
						<div class="col-md-4 col-sm-4">
							<div class="feature-box equal-height">
								<figure class="icon">
									<i class="fa fa-money"></i>
								</figure>
								<aside class="description">
									<header>
										<h3>Best Price Guarantee!</h3>
									</header>
									<p>Phasellus non viverra tortor, id auctor leo. Suspendisse
										id nibh placerat</p>
									<a href="#" class="link-arrow">Read More</a>
								</aside>
							</div>
							<!-- /.feature-box -->
						</div>
						<!-- /.col-md-4 -->
					</div>
					<!-- /.row -->
				</div>
				<!-- /.container -->
			</section>
			<!-- /#our-services -->
			<section id="new-properties" class="block">
				<div class="container">
					<header class="section-title">
						<h2>New Properties for You</h2>
						<a href="properties-listing.html" class="link-arrow">All
							Properties</a>
					</header>
					<div class="row">
						<div class="col-md-3 col-sm-6">
							<div class="property">
								<figure class="tag status">For Rent
								</figure>
								<a href="property-detail.html">
									<div class="property-image">
										<img src="<c:url value="/img/properties/property-09.jpg"/>"
											alt="">
									</div>
									<div class="overlay">
										<div class="info">
											<div class="tag price">$ 11,000</div>
											<h3>3398 Lodgeville Road</h3>
											<figure>Golden Valley, MN 55427
											</figure>
										</div>
										<ul class="additional-info">
											<li><header>Area:</header>
												<figure>
													240m
													<sup>2</sup>
												</figure></li>
											<li><header>Beds:</header>
												<figure>2
												</figure></li>
											<li><header>Baths:</header>
												<figure>2
												</figure></li>
											<li><header>Garages:</header>
												<figure>0
												</figure></li>
										</ul>
									</div>
								</a>
							</div>
							<!-- /.property -->
						</div>
						<!-- /.col-md-3 -->
						<div class="col-md-3 col-sm-6">
							<div class="property">
								<figure class="tag status">Under Offer
								</figure>
								<a href="property-detail.html">
									<div class="property-image">
										<img src="<c:url value="/img/properties/property-03.jpg"/>"
											alt="">
									</div>
									<div class="overlay">
										<div class="info">
											<div class="tag price">$ 38,000</div>
											<h3>2186 Rinehart Road</h3>
											<figure>Doral, FL 33178
											</figure>
										</div>
										<ul class="additional-info">
											<li><header>Area:</header>
												<figure>
													240m
													<sup>2</sup>
												</figure></li>
											<li><header>Beds:</header>
												<figure>3
												</figure></li>
											<li><header>Baths:</header>
												<figure>1
												</figure></li>
											<li><header>Garages:</header>
												<figure>1
												</figure></li>
										</ul>
									</div>
								</a>
							</div>
							<!-- /.property -->
						</div>
						<!-- /.col-md-3 -->
						<div class="col-md-3 col-sm-6">
							<div class="property">
								<a href="property-detail.html">
									<div class="property-image">
										<img src="<c:url value="/img/properties/property-06.jpg"/>"
											alt="">
									</div>
									<div class="overlay">
										<div class="info">
											<div class="tag price">$ 325,000</div>
											<h3>3705 Brighton Circle Road</h3>
											<figure>Glenwood, MN 56334
											</figure>
										</div>
										<ul class="additional-info">
											<li><header>Area:</header>
												<figure>
													240m
													<sup>2</sup>
												</figure></li>
											<li><header>Beds:</header>
												<figure>3
												</figure></li>
											<li><header>Baths:</header>
												<figure>1
												</figure></li>
											<li><header>Garages:</header>
												<figure>1
												</figure></li>
										</ul>
									</div>
								</a>
							</div>
							<!-- /.property -->
						</div>
						<!-- /.col-md-3 -->
						<div class="col-md-3 col-sm-6">
							<div class="property">
								<figure class="tag status">For Sale
								</figure>
								<a href="property-detail.html">
									<div class="property-image">
										<img src="<c:url value="/img/properties/property-01.jpg"/>"
											alt="">
									</div>
									<div class="overlay">
										<div class="info">
											<div class="tag price">$ 16,000</div>
											<h3>362 Lynn Ogden Lane</h3>
											<figure>Galveston, TX 77550
											</figure>
										</div>
										<ul class="additional-info">
											<li><header>Area:</header>
												<figure>
													240m
													<sup>2</sup>
												</figure></li>
											<li><header>Beds:</header>
												<figure>3
												</figure></li>
											<li><header>Baths:</header>
												<figure>1
												</figure></li>
											<li><header>Garages:</header>
												<figure>1
												</figure></li>
										</ul>
									</div>
								</a>
							</div>
							<!-- /.property -->
						</div>
						<!-- /.col-md-3 -->
					</div>
					<!-- /.row-->
					<div class="row">
						<div class="col-md-3 col-sm-6">
							<div class="property">
								<a href="property-detail.html">
									<div class="property-image">
										<img src="<c:url value="/img/properties/property-02.jpg"/>"
											alt="">
									</div>
									<div class="overlay">
										<div class="info">
											<div class="tag price">$ 18,000</div>
											<h3>2506 B Street</h3>
											<figure>New Brighton, MN 55112
											</figure>
										</div>
										<ul class="additional-info">
											<li><header>Area:</header>
												<figure>
													280m
													<sup>2</sup>
												</figure></li>
											<li><header>Beds:</header>
												<figure>3
												</figure></li>
											<li><header>Baths:</header>
												<figure>2
												</figure></li>
											<li><header>Garages:</header>
												<figure>1
												</figure></li>
										</ul>
									</div>
								</a>
							</div>
							<!-- /.property -->
						</div>
						<!-- /.col-md-3 -->
						<div class="col-md-3 col-sm-6">
							<div class="property">
								<figure class="tag status">For Rent
								</figure>
								<a href="property-detail.html">
									<div class="property-image">
										<img src="<c:url value="/img/properties/property-12.jpg"/>"
											alt="">
									</div>
									<div class="overlay">
										<div class="info">
											<div class="tag price">$ 136,000</div>
											<h3>3990 Late Avenue</h3>
											<figure>Kingfisher, OK 73750
											</figure>
										</div>
										<ul class="additional-info">
											<li><header>Area:</header>
												<figure>
													30m
													<sup>2</sup>
												</figure></li>
											<li><header>Beds:</header>
												<figure>1
												</figure></li>
											<li><header>Baths:</header>
												<figure>1
												</figure></li>
											<li><header>Garages:</header>
												<figure>0
												</figure></li>
										</ul>
									</div>
								</a>
							</div>
							<!-- /.property -->
						</div>
						<!-- /.col-md-3 -->
						<div class="col-md-3 col-sm-6">
							<div class="property">
								<a href="property-detail.html">
									<div class="property-image">
										<img src="<c:url value="/img/properties/property-05.jpg"/>"
											alt="">
									</div>
									<div class="overlay">
										<div class="info">
											<div class="tag price">$ 12,680</div>
											<h3>297 Marie Street</h3>
											<figure>Towson, MD 21204
											</figure>
										</div>
										<ul class="additional-info">
											<li><header>Area:</header>
												<figure>
													240m
													<sup>2</sup>
												</figure></li>
											<li><header>Beds:</header>
												<figure>3
												</figure></li>
											<li><header>Baths:</header>
												<figure>1
												</figure></li>
											<li><header>Garages:</header>
												<figure>1
												</figure></li>
										</ul>
									</div>
								</a>
							</div>
							<!-- /.property -->
						</div>
						<!-- /.col-md-3 -->
						<div class="col-md-3 col-sm-6">
							<div class="property">
								<a href="property-detail.html">
									<div class="property-image">
										<img src="<c:url value="/img/properties/property-10.jpg"/>"
											alt="">
									</div>
									<div class="overlay">
										<div class="info">
											<div class="tag price">$ 12,800</div>
											<h3>64 Timberbrook Lane</h3>
											<figure>Denver, CO 80202
											</figure>
										</div>
										<ul class="additional-info">
											<li><header>Area:</header>
												<figure>
													240m
													<sup>2</sup>
												</figure></li>
											<li><header>Beds:</header>
												<figure>3
												</figure></li>
											<li><header>Baths:</header>
												<figure>1
												</figure></li>
											<li><header>Garages:</header>
												<figure>1
												</figure></li>
										</ul>
									</div>
								</a>
							</div>
							<!-- /.property -->
						</div>
						<!-- /.col-md-3 -->
					</div>
					<!-- /.row-->
				</div>
				<!-- /.container-->
			</section>
			<!-- /#new-properties-->
			<section id="testimonials" class="block">
				<div class="container">
					<header class="section-title">
						<h2>Testimonials</h2>
					</header>
					<div class="owl-carousel testimonials-carousel">
						<blockquote class="testimonial">
							<figure>
								<div class="image">
									<img src="<c:url value="/img/client-01.jpg"/>" alt="">

								</div>
							</figure>
							<aside class="cite">
								<p>Fusce risus metus, placerat in consectetur eu, porttitor
									a est sed sed dolor lorem cras adipiscing</p>
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
								<p>Fusce risus metus, placerat in consectetur eu, porttitor
									a est sed sed dolor lorem cras adipiscing</p>
								<footer>Natalie Jenkins</footer>
							</aside>
						</blockquote>
					</div>
					<!-- /.testimonials-carousel -->
				</div>
				<!-- /.container -->
			</section>
			<!-- /#testimonials -->
			<section id="partners" class="block">
				<div class="container">
					<header class="section-title">
						<h2>Our Partners</h2>
					</header>
					<div class="logos">

						<div class="logo">
							<a href=""> <img
								src="<c:url value="/img/logo-partner-01.png"/>" alt=""></a>
						</div>
						<div class="logo">
							<a href=""> <img
								src="<c:url value="/img/logo-partner-02.png"/>" alt=""></a>
						</div>
						<div class="logo">
							<a href=""> <img
								src="<c:url value="/img/logo-partner-03.png"/>" alt=""></a>
						</div>
						<div class="logo">
							<a href=""> <img
								src="<c:url value="/img/logo-partner-04.png"/>" alt=""></a>
						</div>
						<div class="logo">
							<a href=""> <img
								src="<c:url value="/img/logo-partner-05.png"/>" alt=""></a>
						</div>
					</div>
				</div>
				<!-- /.container -->
			</section>
			<!-- /#partners -->
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

	<div id="overlay"></div>

	<script type="text/javascript" src="js/jquery-2.1.0.min.js"></script>
	<script type="text/javascript"
		src="http://maps.google.com/maps/api/js?key=AIzaSyAMhGbKMT4LRrhHNJGy316qFefrYNAHmns"></script>
	<script type="text/javascript" src="js/jquery-migrate-1.2.1.min.js"></script>
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/smoothscroll.js"></script>
	<script type="text/javascript" src="js/markerwithlabel_packed.js"></script>
	<script type="text/javascript" src="js/infobox.js"></script>
	<script type="text/javascript" src="js/owl.carousel.min.js"></script>
	<script type="text/javascript" src="js/bootstrap-select.min.js"></script>
	<script type="text/javascript" src="js/jquery.validate.min.js"></script>
	<script type="text/javascript" src="js/jquery.placeholder.js"></script>
	<script type="text/javascript" src="js/icheck.min.js"></script>
	<script type="text/javascript" src="js/jquery.vanillabox-0.1.5.min.js"></script>
	<script type="text/javascript" src="js/retina-1.1.0.min.js"></script>
	<script type="text/javascript" src="js/jshashtable-2.1_src.js"></script>
	<script type="text/javascript" src="js/jquery.numberformatter-1.2.3.js"></script>
	<script type="text/javascript" src="js/tmpl.js"></script>
	<script type="text/javascript" src="js/jquery.dependClass-0.1.js"></script>
	<script type="text/javascript" src="js/draggable-0.1.js"></script>
	<script type="text/javascript" src="js/jquery.slider.js"></script>
	<script type="text/javascript" src="js/markerclusterer_packed.js"></script>
	<script type="text/javascript" src="js/custom-map.js"></script>
	<script type="text/javascript" src="js/custom.js"></script>
	<!--[if gt IE 8]>
<script type="text/javascript" src="assets/js/ie.js"></script>
<![endif]-->
	<script>
		_latitude = 13.755123;
		_longitude = 100.503968;
		createHomepageGoogleMap(_latitude, _longitude);
		$(window).load(function() {
			initializeOwl(false);
		});
	</script>
	<script type="text/javascript">
	var mid;
	onClick = function(id){
		document.getElementById('valueClick').value = id;
		document.getElementById('frmIndex').submit();
		mid = id;
		console.log(mid);
	}
</script>
</body>
</html>