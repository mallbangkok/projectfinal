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
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
									<i class="fa fa-search"></i>
								</figure>
								<aside class="description">
									<header>
										<h3>Search Filter</h3>
									</header>
									<p>Search by data filer or sorting</p>
									<a href="loadsearchfilter" class="link-arrow">Let's Go</a>
								</aside>
							</div>
							<!-- /.feature-box -->
						</div>
						<!-- /.col-md-4 -->
						<div class="col-md-4 col-sm-4">
							<div class="feature-box equal-height">
								<figure class="icon">
									<i class="fa fa-search"></i>
								</figure>
								<aside class="description">
									<header>
										<h3>Search Custom</h3>
									</header>
									<p>Search by custom field</p>
									<a href="index-slider-search-custom" class="link-arrow">Let's Go</a>
								</aside>
							</div>
							<!-- /.feature-box -->
						</div>
						<!-- /.col-md-4 -->
						<div class="col-md-4 col-sm-4">
							<div class="feature-box equal-height">
								<figure class="icon">
									<i class="fa fa-car"></i>
								</figure>
								<aside class="description">
									<header>
										<h3>Parking</h3>
									</header>
									<p>Calculate your parking service </p>
									<a href="parking-user" class="link-arrow">Let's Go</a>
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
			<section id="testimonials" class="block">
				<div class="container">
					<header class="section-title">
						<h2>About Us</h2>
					</header>
					<div class="owl-carousel testimonials-carousel">
						<blockquote class="testimonial">
							<figure>
								<div class="image">
									<img src="<c:url value="/img/boat_buntana.jpg"/>" alt="">

								</div>
							</figure>
							<aside class="cite">
								<p>เนื่องจากปัจจุบันแต่ละห้างนั้นมีการเปลี่ยนแปลงร้านค่อนข้างบ่อย ถ้าเดินห้างลองสังเกตดู มีร้านที่ปิดไป ร้านเปิดใหม่มาแทบทุกเดือนโดยเฉพาะในห้างใหญ่ดังๆ แล้วห้างเขาก็ไม่ขยันมาอัพเดทข้อมูลใหม่ทุกๆ ครั้งตามที่มีการเปลี่ยนแปลง เว็บไซต์ของห้างบางแห่งถึงกับมีข้อมูลเก่าของร้านที่ปิดไปแล้วเกินกว่าครึ่งห้าง ซึ่งสิ่งนี้คือปัญหาของลูกค้าผู้เดินห้างโดยตรง</p>
								<hr>
								<p>เปลี่ยนแปลงตัวเองแค่คนเดียว ย่อมง่ายกว่าพยายามจะไปเปลี่ยนแปลงคนสิบคน</p>
								<footer>Boat Buntana</footer>
							</aside>
						</blockquote>
					</div>
					<!-- /.testimonials-carousel -->
				</div>
				<!-- /.container -->
			</section>
			<!-- /#testimonials -->
			
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