<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*,com.spring.model.*,com.spring.searchfilter.*"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
  
<html lang="en-US">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="author" content="ThemeStarz">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link href='http://fonts.googleapis.com/css?family=Roboto:300,400,700' rel='stylesheet' type='text/css'>
    <link href="fonts/font-awesome.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="bootstrap/css/bootstrap.css" type="text/css">
    <link rel="stylesheet" href="css/bootstrap-select.min.css" type="text/css">
    <link rel="stylesheet" href="css/jquery.slider.min.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.css" type="text/css">
    <link rel="stylesheet" href="css/style3.css" type="text/css">

    <title>Mall Bangkok | Google Map with Advanced Horizontal Search</title>

</head>

<body class="page-homepage map-google navigation-fixed-top horizontal-search" id="page-top" data-spy="scroll" data-target=".navigation" data-offset="90">
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
                        <a href="create-agency.html" class="promoted">Create Agency</a>
                        <a href="create-account.html" class="promoted"><strong>Register</strong></a>
                        <a href="sign-in.html">Sign In</a>
                    </div>
                    <div class="language-bar">
                        <a href="#" class="active"><img src="<c:url value="/img/flags/gb.png"/>" alt=""></a>
                        <a href="#"><img src="<c:url value="/img/flags/de.png"/>" alt=""></a>
                        <a href="#"><img src="<c:url value="/img/flags/es.png"/>" alt=""></a>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <header class="navbar" id="top" role="banner">
                <div class="navbar-header">
                    <button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".bs-navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <div class="navbar-brand nav" id="brand">
                        <a href="index-google-map-fullscreen.html">
                        <img src="<c:url value="/img/logo.png"/>" alt="brand"></a>
                        
                    </div>
                </div>
              <nav
						class="collapse navbar-collapse bs-navbar-collapse navbar-right"
						role="navigation">
						<ul class="nav navbar-nav">
							<li class="active has-child"><a href="#">Homepage</a>
								<ul class="child-navigation">
									<li><a href="index-google-map-fullscreen">Google Map
											Full Screen</a></li>
									<li><a href="index-google-map-fixed-height.html">Google
											Map Fixed Height</a></li>
									<li><a href="index-google-map-fixed-navigation.html">Google
											Map Fixed Navigation</a></li>
									<li><a href="index-osm.html">OpenStreetMap Full Screen</a></li>
									<li><a href="index-osm-fixed-height.html">OpenStreetMap
											Fixed Height</a></li>
									<li><a href="index-osm-fixed-navigation.html">OpenStreetMap
											Fixed Navigation</a></li>
									<li><a href="index-slider.html">Slider Homepage</a></li>
									<li><a href="index-slider-search-box.html">Slider with
											Search Box</a></li>
									<li><a href="index-horizontal-search-floated.html">Horizontal
											Search Floated</a></li>
									<li><a href="index-advanced-horizontal-search.html">Horizontal
											Advanced Search</a></li>
									<li><a href="index-slider-horizontal-search-box.html">Horizontal
											Slider Search</a></li>
									<li><a
										href="index-slider-horizontal-search-box-floated.html">Horizontal
											Slider Floated Search</a></li>
								</ul></li>
							<li class="has-child"><a href="#">Directory</a>
								<ul class="child-navigation">
									<li><a href="#">List By Type</a>
										<ul class="child-navigation">
											<li><a href="list-mall?typename=Regional Mall">Regional
													Mall</a></li>
											<li><a href="list-mall?typename=Community Mall">Community
													Mall</a></li>
											<li><a href="#">HyperMarket/SpecialtyStore</a></li>
											<li><a href="#">Theme Mall</a></li>
											<li><a href="#">Luxury Mall</a></li>
											<li><a href="#">Department Store</a></li>
											<li><a href="#">Complex</a></li>
											<li><a href="#">Shopping Plaza</a></li>
										</ul></li>
									<li><a href="properties-listing.html">List By Area</a></li>
									<li><a href="properties-listing-grid.html">List All</a></li>
								</ul></li>
							<li class="has-child"><a href="#">Pages</a>
								<ul class="child-navigation">
									<li><a href="about-us.html">About Us</a></li>
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
									<li><a href="faq.html">FAQ</a></li>
									<li><a href="left-sidebar.html">Left Sidebar</a></li>
									<li><a href="right-sidebar.html">Right Sidebar</a></li>
									<li><a href="sticky-footer.html">Sticky Footer</a></li>
									<li><a href="pricing.html">Pricing</a></li>
									<li><a href="shortcodes.html">Shortcodes</a></li>
									<li><a href="timeline.html">Timeline</a></li>
									<li><a href="terms-conditions.html">Terms & Conditions</a></li>
									<li><a href="rtl.html">RTL Support</a></li>
								</ul></li>
							<li class="has-child"><a href="#">Agents & Agencies</a>
								<ul class="child-navigation">
									<li><a href="agents-listing.html">Agents Listing</a></li>
									<li><a href="agent-detail.html">Agent Detail</a></li>
									<li><a href="agencies-listing.html">Agencies Listing</a></li>
									<li><a href="agency-detail.html">Agency Detail</a></li>
								</ul></li>
							<li><a href="loadsearchfilter">Search Mall</a>
								<ul class="child-navigation">
									<li><a href="index-slider-search-custom">Search Custom</a></li>
								</ul></li>
							</li>
							<li class="has-child"><a href="#">Blog</a>
								<ul class="child-navigation">
									<li><a href="blog.html">Blog Listing</a></li>
									<li><a href="blog-detail.html">Blog Post Detail</a></li>
								</ul></li>
							<li><a href="contact.html">Contact</a></li>
						</ul>
					</nav><!-- /.navbar collapse-->
                <div class="add-your-property">
                    <a href="submit.html" class="btn btn-default"><i class="fa fa-plus"></i><span class="text">Add Your Property</span></a>
                </div>
            </header><!-- /.navbar -->
        </div><!-- /.container -->
    </div><!-- /.navigation -->

    <div class="container">
        <div class="geo-location-wrapper">
            <span class="btn geo-location"><i class="fa fa-map-marker"></i><span class="text">Find My Position</span></span>
        </div>
    </div>

    <!-- Map -->
    <div id="map" class="has-parallax"></div>
    <!-- end Map -->

    <!-- Search Box -->
    <div class="search-box-wrapper">
        <div class="search-box-inner">
            <div class="container">
                <div class="search-box map">
                    <ul class="nav nav-pills">
                        <li><a href="#search-form-sales" data-toggle="tab">Search Filter</a></li>
                       
                    </ul>
                    <hr>
                    <!-- 1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111 -->
                    <div class="tab-content">
                        <div class="tab-pane fade in active" id="search-form-sales">
                            <form role="form" id="form-map-sale" action="search-mall" method="get" class="form-map form-search clearfix has-dark-background">
                                <div class="row">
                                    <div class="col-md-2 col-sm-4">
                                    </div>
                                    <div class="col-md-2 col-sm-4">
                                        <div class="form-group">
                                            <select name="searchselect"id="searchselect" >
                                            <option value=''>Please select Search</option>
                                            	<option value='Area'>Select By Area</option>
                                            	<option value='Groups'>Select By Mall Group</option>
                                            	<option value='Depart'>Select By Department Store</option>
                                            </select>
                                        </div><!-- /.form-group -->
                                    </div>
                                    <div class="col-md-2 col-sm-4">
                                        <div class="form-group">
                                            <select name="typeselect" id="typeselect" >
                                            	<option>Please Select Type</option>
                                            </select>
                                        </div><!-- /.form-group -->
                                    </div>
                                    <div class="col-md-2 col-sm-4">
                                        <div class="form-group">
                                            <select name="malls" id="malls">
                                             <option>Please Select Mall</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-2 col-sm-4">
                                        <div class="form-group">
                                            <button type="submit" class="btn btn-default">Search Mall</button>
                                        </div><!-- /.form-group -->
                                    </div>
                                </div>
                            </form>
                        </div><!-- 1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111 -->
                        <!-- 2222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222 -->
                        <div class="tab-pane fade " id="search-form-rent">
                             <form role="form" id="form-map-depart" action="search-mall" method="get" class="form-map form-search clearfix has-dark-background">
                                <div class="row">
                                    <div class="col-md-2 col-sm-4">
                                    </div>
                                    <div class="col-md-2 col-sm-4">
                                        <div class="form-group">
                                           <select name="countrys"id="countrys" >
                                           <option>55</option>
                                            </select>
                                        </div><!-- /.form-group -->
                                    </div>
                                    <div class="col-md-2 col-sm-4">
                                        <div class="form-group">
                                            <select name="select-dep-detail" id="select-dep-detail">
                                               
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-2 col-sm-4">
                                        <div class="form-group">
                                            <button type="submit" class="btn btn-default">Search Mall</button>
                                        </div><!-- /.form-group -->
                                    </div>
                                </div>
                            </form><!-- /#form-map-rent -->
                        </div>
                        <!-- new -->
                         <div class="tab-pane fade" id="search-form-group">
                            <form role="form" id="search-form-group" class="form-map form-search clearfix">
                                <div class="row">
                                    <div class="col-md-2 col-sm-4">
                                    </div>
                                    <div class="col-md-2 col-sm-4">
                                        <div class="form-group">
                                            <select name="form-rent-payment">
                                                <option value="">Mall Group</option>
                                                <option value="">Group Detail</option>
                                            </select>
                                        </div><!-- /.form-group -->
                                    </div>
                                    <div class="col-md-2 col-sm-4">
                                        <div class="form-group">
                                            <select name="form-rent-price">
                                                <option value="">Select Mall</option>
                                                <option value="">Mall Detail</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-2 col-sm-4">
                                        <div class="form-group">
                                            <button type="submit" class="btn btn-default">Search Mall</button>
                                        </div><!-- /.form-group -->
                                    </div>
                                </div>
                            </form><!-- /#form-map-rent -->
                        </div>
                        <!-- end  -->
                        
                    </div><!-- /.tab-content -->
                </div><!-- /.search-box -->
            </div><!-- /.container -->
        </div><!-- /.search-box-inner -->
        <div class="background-image">
        <img class="opacity-20" src="<c:url value="/img/searchbox-bg.jpg"/>" alt=""></div>
    </div>
    <!-- end Search Box -->

    <!-- Page Content -->
    <div id="page-content">
              <div class="container">
            <div class="row">
                <!-- Property Detail Content -->
                <div class="col-md-9 col-sm-9">
                    <section id="property-detail">
                        <header class="property-title">
                            <h1>${mall.mallNameEng}  ${mall.mallNameThai}</h1>
                            <figure>Open-Closed : <c:out value="${mall.timeMall}"></c:out></figure>
                        </header>
                        <section id="property-gallery">
                            <div class="owl-carousel property-carousel">
                                <div class="property-slide">
                                    <a href="assets/img/properties/property-detail-01.jpg" class="image-popup">
                                        <div class="overlay"><h3>Front View</h3></div>
                                         <img src="<c:url value="/img/mall/${mall.imageMall}"/>" alt="">
                                    </a>
                                </div><!-- /.property-slide -->
                            </div><!-- /.property-carousel -->
                        </section>
                        <div class="row">
                            <div class="col-md-4 col-sm-12">
                                <section id="quick-summary" class="clearfix">
                                    
                                    <dl>
                                       <dt>Mall Group</dt>
                                            <dd>${mall.mallGroup}</dd>
                                        <dt>Type</dt>
                                            <dd>${mall.type}</dd>
                                        <dt>Area</dt>
                                            <dd>${mall.area}</dd>
                                        <dt>Status Mall</dt>
                                            <dd>${mall.statusMall}</dd>
                                        <dt>Updated</dt>
                                            <dd>${mall.updatedDate}</dd>
                                        <dt>Phone Number</dt>
                                            <dd>${mall.phoneNoMall}</dd>
                                        <dt>Rating:</dt>
                                            <dd><div class="rating rating-overall" data-score="4"></div></dd>
                                    </dl>
                                </section><!-- /#quick-summary -->
                            </div><!-- /.col-md-4 -->
                            <div class="col-md-8 col-sm-12">
                            <!-- STSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS -->
                            <div class="col-md-12 col-sm-12">
								<ul class="nav nav-tabs">
									<li><a href="#home">Shopping</a></li>
									<li><a href="#menu1">Food</a></li>
									<li><a href="#menu2">Services</a></li>
								</ul>
								<div class="tab-content">
								<div id="home" class="tab-pane fade in active">
								<section id="property-features">
                                    <ul class="list-unstyled property-features-list">
                                       	<c:choose>
                                                  <c:when test="${listShopping != null }">
                                                      <c:forEach var="i" items="${listShopping}">
                                                      	<li><c:out value="${i}"></c:out></li>
                                                     </c:forEach>
                                                  </c:when>
                                       	</c:choose>
                                    </ul>
                               	 </section><!-- /#property-features -->
								</div>
								<div id="menu1" class="tab-pane fade in active">
								<section id="property-features">
                                    <ul class="list-unstyled property-features-list">
                                      	<c:choose>
                                                  <c:when test="${listFood != null }">
                                                      <c:forEach var="i" items="${listFood}">
                                                      	<li><c:out value="${i}"></c:out></li>
                                                     </c:forEach>
                                                  </c:when>
                                       	</c:choose>
                                    </ul>
                                </section><!-- /#property-features -->
								</div>
								<div id="menu2" class="tab-pane fade in active">
								  <section id="property-features">
                                    <ul class="list-unstyled property-features-list">
                                       	<c:choose>
                                                  <c:when test="${listService != null }">
                                                      <c:forEach var="i" items="${listService}">
                                                      	<li><c:out value="${i}"></c:out></li>
                                                     </c:forEach>
                                                  </c:when>
                                       	</c:choose>
                                    </ul>
                                </section><!-- /#property-features -->
								</div>
								</div><!-- tab-content -->
								<script>
									$(document).ready(function() {
									$(".nav-tabs a").click(function() {
									$(this).tab('show');
									});
								});
								</script>
							</div><!-- EndDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD -->
                            </div><!-- /.col-md-8 -->
                            <!--   <div class="col-md-8 col-sm-12">
                                <section id="property-features">
                                    <header><h2>Food</h2></header>
                                    <ul class="list-unstyled property-features-list">
                                      	<c:choose>
                                                  <c:when test="${listFood != null }">
                                                      <c:forEach var="i" items="${listFood}">
                                                      	<li><c:out value="${i}"></c:out></li>
                                                     </c:forEach>
                                                  </c:when>
                                       	</c:choose>
                                    </ul>
                                </section><!-- /#property-features -->
                                
                            </div>                                
                            <div class="col-md-4 col-sm-12"></div>
                              <div class="col-md-8 col-sm-12">
                                
                            <div class="col-md-12 col-sm-12">
                               
                                <hr class="thick">
                            </div><!-- /.col-md-12 -->
                        </div><!-- /.row -->
                    </section><!-- /#property-detail -->
                </div><!-- /.col-md-9 -->
                <!-- end Property Detail Content -->

                <!-- sidebar -->
                <div class="col-md-3 col-sm-3">
                    <section id="sidebar">
                        <aside id="featured-properties">
                            <header><h3>Recent Posts</h3></header>
                            <div class="property small">
                                <a href="property-detail.html">
                                    <div class="property-image">
                                       <img src="<c:url value="/img/properties/property-06.jpg"/>" alt="">
                                    </div>
                                </a>
                                <div class="info">
                                    <a href="property-detail.html"><h4>2186 Rinehart Road</h4></a>
                                    <figure>Doral, FL 33178 </figure>
                                    <div class="tag price">Read More</div>
                                </div>
                            </div><!-- /.property -->
                              <div class="property small">
                                <a href="property-detail.html">
                                    <div class="property-image">
                                    <img src="<c:url value="/img/properties/property-06.jpg"/>" alt="">
                                        
                                    </div>
                                </a>
                                <div class="info">
                                    <a href="property-detail.html"><h4>2186 Rinehart Road</h4></a>
                                    <figure>Doral, FL 33178 </figure>
                                    <div class="tag price">Read More</div>
                                </div>
                            </div><!-- /.property -->
                              <div class="property small">
                                <a href="property-detail.html">
                                    <div class="property-image">
                                      <img src="<c:url value="/img/properties/property-06.jpg"/>" alt="">
                                    </div>
                                </a>
                                <div class="info">
                                    <a href="property-detail.html"><h4>2186 Rinehart Road</h4></a>
                                    <figure>Doral, FL 33178 </figure>
                                    <div class="tag price">Read More</div>
                                </div>
                            </div><!-- /.property -->
                            <div class="property small">
                                <a href="property-detail.html">
                                    <div class="property-image">
                                       <img src="<c:url value="/img/properties/property-06.jpg"/>" alt="">
                                    </div>
                                </a>
                                <div class="info">
                                    <a href="property-detail.html"><h4>2479 Murphy Court</h4></a>
                                    <figure>Minneapolis, MN 55402</figure>
                                    <div class="tag price">Read More</div>
                                </div>
                            </div><!-- /.property -->
                            <div class="property small">
                                <a href="property-detail.html">
                                    <div class="property-image">
                                       <img src="<c:url value="/img/properties/property-03.jpg"/>" alt="">
                                    </div>
                                </a>
                                <div class="info">
                                    <a href="property-detail.html"><h4>1949 Tennessee Avenue</h4></a>
                                    <figure>Minneapolis, MN 55402</figure>
                                    <div class="tag price">Read More</div>
                                </div>
                            </div><!-- /.property -->
                        </aside><!-- /#featured-properties -->
                       
                    </section><!-- /#sidebar -->
                </div><!-- /.col-md-3 -->
                <!-- end Sidebar -->
            </div><!-- /.row -->
        </div><!-- /.container -->
       
       
    </div>
    <!-- end Page Content -->
    <!-- Page Footer -->
     <footer id="page-footer">
        <div class="inner">
            
            <aside id="footer-thumbnails" class="footer-thumbnails"></aside><!-- /#footer-thumbnails -->
            <aside id="footer-copyright">
                <div class="container">
                    <span>Mall Bangkok By Boat Buntana</span>
                    <span class="pull-right"><a href="#page-top" class="roll">Go to top</a></span>
                </div>
            </aside>
        </div><!-- /.inner -->
    </footer>
    <!-- end Page Footer -->
</div>


<script type="text/javascript" src="js/jquery-2.1.0.min.js"></script>
	<script type="text/javascript" src="js/custom-search2.js"></script>
<script type="text/javascript"
		src="http://maps.google.com/maps/api/js?key=AIzaSyAMhGbKMT4LRrhHNJGy316qFefrYNAHmns"></script>
<script type="text/javascript" src="js/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/smoothscroll.js"></script>
<script type="text/javascript" src="js/markerwithlabel_packed.js"></script>
<script type="text/javascript" src="js/infobox.js"></script>
<script type="text/javascript" src="js/owl.carousel.min.js"></script>
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

</body>
</html>