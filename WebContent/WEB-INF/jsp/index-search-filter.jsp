<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*,com.spring.model.*,com.spring.searchfilter.*"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
  
<html lang="en-US">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="author" content="ThemeStarz">

    <link href='http://fonts.googleapis.com/css?family=Roboto:300,400,700' rel='stylesheet' type='text/css'>
    <link href="fonts/font-awesome.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="bootstrap/css/bootstrap.css" type="text/css">
    <link rel="stylesheet" href="css/bootstrap-select.min.css" type="text/css">
    <link rel="stylesheet" href="css/jquery.slider.min.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">

    <title>Mall Bangkok | Google Map with Advanced Horizontal Search</title>

</head>

<body class="page-homepage map-google navigation-fixed-top horizontal-search" id="page-top" data-spy="scroll" data-target=".navigation" data-offset="90">
<!-- Wrapper -->
<div class="wrapper">

    <div class="navigation">
        <div class="secondary-navigation">
            <div class="container">
                <div class="contact">
                    <figure><strong>Phone:</strong>+1 810-991-3842</figure>
                    <figure><strong>Email:</strong>zoner@example.com</figure>
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
                <nav class="collapse navbar-collapse bs-navbar-collapse navbar-right" role="navigation">
                    <ul class="nav navbar-nav">
                        <li class="active has-child"><a href="#">Homepage</a>
                            <ul class="child-navigation">
                                <li><a href="index-google-map-fullscreen.html">Google Map Full Screen</a></li>
                                <li><a href="index-google-map-fixed-height.html">Google Map Fixed Height</a></li>
                                <li><a href="index-google-map-fixed-navigation.html">Google Map Fixed Navigation</a></li>
                                <li><a href="index-osm.html">OpenStreetMap Full Screen</a></li>
                                <li><a href="index-osm-fixed-height.html">OpenStreetMap Fixed Height</a></li>
                                <li><a href="index-osm-fixed-navigation.html">OpenStreetMap Fixed Navigation</a></li>
                                <li><a href="index-slider.html">Slider Homepage</a></li>
                                <li><a href="index-slider-search-box.html">Slider with Search Box</a></li>
                                <li><a href="index-horizontal-search-floated.html">Horizontal Search Floated</a></li>
                                <li><a href="index-advanced-horizontal-search.html">Horizontal Advanced Search</a></li>
                                <li><a href="index-slider-horizontal-search-box.html">Horizontal Slider Search</a></li>
                                <li><a href="index-slider-horizontal-search-box-floated.html">Horizontal Slider Floated Search</a></li>
                            </ul>
                        </li>
                        <li class="has-child"><a href="#">Properties</a>
                            <ul class="child-navigation">
                                <li><a href="property-detail.html">Property Detail</a></li>
                                <li><a href="properties-listing.html">Masonry Listing</a></li>
                                <li><a href="properties-listing-grid.html">Grid Listing</a></li>
                                <li><a href="properties-listing-lines.html">Lines Listing</a></li>
                            </ul>
                        </li>
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
                                <li><a href="sign-in.html">Sign In</a></li>
                                <li class="has-child"><a href="#">Error Pages</a>
                                    <ul class="child-navigation">
                                        <li><a href="403.html">403</a></li>
                                        <li><a href="404.html">404</a></li>
                                        <li><a href="500.html">500</a></li>
                                    </ul>
                                </li>
                                <li><a href="faq.html">FAQ</a></li>
                                <li><a href="left-sidebar.html">Left Sidebar</a></li>
                                <li><a href="right-sidebar.html">Right Sidebar</a></li>
                                <li><a href="sticky-footer.html">Sticky Footer</a></li>
                                <li><a href="pricing.html">Pricing</a></li>
                                <li><a href="shortcodes.html">Shortcodes</a></li>
                                <li><a href="shortcodes.html">Shortcodes</a></li>
                                <li><a href="timeline.html">Timeline</a></li>
                                <li><a href="terms-conditions.html">Terms & Conditions</a></li>
                                <li><a href="rtl.html">RTL Support</a></li>
                            </ul>
                        </li>
                        <li class="has-child"><a href="#">Agents & Agencies</a>
                            <ul class="child-navigation">
                                <li><a href="agents-listing.html">Agents Listing</a></li>
                                <li><a href="agent-detail.html">Agent Detail</a></li>
                                <li><a href="agencies-listing.html">Agencies Listing</a></li>
                                <li><a href="agency-detail.html">Agency Detail</a></li>
                            </ul>
                        </li>
                        <li><a href="submit.html">Submit</a></li>
                        <li class="has-child"><a href="#">Blog</a>
                            <ul class="child-navigation">
                                <li><a href="blog.html">Blog Listing</a></li>
                                <li><a href="blog-detail.html">Blog Post Detail</a></li>
                            </ul>
                        </li>
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
                        <li class="active"><a href="#search-form-sale" data-toggle="tab">Area</a></li>
                        <li><a href="#search-form-rent" data-toggle="tab" >Department Store</a></li>
                        <li><a href="#search-form-group" data-toggle="tab">Mall Group</a> </li>
                    </ul>
                    <hr>
                    <!-- 1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111 -->
                    <div class="tab-content">
                        <div class="tab-pane fade in active" id="search-form-sale">
                            <a class="advanced-search-toggle" data-toggle="collapse" data-parent="#accordion" href="#advanced-search-sale">Advanced Sale Search <i class="fa fa-plus"></i></a>
                            <form role="form" id="form-map-sale" action="search-mall" method="get" class="form-map form-search clearfix has-dark-background">
                                <div id="advanced-search-sale" class="panel-collapse collapse">
                                    <div class="advanced-search">
                                        <header><h3>Property Features</h3></header>
                                        <ul class="submit-features">
                                            <li><div class="checkbox"><label><input type="checkbox">Air conditioning</label></div></li>
                                            <li><div class="checkbox"><label><input type="checkbox">Bedding</label></div></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-2 col-sm-4">
                                    </div>
                                    <div class="col-md-2 col-sm-4">
                                        <div class="form-group">
                                            <select name="select-area"id="select-area" onchange="onChange()">
                                                <option value="">Select Area</option>
                                                <option value="Central Bangkok">Central Bangkok</option>
                                                <option value="Siam">Siam</option>
                                                <option value="Sukhumvit">Sukhumvit </option>
                                                <option value="Thonburi">Thonburi</option>
                                                <option value="Inner Bangkok">Inner Bangkok</option>
                                                <option value="Eastern Bangkok">Eastern Bangkok</option>
                                                <option value="Western Bangkok">Western Bangkok</option>
                                                <option value="Northern Bangkok">Northern Bangkok</option>
                                                <option value="Eastern & Central">Eastern & Central</option>
                                                <option value="Northern">Northern</option>
                                                <option value="Northeast (Esan)">Northeast (Esan)</option>
                                                <option value="Southern">Southern</option>
                                            </select>
                                        </div><!-- /.form-group -->
                                    </div>
                                    <div class="col-md-2 col-sm-4">
                                        <div class="form-group">
                                            <select name="nameMall" id="nameMall">
                                                <option value="null">Select Mall</option>
                                                <c:choose>
                                                     <c:when test="${listMall != null }">
                                                       	<c:forEach var="i" items="${listMall}">
                                                       				<option value="${i.getMallNameEng}"><c:out value="${i.getMallNameEng }"></c:out></option>
                                                      	</c:forEach>
                                                     </c:when>
                                                </c:choose>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-2 col-sm-4">
                                        <div class="form-group">
                                            <button type="submit" class="btn btn-default">Search Mall</button>
                                        </div><!-- /.form-group -->
                                    </div>
                                </div>
                            </form><!-- /#form-map-sale -->
                        </div><!-- /#search-form-rent -->
                        <div class="tab-pane fade" id="search-form-rent">
                        <!-- 2222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222 -->
                            <form role="form" id="form-map-rent" action="search-mall" method="get" class="form-map form-search clearfix">
                                <div class="row">
                                    <div class="col-md-2 col-sm-4">
                                    </div>
                                    <div class="col-md-2 col-sm-4">
                                        <div class="form-group">
                                            <select name="select-area"id="select-area" onchange="onChange()">
                                                <option value="">Department Store</option>
                                                <option value="Central">Central</option>
                                                <option value="Robinson">Robinson</option>
                                                <option value="Zen">Zen</option>
                                                <option value="Isetan">Isetan</option>
                                                <option value="Tokyu">Tokyu</option>
                                                <option value="The Mall">The Mall</option>
                                                <option value="Paragon">Paragon</option>
                                                <option value="Emporium">Emporium</option>
                                                <option value="Tang Hua Seng">Tang Hua Seng</option>
                                                <option value="Pata">Pata</option>
                                            </select>
                                        </div><!-- /.form-group -->
                                    </div>
                                    <div class="col-md-2 col-sm-4">
                                        <div class="form-group">
                                            <select name="form-rent-price" onchange="onChange()">
                                                <option value="">Select Mall</option>
                                                <option value="">Mall Detail</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-2 col-sm-4">
                                        <div class="form-group">
                                            <button type="submit" class="btn btn-default">Search Rent</button>
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
                                            <button type="submit" class="btn btn-default">Search Rent</button>
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
                        	<c:choose>
                                  <c:when test="${dataMall != null }">
                                  <h1><c:out value="${dataMall.mallNameEng }"></c:out></h1>
                                  </c:when>
                            </c:choose>
                            
                        </header>
                        <section id="property-gallery">
                            <div class="owl-carousel property-carousel">
                                <div class="property-slide">
                                    <a href="assets/img/properties/property-detail-01.jpg" class="image-popup">
                                        <div class="overlay"><h3>Front View</h3></div>
                                         <img src="<c:url value="/img/properties/property-detail-01.jpg"/>" alt="">
                                    </a>
                                </div><!-- /.property-slide -->
                                <div class="property-slide">
                                    <a href="assets/img/properties/property-detail-02.jpg" class="image-popup">
                                        <div class="overlay"><h3>Bedroom</h3></div>
                                         <img src="<c:url value="/img/properties/property-detail-02.jpg"/>" alt="">
                                    </a>
                                </div><!-- /.property-slide -->
                                
                            </div><!-- /.property-carousel -->
                        </section>
                        <div class="row">
                            <div class="col-md-4 col-sm-12">
                                <section id="quick-summary" class="clearfix">
                                    <header><h2>Quick Summary</h2></header>
                                    <dl>
                                        <dt>Location</dt>
                                            <dd>Chicago, IL 60610</dd>
                                        <dt>Price</dt>
                                            <dd><span class="tag price">$78,000</span></dd>
                                        <dt>Property Type:</dt>
                                            <dd>House</dd>
                                        <dt>Status:</dt>
                                            <dd>Sale</dd>
                                        <dt>Area:</dt>
                                            <dd>860 m<sup>2</sup></dd>
                                        <dt>Beds:</dt>
                                            <dd>3</dd>
                                        <dt>Baths:</dt>
                                            <dd>2</dd>
                                        <dt>Garages:</dt>
                                            <dd>2</dd>
                                        <dt>Rating:</dt>
                                            <dd><div class="rating rating-overall" data-score="4"></div></dd>
                                    </dl>
                                </section><!-- /#quick-summary -->
                            </div><!-- /.col-md-4 -->
                            <div class="col-md-8 col-sm-12">
                                <section id="property-features">
                                    <header><h2>Shopping</h2></header>
                                    <ul class="list-unstyled property-features-list">
                                        <li>Sauna</li>
                                       	<c:choose>
                                                  <c:when test="${dataStore != null }">
                                                      <c:forEach var="i" items="${dataStore}">
                                                      	<li><c:out value="${i}"></c:out></li>
                                                     </c:forEach>
                                                  </c:when>
                                       	</c:choose>
                                        <li>Concrete Flooring</li>
                                    </ul>
                                </section><!-- /#property-features -->
                                
                            </div><!-- /.col-md-8 -->
                                <div class="col-md-8 col-sm-12">
                                <section id="property-features">
                                    <header><h2>Food</h2></header>
                                    <ul class="list-unstyled property-features-list">
                                        <li>Sauna</li>
                                        <li>Fireplace or fire pit</li>
                                        <li>Outdoor Kitchen</li>
                                        <li>Tennis Courts</li>
                                        <li>Trees and Landscaping</li>
                                        <li>Sun Room</li>
                                        <li>Family Room</li>
                                        <li>Concrete Flooring</li>
                                    </ul>
                                </section><!-- /#property-features -->
                                
                            </div><!-- /.col-md-8 -->
                            <div class="col-md-4 col-sm-12"></div>
                              <div class="col-md-8 col-sm-12">
                                <section id="property-features">
                                    <header><h2>Services</h2></header>
                                    <ul class="list-unstyled property-features-list">
                                        <li>Sauna</li>
                                        <li>Fireplace or fire pit</li>
                                        <li>Outdoor Kitchen</li>
                                        <li>Tennis Courts</li>
                                        <li>Trees and Landscaping</li>
                                        <li>Sun Room</li>
                                        <li>Family Room</li>
                                        <li>Concrete Flooring</li>
                                    </ul>
                                </section><!-- /#property-features -->
                            <div class="col-md-12 col-sm-12">
                               
                                <hr class="thick">
                                
                               
                                <section id="comments">
                                    <header><h2 class="no-border">Comments</h2></header>
                                    <ul class="comments">
                                        <li class="comment">
                                            <figure>
                                                <div class="image">
                                                    <img alt="" src="assets/img/client-01.jpg">
                                                </div>
                                            </figure>
                                            <div class="comment-wrapper">
                                                <div class="name pull-left">Catherine Brown</div>
                                                <span class="date pull-right"><span class="fa fa-calendar"></span>12.05.2014</span>
                                                <div class="rating rating-individual" data-score="4"></div>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vestibulum, sem ut sollicitudin consectetur,
                                                    augue diam ornare massa, ac vehicula leo turpis eget purus. Nunc pellentesque vestibulum mauris, eget suscipit
                                                    mauris imperdiet vel. Nulla et massa metus. Nam porttitor quam eget ante elementum consectetur. Aenean ac nisl
                                                    et nulla placerat suscipit eu a mauris. Curabitur quis augue condimentum, varius mi in, ultricies velit.
                                                    Suspendisse potenti.
                                                </p>
                                                <a href="#" class="reply"><span class="fa fa-reply"></span>Reply</a>
                                                <hr>
                                            </div>
                                        </li>
                                        <li>
                                            <ul class="comments-child">
                                                <li class="comment">
                                                    <figure>
                                                        <div class="image">
                                                            <img alt="" src="assets/img/agent-01.jpg">
                                                        </div>
                                                    </figure>
                                                    <div class="comment-wrapper">
                                                        <div class="name">John Doe</div>
                                                        <span class="date"><span class="fa fa-calendar"></span>24.06.2014</span>
                                                        <div class="rating rating-individual" data-score="3"></div>
                                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vestibulum, sem ut sollicitudin consectetur,
                                                            augue diam ornare massa, ac vehicula leo turpis eget purus. Nunc pellentesque vestibulum mauris, eget suscipit
                                                            mauris.
                                                        </p>
                                                        <a href="#" class="reply"><span class="fa fa-reply"></span>Reply</a>
                                                        <hr>
                                                    </div>
                                                </li>
                                            </ul>
                                        </li>
                                        <li class="comment">
                                            <figure>
                                                <div class="image">
                                                    <img alt="" src="assets/img/user-02.jpg">
                                                </div>
                                            </figure>
                                            <div class="comment-wrapper">
                                                <div class="name">John Doe</div>
                                                <span class="date"><span class="fa fa-calendar"></span>08.05.2014</span>
                                                <div class="rating rating-individual" data-score="5"></div>
                                                <p>Quisque iaculis neque at dui cursus posuere. Sed tristique pharetra orci, eu malesuada ante tempus nec.
                                                    Phasellus enim odio, facilisis et ante vel, tempor congue sapien. Praesent eget ligula
                                                    eu libero cursus facilisis vel non arcu. Sed vitae quam enim.
                                                </p>
                                                <a href="#" class="reply"><span class="fa fa-reply"></span>Reply</a>
                                                <hr>
                                            </div>
                                        </li>
                                    </ul>
                                </section>
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
                                        <img alt="" src="assets/img/properties/property-06.jpg">
                                    </div>
                                </a>
                                <div class="info">
                                    <a href="property-detail.html"><h4>2186 Rinehart Road</h4></a>
                                    <figure>Doral, FL 33178 </figure>
                                    <div class="tag price">$ 72,000</div>
                                </div>
                            </div><!-- /.property -->
                              <div class="property small">
                                <a href="property-detail.html">
                                    <div class="property-image">
                                        <img alt="" src="assets/img/properties/property-06.jpg">
                                    </div>
                                </a>
                                <div class="info">
                                    <a href="property-detail.html"><h4>2186 Rinehart Road</h4></a>
                                    <figure>Doral, FL 33178 </figure>
                                    <div class="tag price">$ 72,000</div>
                                </div>
                            </div><!-- /.property -->
                              <div class="property small">
                                <a href="property-detail.html">
                                    <div class="property-image">
                                        <img alt="" src="assets/img/properties/property-06.jpg">
                                    </div>
                                </a>
                                <div class="info">
                                    <a href="property-detail.html"><h4>2186 Rinehart Road</h4></a>
                                    <figure>Doral, FL 33178 </figure>
                                    <div class="tag price">$ 72,000</div>
                                </div>
                            </div><!-- /.property -->
                            <div class="property small">
                                <a href="property-detail.html">
                                    <div class="property-image">
                                        <img alt="" src="assets/img/properties/property-09.jpg">
                                    </div>
                                </a>
                                <div class="info">
                                    <a href="property-detail.html"><h4>2479 Murphy Court</h4></a>
                                    <figure>Minneapolis, MN 55402</figure>
                                    <div class="tag price">$ 36,000</div>
                                </div>
                            </div><!-- /.property -->
                            <div class="property small">
                                <a href="property-detail.html">
                                    <div class="property-image">
                                        <img alt="" src="assets/img/properties/property-03.jpg">
                                    </div>
                                </a>
                                <div class="info">
                                    <a href="property-detail.html"><h4>1949 Tennessee Avenue</h4></a>
                                    <figure>Minneapolis, MN 55402</figure>
                                    <div class="tag price">$ 128,600</div>
                                </div>
                            </div><!-- /.property -->
                        </aside><!-- /#featured-properties -->
                        <aside id="our-guides">
                            <header><h3>Our Guides</h3></header>
                            <a href="#" class="universal-button">
                                <figure class="fa fa-home"></figure>
                                <span>Buying Guide</span>
                                <span class="arrow fa fa-angle-right"></span>
                            </a><!-- /.universal-button -->
                            <a href="#" class="universal-button">
                                <figure class="fa fa-umbrella"></figure>
                                <span>Right Insurance for You</span>
                                <span class="arrow fa fa-angle-right"></span>
                            </a><!-- /.universal-button -->
                        </aside><!-- /#our-guide -->
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
            <aside id="footer-main">
                <div class="container">
                    <div class="row">
                        <div class="col-md-3 col-sm-3">
                            <article>
                                <h3>About Us</h3>
                                <p>Vel fermentum ipsum. Suspendisse quis molestie odio. Interdum et malesuada fames ac ante ipsum
                                    primis in faucibus. Quisque aliquet a metus in aliquet. Praesent ut turpis posuere, commodo odio
                                    id, ornare tortor
                                </p>
                                <hr>
                                <a href="#" class="link-arrow">Read More</a>
                            </article>
                        </div><!-- /.col-sm-3 -->
                        <div class="col-md-3 col-sm-3">
                            <article>
                                <h3>Recent Properties</h3>
                                <div class="property small">
                                    <a href="property-detail.html">
                                        <div class="property-image">
                                       <img src="<c:url value="/img/properties/property-06.jpg"/>" alt="">
                                           
                                        </div>
                                    </a>
                                    <div class="info">
                                        <a href="property-detail.html"><h4>2186 Rinehart Road</h4></a>
                                        <figure>Doral, FL 33178 </figure>
                                        <div class="tag price">$ 72,000</div>
                                    </div>
                                </div><!-- /.property -->
                                <div class="property small">
                                    <a href="property-detail.html">
                                        <div class="property-image">
                                            <img src="<c:url value="/img/properties/property-09.jpg"/>" alt="">
                                        </div>
                                    </a>
                                    <div class="info">
                                        <a href="property-detail.html"><h4>2479 Murphy Court</h4></a>
                                        <figure>Minneapolis, MN 55402</figure>
                                        <div class="tag price">$ 36,000</div>
                                    </div>
                                </div><!-- /.property -->
                            </article>
                        </div><!-- /.col-sm-3 -->
                        <div class="col-md-3 col-sm-3">
                            <article>
                                <h3>Contact</h3>
                                <address>
                                    <strong>Your Company</strong><br>
                                    4877 Spruce Drive<br>
                                    West Newton, PA 15089
                                </address>
                                +1 (734) 123-4567<br>
                                <a href="#">hello@example.com</a>
                            </article>
                        </div><!-- /.col-sm-3 -->
                        <div class="col-md-3 col-sm-3">
                            <article>
                                <h3>Useful Links</h3>
                                <ul class="list-unstyled list-links">
                                    <li><a href="#">All Properties</a></li>
                                    <li><a href="#">Privacy Policy</a></li>
                                    <li><a href="#">Login and Register Account</a></li>
                                    <li><a href="#">FAQ</a></li>
                                    <li><a href="#">Terms and Conditions</a></li>
                                </ul>
                            </article>
                        </div><!-- /.col-sm-3 -->
                    </div><!-- /.row -->
                </div><!-- /.container -->
            </aside><!-- /#footer-main -->
            <aside id="footer-thumbnails" class="footer-thumbnails"></aside><!-- /#footer-thumbnails -->
            <aside id="footer-copyright">
                <div class="container">
                    <span>Copyright © 2013. All Rights Reserved.</span>
                    <span class="pull-right"><a href="#page-top" class="roll">Go to top</a></span>
                </div>
            </aside>
        </div><!-- /.inner -->
    </footer>
    <!-- end Page Footer -->
</div>

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
<script type="text/javascript">
	function onChange(){
		var type = document.getElementById('select-area').value;
		console.log(type);
		
		location.assign('http://localhost:8080/ProjectFinal/selecttypeofmall?type=' + type);
	}
</script>
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