<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page
	import="java.util.*,com.spring.model.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html lang="en-US">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="author" content="ThemeStarz">

    <link href='http://fonts.googleapis.com/css?family=Roboto:300,400,700' rel='stylesheet' type='text/css'>
    <link href="fonts/font-awesome.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="bootstrap/css/bootstrap.css" type="text/css">
    <link rel="stylesheet" href="css/bootstrap-select.min.css" type="text/css">
    <link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="css/jquery.slider.min.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">

    <title>Mall Bangkok | Mall Detail</title>

</head>

<body class="page-sub-page page-property-detail" id="page-top">
<!-- Wrapper -->
<div class="wrapper">
    <!-- Navigation -->
    <div class="navigation">
        <div class="secondary-navigation">
            <div class="container">
                <div class="contact">
                    <figure><strong>Phone:</strong>+1 810-991-3842</figure>
                    <figure><strong>Email:</strong>zoner@example.com</figure>
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
                        <a href="index-google-map-fullscreen"><img src="<c:url value="/img/logo1@1x.png"/>" alt="brand"></a>
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
                        <li class="has-child"><a href="#">Directory</a>
                            <ul class="child-navigation">
                                <li><a href="#">List By Type</a>
                                	<ul class="child-navigation">
                                		<li><a href="list-mall?typename=Regional Mall">Regional Mall</a></li>
                                		<li><a href="list-mall?typename=Community Mall">Community Mall</a></li>
                                		<li><a href="#">HyperMarket/SpecialtyStore</a></li>
                                		<li><a href="#">Theme Mall</a></li>
                                		<li><a href="#">Luxury Mall</a></li>
                                		<li><a href="#">Department Store</a></li>
                                		<li><a href="#">Complex</a></li>
                                		<li><a href="#">Shopping Plaza</a></li>
                                	</ul>
                                </li>
                                <li><a href="properties-listing">List By Area</a></li>
                                <li><a href="properties-listing-grid.html">List All</a></li>
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
                        <li><a href="loadsearchfilter">Search Mall</a>
								<ul class="child-navigation">
									<li><a href="index-slider-search-custom">Search Custom</a></li>
								</ul>
						</li>
                        <li class="has-child"><a href="#">Blog</a>
                            <ul class="child-navigation">
                                <li><a href="blog.html">Blog Listing</a></li>
                                <li><a href="blog-detail.html">Blog Post Detail</a></li>
                            </ul>
                        </li>
                        <li><a href="contact.html">Contact</a></li>
                    </ul>
                </nav><!-- /.navbar collapse-->
                
            </header><!-- /.navbar -->
        </div><!-- /.container -->
    </div><!-- /.navigation -->
    <!-- end Navigation -->
    <!-- Page Content -->
    <div id="page-content">
        <!-- Breadcrumb -->
        <div class="container">
            <ol class="breadcrumb">
                <li><a href="#">Home</a></li>
                <li class="active">Mall Detail</li>
            </ol>
        </div>
        <!-- end Breadcrumb -->

        <div class="container">
            <div class="row">
                <!-- Property Detail Content -->
                <div class="col-md-9 col-sm-9">
                    <section id="property-detail">
                        <header class="property-title">
                            <h1>${mall.mallName}</h1>
                            <figure><c:out value="${mall.timeMall}"></c:out></figure>
                            <span class="actions">
                                <!--<a href="#" class="fa fa-print"></a>-->
                                <a href="#" class="bookmark" data-bookmark-state="empty"><span class="title-add">Add to bookmark</span><span class="title-added">Added</span></a>
                            </span>
                        </header>
                        <section id="property-gallery">
                            <div class="owl-carousel property-carousel">
                                <div class="property-slide">
                                    <a href="<c:url value="/img/mall/${mall.imageMall }"/>" class="image-popup">
                                        <div class="overlay"><h3>Front View</h3></div>
                                        <img alt="" src="<c:url value="/img/mall/${mall.imageMall }"/>">
                                    </a>
                                </div><!-- /.property-slide -->
                            </div><!-- /.property-carousel -->
                        </section>
                        <div class="row">
                            <div class="col-md-4 col-sm-12">
                                <section id="quick-summary" class="clearfix">
                                    <header><h2>Mall Infomation</h2></header>
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
                            <div class="col-md-8">
                                <section id="find-shop">
                                    <header><h2>Find Shop in This Mall</h2></header>
                                    <div class="btn-group-shop">
  										 <button>Food</button>
										 <button>Shopping</button>
										 <button>Service</button>
									</div>
                                </section><!-- /#find-shop -->
                                <section id="select-floor">
                                	<header><h2>Floor</h2></header>
                                	<div class="btn-group2">
									<%for(int i = 0; i < 10;i++){ %>
										<button><%=i %></button>
									<%} %>
									</div>
                                </section>
                                <section id="property-features">
                                    <header><h2>List Shop</h2></header>
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
                                <section id="property-map">
                                    <header><h2>Map</h2></header>
                                    <div class="property-detail-map-wrapper">
                                        <div class="property-detail-map" id="property-detail-map"></div>
                                    </div>
                                </section><!-- /#property-map -->
                                <section id="property-rating">
                                    <header><h2>Rating</h2></header>
                                    <div class="clearfix">
                                        <aside>
                                            <header>Your Rating</header>
                                            <div class="rating rating-user">
                                                <div class="inner"></div>
                                            </div>
                                        </aside>
                                        <figure>
                                            <header>Overall Rating</header>
                                            <div class="rating rating-overall" data-score="4"></div>
                                        </figure>
                                    </div>
                                    <div class="rating-form">
                                        <header>Thank you! Please describe your rating</header>
                                        <form role="form" id="form-rating" method="post"  class="clearfix">
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="form-rating-name">Your Name<em>*</em></label>
                                                        <input type="text" class="form-control" id="form-rating-name" name="form-rating-name" required>
                                                    </div><!-- /.form-group -->
                                                </div><!-- /.col-md-6 -->
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="form-rating-email">Your Email<em>*</em></label>
                                                        <input type="email" class="form-control" id="form-rating-email" name="form-rating-email" required>
                                                    </div><!-- /.form-group -->
                                                </div><!-- /.col-md-6 -->
                                            </div><!-- /.row -->
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <label for="form-rating-message">Your Message<em>*</em></label>
                                                        <textarea class="form-control" id="form-rating-message" rows="6" name="form-rating-message" required></textarea>
                                                    </div><!-- /.form-group -->
                                                </div><!-- /.col-md-12 -->
                                            </div><!-- /.row -->
                                            <div class="form-group">
                                                <button type="submit" class="btn pull-right btn-default" id="form-rating-submit">Send a Message</button>
                                            </div><!-- /.form-group -->
                                            <div id="form-rating-status"></div>
                                        </form><!-- /#form-contact -->
                                    </div><!-- /.rating-form -->
                                </section><!-- /#property-rating -->
                            </div><!-- /.col-md-8 -->
                            <div class="col-md-12 col-sm-12">
                                
                                <hr class="thick">
                                <section id="similar-properties">
                                    <header><h2 class="no-border">Similar Properties</h2></header>
                                    <div class="row">
                                        <div class="col-md-4 col-sm-6">
                                            <div class="property">
                                                <a href="property-detail.html">
                                                    <div class="property-image">
                                                        <img alt="" src="<c:url value="/img/properties/property-06.jpg"/>">
                                                    </div>
                                                    <div class="overlay">
                                                        <div class="info">
                                                            <div class="tag price">$ 11,000</div>
                                                            <h3>3398 Lodgeville Road</h3>
                                                            <figure>Golden Valley, MN 55427</figure>
                                                        </div>
                                                        <ul class="additional-info">
                                                            <li>
                                                                <header>Area:</header>
                                                                <figure>240m<sup>2</sup></figure>
                                                            </li>
                                                            <li>
                                                                <header>Beds:</header>
                                                                <figure>2</figure>
                                                            </li>
                                                            <li>
                                                                <header>Baths:</header>
                                                                <figure>2</figure>
                                                            </li>
                                                            <li>
                                                                <header>Garages:</header>
                                                                <figure>0</figure>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </a>
                                            </div><!-- /.property -->
                                        </div><!-- /.col-md-3 -->
                                        <div class="col-md-4 col-sm-6">
                                            <div class="property">
                                                <a href="property-detail.html">
                                                    <div class="property-image">
                                                        <img alt="" src="<c:url value="/img/properties/property-04.jpg"/>">
                                                    </div>
                                                    <div class="overlay">
                                                        <div class="info">
                                                            <div class="tag price">$ 38,000</div>
                                                            <h3>2186 Rinehart Road</h3>
                                                            <figure>Doral, FL 33178 </figure>
                                                        </div>
                                                        <ul class="additional-info">
                                                            <li>
                                                                <header>Area:</header>
                                                                <figure>240m<sup>2</sup></figure>
                                                            </li>
                                                            <li>
                                                                <header>Beds:</header>
                                                                <figure>3</figure>
                                                            </li>
                                                            <li>
                                                                <header>Baths:</header>
                                                                <figure>1</figure>
                                                            </li>
                                                            <li>
                                                                <header>Garages:</header>
                                                                <figure>1</figure>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </a>
                                            </div><!-- /.property -->
                                        </div><!-- /.col-md-3 -->
                                        <div class="col-md-4 col-sm-6">
                                            <div class="property">
                                                <a href="property-detail.html">
                                                    <div class="property-image">
                                                        <img alt="" src="<c:url value="/img/properties/property-07.jpg"/>">
                                                    </div>
                                                    <div class="overlay">
                                                        <div class="info">
                                                            <div class="tag price">$ 325,000</div>
                                                            <h3>3705 Brighton Circle Road</h3>
                                                            <figure>Glenwood, MN 56334</figure>
                                                        </div>
                                                        <ul class="additional-info">
                                                            <li>
                                                                <header>Area:</header>
                                                                <figure>240m<sup>2</sup></figure>
                                                            </li>
                                                            <li>
                                                                <header>Beds:</header>
                                                                <figure>3</figure>
                                                            </li>
                                                            <li>
                                                                <header>Baths:</header>
                                                                <figure>1</figure>
                                                            </li>
                                                            <li>
                                                                <header>Garages:</header>
                                                                <figure>1</figure>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </a>
                                            </div><!-- /.property -->
                                        </div><!-- /.col-md-3 -->
                                    </div><!-- /.row-->
                                </section><!-- /#similar-properties -->
                                <hr class="thick">
                                
                            </div><!-- /.col-md-12 -->
                        </div><!-- /.row -->
                    </section><!-- /#property-detail -->
                </div><!-- /.col-md-9 -->
                <!-- end Property Detail Content -->

                <!-- sidebar -->
                <div class="col-md-3 col-sm-3">
                    <section id="sidebar">
                        <aside id="recent-post">
                            <header><h3>Recent Post</h3></header>
                            <div class="property small">
                                <a href="property-detail.html">
                                    <div class="property-image">
                                        <img alt="" src="<c:url value="/img/properties/property-06.jpg"/>">
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
                                        <img alt="" src="<c:url value="/img/properties/property-09.jpg"/>">
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
                                        <img alt="" src="<c:url value="/img/properties/property-03.jpg"/>">
                                    </div>
                                </a>
                                <div class="info">
                                    <a href="property-detail.html"><h4>1949 Tennessee Avenue</h4></a>
                                    <figure>Minneapolis, MN 55402</figure>
                                    <div class="tag price">$ 128,600</div>
                                </div>
                            </div><!-- /.property -->
                        </aside><!-- /#recent post -->
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
                                            <img alt="" src="<c:url value="/img/properties/property-06"/>.jpg">
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
                                            <img alt="" src="<c:url value="/img/properties/property-09"/>.jpg">
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
                    <span>Copyright Â© 2013. All Rights Reserved.</span>
                    <span class="pull-right"><a href="#page-top" class="roll">Go to top</a></span>
                </div>
            </aside>
        </div><!-- /.inner -->
    </footer>
    <!-- end Page Footer -->
</div>

<script type="text/javascript" src="http://maps.google.com/maps/api/js?key=AIzaSyAMhGbKMT4LRrhHNJGy316qFefrYNAHmns"></script>
<script type="text/javascript" src="js/jquery-2.1.0.min.js"></script>
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
<script type="text/javascript" src="js/retina-1.1.0.min.js"></script>
<script type="text/javascript" src="js/jquery.raty.min.js"></script>
<script type="text/javascript" src="js/jquery.magnific-popup.min.js"></script>
<script type="text/javascript" src="js/jshashtable-2.1_src.js"></script>
<script type="text/javascript" src="js/jquery.numberformatter-1.2.3.js"></script>
<script type="text/javascript" src="js/tmpl.js"></script>
<script type="text/javascript" src="js/jquery.dependClass-0.1.js"></script>
<script type="text/javascript" src="js/draggable-0.1.js"></script>
<script type="text/javascript" src="js/jquery.slider.js"></script>
<script type="text/javascript" src="js/jquery.fitvids.js"></script>
<script type="text/javascript" src="js/custom-map.js"></script>
<script type="text/javascript" src="js/custom.js"></script>
<!--[if gt IE 8]>
<script type="text/javascript" src="assets/js/ie.js"></script>
<![endif]-->
<script type="text/javascript">
    var propertyId = 0;
    google.maps.event.addDomListener(window, 'load', initMap(propertyId));
    $(window).load(function(){
        initializeOwl(false);
    });
</script>

</body>
</html>