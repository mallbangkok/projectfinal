<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*,com.spring.model.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="author" content="ThemeStarz">

<link href='http://fonts.googleapis.com/css?family=Roboto:300,400,700' rel='stylesheet' type='text/css'>
<link href="fonts/font-awesome.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="bootstrap/css/bootstrap.css" type="text/css">
<link rel="stylesheet" href="css/bootstrap-select.min.css" type="text/css">
<link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
<link rel="stylesheet" href="css/jquery.slider.min.css" type="text/css">
<link rel="stylesheet" href="css/owl.carousel.css" type="text/css">
<link rel="stylesheet" href="css/fileinput.min.css" type="text/css">
<link rel="stylesheet" href="css/style.css" type="text/css">
<script type="text/javascript" src="ckeditor/ckeditor.js"></script>
<title>Mall Bangkok | Add Article</title>

</head>

<body class="page-sub-page page-submit" id="page-top">
	<!-- Wrapper -->
	<div class="wrapper">
		<!-- Navigation -->
		<div class="navigation">
			<div class="secondary-navigation">
				<div class="container">
					<div class="contact">
						<figure>
							<strong>Phone:</strong>+1 810-991-3842
						</figure>
						<figure>
							<strong>Email:</strong>zoner@example.com
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
						<div class="language-bar">
							<a href="#" class="active"><img
								src="<c:url value="/img/flags/gb.png"/>" alt=""></a> <a
								href="#"><img src="<c:url value="/img/flags/de.png"/>"
								alt=""></a> <a href="#"><img
								src="<c:url value="/img/flags/es.png"/>" alt=""></a>
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
								src="<c:url value="/img/logo1@1x.png"/>" alt="brand"></a>
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
									<li><a href="list-mall?typename=all">List All</a></li>
								</ul></li>
							<li class="has-child"><a href="#">Pages</a>
								<ul class="child-navigation">
									<li><a href="article">Test Article</a></li>
									<li><a href="agent-detail.html">Agent Detail</a></li>
									<li><a href="invoice-print.html">Invoice</a></li>
									<li><a href="profile.html">Profile</a></li>
									<li><a href="my-properties.html">My Properties</a></li>
									<li><a href="bookmarked.html">Bookmarked Properties</a></li>
									<li><a href="create-account.html">Create Account</a></li>
									<li><a href="create-agency.html">Create Agency</a></li>
									<li><a href="sign-in">Sign In</a></li>
									<li class="has-child"><a href="#">Error Pages</a>
										<ul class="child-navigation">
											<li><a href="403.html">403</a></li>
											<li><a href="404.html">404</a></li>
											<li><a href="500.html">500</a></li>
										</ul></li>
								</ul></li>
							<li class="has-child"><a href="loadsearchfilter">Search Mall</a>
								<ul class="child-navigation">
									<li><a href="index-slider-search-custom">Search Custom</a></li>
								</ul></li>
							<li><a href="parking-user">Parking</a>
								</li>
							<li class="has-child"><a href="#">Blog</a>
								<ul class="child-navigation">
									<li><a href="blog">Blog Listing</a></li>
									<li><a href="blog-detail">Blog Post Detail</a></li>
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
					<li><a href="index-google-map-fullscreen">Home</a></li>
					<li class="active">Add your Article</li>
				</ol>
			</div>
			<!-- end Breadcrumb -->

			<div class="container">
				<header>
					<h1>Add Your Article</h1>
				</header>

				<form role="form" id="form-submit" class="form-submit"
					action="article" method="post">
					<div class="row">
						<div class="block">
							<div class="col-md-12">
								<section id="submit-form">
									<section id="basic-information">
										<header>
											<h2>Article Information</h2>
										</header>
										<div class="row">
											<div class="col-md-4">
												<div class="form-group">
													<label for="submit-title">Article Name</label> <input
														type="text" class="form-control" id="submit-title"
														name="articlename" required>
												</div>
												<!-- /.form-group -->
											</div>
										</div>
										<div class="row">
											<div class="col-sm-4">
                                            <div class="form-group">
                                                <label for="submit-price">Article Type</label>
                                                <div class="input-group">
                                                    <span class="input-group-addon">A</span>
                                                    <select name="articletype" required>
                                                    	<option value="">Please Select Type</option>
                                                    	<option value="Article">Article</option>
                                                    	<option value="Infographic">Infographic</option>
                                                    	<option value="News">News</option>
                                                    	<option value="Review">Review</option>
                                                    </select>
                                                </div>
                                            </div><!-- /.form-group -->
                                        </div>
										</div>
										<div class="row">
											<div class="col-md-12">
												<div class="form-group">
													<label for="submit-price">Write Your Article</label>
													<div class="input-group">

														<textarea name="textarea" id="textarea" rows="5" cols="47" required></textarea>
														<script type="text/javascript">
															CKEDITOR.replace('textarea');
														</script>
													</div>
												</div>
												<!-- /.form-group -->
											</div>
										</div>
										<!-- 
                                    <div class="form-group">
                                        <label for="submit-description">Description</label>
                                        <textarea class="form-control" id="submit-description" rows="8" name="submit-description" required></textarea>
                                    </div>
                                    
                                     -->
									</section>
									<!-- /#basic-information -->
									<hr>
								</section>
							</div>
							<!-- /.col-md-9 -->
						</div>
					</div>
					<!-- /.row -->

					<div class="row">
						<div class="block">
							<div class="col-md-12 col-sm-12">
								<div class="center">
									<div class="form-group">
										<input type="submit" class="btn btn-default large" value="Add Article">
									</div>
									<!-- /.form-group -->
								</div>
							</div>
						</div>
					</div>
				</form>
				<!-- /#form-submit -->
			</div>
			<!-- /.container -->
		</div>
		<!-- end Page Content -->
		<!-- Page Footer -->
		<footer id="page-footer">
			<div class="inner">
			
				<!-- /#footer-main -->
				<aside id="footer-thumbnails" class="footer-thumbnails"></aside>
				<!-- /#footer-thumbnails -->
				<aside id="footer-copyright">
					<div class="container">
						<span>Copyright Â© 2013. All Rights Reserved.</span> <span
							class="pull-right"><a href="#page-top" class="roll">Go
								to top</a></span>
					</div>
				</aside>
			</div>
			<!-- /.inner -->
		</footer>
		<!-- end Page Footer -->
	</div>

	<script type="text/javascript" src="js/jquery-2.1.0.min.js"></script>
	<script type="text/javascript" src="js/jquery-migrate-1.2.1.min.js"></script>
	<script type="text/javascript" src="js/markerwithlabel_packed.js"></script>
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/smoothscroll.js"></script>
	<script type="text/javascript" src="js/owl.carousel.min.js"></script>
	<script type="text/javascript" src="js/bootstrap-select.min.js"></script>
	<script type="text/javascript" src="js/jquery.validate.min.js"></script>
	<script type="text/javascript" src="js/icheck.min.js"></script>
	<script type="text/javascript" src="js/retina-1.1.0.min.js"></script>
	<script type="text/javascript" src="js/jquery.magnific-popup.min.js"></script>
	<script type="text/javascript" src="js/fileinput.min.js"></script>
	<script type="text/javascript" src="js/custom-map.js"></script>
	<script type="text/javascript" src="js/custom.js"></script>
	<!--[if gt IE 8]>
<script type="text/javascript" src="assets/js/ie.js"></script>
<![endif]-->
	<script type="text/javascript">
		$(function()

		{

			$('#wysiwyg').wysiwyg();

		});
	</script>
	<script>
		var _latitude = 48.87;
		var _longitude = 2.29;

		google.maps.event.addDomListener(window, 'load', initSubmitMap(
				_latitude, _longitude));
		function initSubmitMap(_latitude, _longitude) {
			var mapCenter = new google.maps.LatLng(_latitude, _longitude);
			var mapOptions = {
				zoom : 15,
				center : mapCenter,
				disableDefaultUI : false,
				//scrollwheel: false,
				styles : mapStyles
			};
			var mapElement = document.getElementById('submit-map');
			var map = new google.maps.Map(mapElement, mapOptions);
			var marker = new MarkerWithLabel({
				position : mapCenter,
				map : map,
				icon : '/img/marker.png',
				labelAnchor : new google.maps.Point(50, 0),
				draggable : true
			});
			$('#submit-map').removeClass('fade-map');
			google.maps.event.addListener(marker, "mouseup", function(event) {
				var latitude = this.position.lat();
				var longitude = this.position.lng();
				$('#latitude').val(this.position.lat());
				$('#longitude').val(this.position.lng());
			});

			//      Autocomplete
			var input = /** @type {HTMLInputElement} */
			(document.getElementById('address-map'));
			var autocomplete = new google.maps.places.Autocomplete(input);
			autocomplete.bindTo('bounds', map);
			google.maps.event
					.addListener(
							autocomplete,
							'place_changed',
							function() {
								var place = autocomplete.getPlace();
								if (!place.geometry) {
									return;
								}
								if (place.geometry.viewport) {
									map.fitBounds(place.geometry.viewport);
								} else {
									map.setCenter(place.geometry.location);
									map.setZoom(17);
								}
								marker.setPosition(place.geometry.location);
								marker.setVisible(true);
								$('#latitude').val(marker.getPosition().lat());
								$('#longitude').val(marker.getPosition().lng());
								var address = '';
								if (place.address_components) {
									address = [
											(place.address_components[0]
													&& place.address_components[0].short_name || ''),
											(place.address_components[1]
													&& place.address_components[1].short_name || ''),
											(place.address_components[2]
													&& place.address_components[2].short_name || '') ]
											.join(' ');
								}
							});
		}

		function success(position) {
			initSubmitMap(position.coords.latitude, position.coords.longitude);
			$('#latitude').val(position.coords.latitude);
			$('#longitude').val(position.coords.longitude);
		}

		$('.geo-location').on("click", function() {
			if (navigator.geolocation) {
				$('#submit-map').addClass('fade-map');
				navigator.geolocation.getCurrentPosition(success);
			} else {
				error('Geo Location is not supported');
			}
		});
	</script>
</body>
</html>