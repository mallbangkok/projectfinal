<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="css/jquery.slider.min.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">

    <title>Zoner | Profile</title>

</head>

<body class="page-sub-page page-profile page-account" id="page-top">
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
                        <a href="create-agency.html" class="promoted">Create Agency</a>
                        <a href="create-account.html" class="promoted"><strong>Register</strong></a>
                        <a href="sign-in.html">Sign In</a>
                    </div>
                    <div class="language-bar">
                        <a href="#" class="active">
                        
                        <img src="<c:url value="/img/flags/gb.png"/>" alt=""></a>
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
                        
                        <img src="<c:url value="/img/logo.png"/>"alt="brand">
</a>
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
    <!-- end Navigation -->
    <!-- Page Content -->
    <div id="page-content">
        <!-- Breadcrumb -->
        <div class="container">
            <ol class="breadcrumb">
                <li><a href="#">Home</a></li>
                <li><a href="#">Account</a></li>
                <li class="active">Profile</li>
            </ol>
        </div>
        <!-- end Breadcrumb -->

        <div class="container">
            <div class="row">
            <!-- sidebar -->
            <div class="col-md-3 col-sm-2">
                <section id="sidebar">
                    <header><h3>Account</h3></header>
                    <aside>
                        <ul class="sidebar-navigation">
                            <li class="active"><a href="#"><i class="fa fa-user"></i><span>Item 1</span></a></li>
                            <li><a href="#"><i class="fa fa-home"></i><span>Item 2</span></a></li>
                            <li>
                                <a href="#"><i class="fa fa-heart"></i><span>Item 3</span></a>
                                <ul>
                                    <li><a href="#">Sub Item 1</a></li>
                                    <li><a href="#">Sub Item 2</a></li>
                                    <li><a href="#">Sub Item 3</a></li>
                                </ul>
                            </li>
                        </ul>
                    </aside>
                </section><!-- /#sidebar -->
            </div><!-- /.col-md-3 -->
            <!-- end Sidebar -->
                <!-- Shortcodes -->
                <div class="col-md-9 col-sm-10">
                    <section id="profile">
                        <header><h1>Profile</h1></header>
                        <h2>Property Grid</h2>
                        <div class="row">
                            <div class="col-md-4 col-sm-4">
                                <div class="property equal-height">
                                    <figure class="tag status">For Sale</figure>
                                    <figure class="type" title="Apartment">
                                     <img src="<c:url value="/img/property-types/apartment.png"/>">
                                  </figure>
                                    <a href="property-detail.html">
                                        <div class="property-image">
                                         <img src="<c:url value="/img/properties/property-09.jpg"/>">    
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
                        </div>

                        <h2>Property Masonry</h2>
                        <div class="grid">
                            <div class="property masonry">
                                <div class="inner">
                                    <a href="property-detail.html">
                                        <div class="property-image">
                                            <figure class="tag status">For Sale</figure>
                                            <figure class="type" title="Apartment">
                                             <img src="<c:url value="/img/property-types/apartment.png"/>">
                                           </figure>
                                            <div class="overlay">
                                                <div class="info">
                                                    <div class="tag price">$ 11,000</div>
                                                </div>
                                            </div>
                                             <img src="<c:url value="/img/properties/property-09.jpg"/>">
                                            
                                        </div>
                                    </a>
                                    <aside>
                                        <header>
                                            <a href="property-detail.html"><h3>3398 Lodgeville Road</h3></a>
                                            <figure>Golden Valley, MN 55427</figure>
                                        </header>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras et dui vestibulum</p>
                                        <dl>
                                            <dt>Status:</dt>
                                            <dd>Sale</dd>
                                            <dt>Area:</dt>
                                            <dd>860 m<sup>2</sup></dd>
                                            <dt>Beds:</dt>
                                            <dd>3</dd>
                                            <dt>Baths:</dt>
                                            <dd>2</dd>
                                        </dl>
                                        <a href="property-detail.html" class="link-arrow">Read More</a>
                                    </aside>
                                </div>
                            </div><!-- /.property -->
                        </div>

                        <h2>Property Lines</h2>
                        <div class="display-lines">
                            <div class="property">
                                <figure class="tag status">For Sale</figure>
                                <figure class="type" title="Apartment">
                                  <img src="<c:url value="/img/property-types/apartment.png"/>">
                               </figure>
                                <div class="property-image">
                                    <figure class="ribbon">In Hold</figure>
                                    <a href="property-detail.html">
                                    <img src="<c:url value="/img/properties/property-01.jpg"/>">
                                       
                                    </a>
                                </div>
                                <div class="info">
                                    <header>
                                        <a href="property-detail.html"><h3>4862 Palmer Road</h3></a>
                                        <figure>Worthington, OH 43085</figure>
                                    </header>
                                    <div class="tag price">$ 38,000</div>
                                    <aside>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras et dui vestibulum,
                                            bibendum purus sit amet, vulputate mauris. Ut adipiscing gravida tincidunt...
                                        </p>
                                        <dl>
                                            <dt>Status:</dt>
                                            <dd>Sale</dd>
                                            <dt>Area:</dt>
                                            <dd>860 m<sup>2</sup></dd>
                                            <dt>Beds:</dt>
                                            <dd>3</dd>
                                            <dt>Baths:</dt>
                                            <dd>2</dd>
                                        </dl>
                                    </aside>
                                    <a href="property-detail.html" class="link-arrow">Read More</a>
                                </div>
                            </div><!-- /.property -->
                        </div>

                        <h2>Buttons</h2>
                        <div class="form-group">
                            <button type="submit" class="btn btn-default">btn-default</button>
                        </div><!-- /.form-group -->

                        <div class="form-group">
                            <button type="submit" class="btn btn-info">btn-info</button>
                        </div><!-- /.form-group -->

                        <div class="form-group">
                            <button type="submit" class="btn btn-warning">btn-warning</button>
                        </div><!-- /.form-group -->

                        <div class="form-group">
                            <button type="submit" class="btn btn-danger">btn-danger</button>
                        </div><!-- /.form-group -->

                        <div class="form-group">
                            <button type="submit" class="btn btn-success">btn-success</button>
                        </div><!-- /.form-group -->

                        <br>

                        <h2>Forms</h2>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="text-field">Text Field</label>
                                    <input type="text" class="form-control" id="text-field" name="title" required>
                                </div><!-- /.form-group -->
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="submit-price">Number Field with Addon</label>
                                    <div class="input-group">
                                        <span class="input-group-addon">$</span>
                                        <input type="text" class="form-control" id="submit-price" name="price" pattern="\d*" required>
                                    </div>
                                </div><!-- /.form-group -->
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="submit-location">Select</label>
                                    <select name="type" id="submit-location">
                                        <option value="1">New York</option>
                                        <option value="2">Los Angeles</option>
                                        <option value="3">Chicago</option>
                                        <option value="4">Houston</option>
                                        <option value="5">Philadelphia</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Checkboxes</label>
                                <ul class="submit-features">
                                    <li><div class="checkbox"><label><input type="checkbox">Air conditioning</label></div></li>
                                    <li><div class="checkbox"><label><input type="checkbox">Bedding</label></div></li>
                                </ul>
                            </div>
                        </div>




                    </section><!-- /#profile -->
                </div><!-- /.col-md-9 -->
                <!-- end Shortcodes -->
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
<script type="text/javascript" src="js/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/smoothscroll.js"></script>
<script type="text/javascript" src="js/owl.carousel.min.js"></script>
<script type="text/javascript" src="js/bootstrap-select.min.js"></script>
<script type="text/javascript" src="js/jquery.validate.min.js"></script>
<script type="text/javascript" src="js/icheck.min.js"></script>
<script type="text/javascript" src="js/retina-1.1.0.min.js"></script>

<script type="text/javascript" src="js/imagesloaded.pkgd.min.js"></script>
<script type="text/javascript" src="js/masonry.pkgd.min.js"></script>
<script type="text/javascript" src="js/scrollReveal.min.js"></script>

<script type="text/javascript" src="js/custom.js"></script>
<!--[if gt IE 8]>
<script type="text/javascript" src="assets/js/ie.js"></script>
<![endif]-->

</body>
</html>