<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en-US">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="author" content="ThemeStarz">

<link href='http://fonts.googleapis.com/css?family=Roboto:300,400,700'
	rel='stylesheet' type='text/css'>
<link href="assets/fonts/font-awesome.css" rel="stylesheet"type="text/css">
<link rel="stylesheet" href="bootstrap/css/bootstrap.css"type="text/css">
<link rel="stylesheet" href="css/bootstrap-select.min.css"type="text/css">
<link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
<link rel="stylesheet" href="css/jquery.slider.min.css" type="text/css">
<link rel="stylesheet" href="css/owl.carousel.css" type="text/css">
<link rel="stylesheet" href="css/style.css" type="text/css">

    <title>Zoner | OSM Fixed Navigation</title>

</head>

<body class="page-homepage navigation-fixed-top map-osm" id="page-top" data-spy="scroll" data-target=".navigation" data-offset="90">
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
                        <a href="#"><img src="<c:url value="/img/flags/se.png"/>" alt=""></a>
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
                        <a href="index-google-map-fullscreen.html"><img src="<c:url value="/img/logo.png"/>" alt="brand"></a>
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
                <div class="row">
                    <div class="col-md-3 col-sm-4">
                        <div class="search-box map">
                            <form role="form" id="form-map" class="form-map form-search">
                                <h2>Search Your Property</h2>
                                <div class="form-group">
                                    <input type="text" class="form-control" id="search-box-property-id" placeholder="Property ID">
                                </div>
                                <div class="form-group">
                                    <select name="type">
                                        <option value="">Status</option>
                                        <option value="1">Rent</option>
                                        <option value="2">Sale</option>
                                    </select>
                                </div><!-- /.form-group -->
                                <div class="form-group">
                                    <select name="country">
                                        <option value="">Country</option>
                                        <option value="1">France</option>
                                        <option value="2">Great Britain</option>
                                        <option value="3">Spain</option>
                                        <option value="4">Russia</option>
                                        <option value="5">United States</option>
                                    </select>
                                </div><!-- /.form-group -->
                                <div class="form-group">
                                    <select name="city">
                                        <option value="">City</option>
                                        <option value="1">New York</option>
                                        <option value="2">Los Angeles</option>
                                        <option value="3">Chicago</option>
                                        <option value="4">Houston</option>
                                        <option value="5">Philadelphia</option>
                                    </select>
                                </div><!-- /.form-group -->
                                <div class="form-group">
                                    <select name="district">
                                        <option value="">District</option>
                                        <option value="1">Manhattan</option>
                                        <option value="2">The Bronx</option>
                                        <option value="3">Brooklyn</option>
                                        <option value="4">Queens</option>
                                        <option value="5">Staten Island</option>
                                    </select>
                                </div><!-- /.form-group -->
                                <div class="form-group">
                                    <select name="property-type">
                                        <option value="">Property Type</option>
                                        <option value="1">Apartment</option>
                                        <option value="2">Condominium</option>
                                        <option value="3">Cottage</option>
                                        <option value="4">Flat</option>
                                        <option value="5">House</option>
                                    </select>
                                </div><!-- /.form-group -->
                                <div class="form-group">
                                    <div class="price-range">
                                        <input id="price-input" type="text" name="price" value="1000;299000">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <button type="submit" class="btn btn-default">Search Now</button>
                                </div><!-- /.form-group -->
                            </form><!-- /#form-map -->
                        </div><!-- /.search-box.map -->
                    </div><!-- /.col-md-3 -->
                </div><!-- /.row -->
            </div><!-- /.container -->
        </div><!-- /.search-box-inner -->
    </div>
    <!-- end Search Box -->

    <!-- Page Content -->
    <div id="page-content">
        <section id="banner">
            <div class="block has-dark-background background-color-default-darker center text-banner">
                <div class="container">
                    <h1 class="no-bottom-margin no-border">Zoner Is Fully Loaded Real Estate Template with <a href="#" class="text-underline">Tons of Features</a>!</h1>
                </div>
            </div>
        </section><!-- /#banner -->
        <section id="our-services" class="block">
            <div class="container">
                <header class="section-title"><h2>Our Services</h2></header>
                <div class="row">
                    <div class="col-md-4 col-sm-4">
                        <div class="feature-box equal-height">
                            <figure class="icon"><i class="fa fa-folder"></i></figure>
                            <aside class="description">
                                <header><h3>Wide Range of Properties</h3></header>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit</p>
                                <a href="properties-listing.html" class="link-arrow">Read More</a>
                            </aside>
                        </div><!-- /.feature-box -->
                    </div><!-- /.col-md-4 -->
                    <div class="col-md-4 col-sm-4">
                        <div class="feature-box equal-height">
                            <figure class="icon"><i class="fa fa-users"></i></figure>
                            <aside class="description">
                                <header><h3>14 Agents for Your Service</h3></header>
                                <p>Aliquam gravida magna et fringilla convallis. Pellentesque habitant morbi </p>
                                <a href="agents-listing.html" class="link-arrow">Read More</a>
                            </aside>
                        </div><!-- /.feature-box -->
                    </div><!-- /.col-md-4 -->
                    <div class="col-md-4 col-sm-4">
                        <div class="feature-box equal-height">
                            <figure class="icon"><i class="fa fa-money"></i></figure>
                            <aside class="description">
                                <header><h3>Best Price Guarantee!</h3></header>
                                <p>Phasellus non viverra tortor, id auctor leo. Suspendisse id nibh placerat</p>
                                <a href="#" class="link-arrow">Read More</a>
                            </aside>
                        </div><!-- /.feature-box -->
                    </div><!-- /.col-md-4 -->
                </div><!-- /.row -->
            </div><!-- /.container -->
        </section><!-- /#our-services -->
        <section id="price-drop" class="block">
            <div class="container">
                <header class="section-title">
                    <h2>Price Drop</h2>
                    <a href="properties-listing.html" class="link-arrow">All Properties</a>
                </header>
                <div class="row">
                    <div class="col-md-3 col-sm-6">
                        <div class="property">
                            <a href="property-detail.html">
                                <div class="property-image">
                                <img src="<c:url value="/img/properties/property-06.jpg"/>" alt="">
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
                    <div class="col-md-3 col-sm-6">
                        <div class="property">
                            <a href="property-detail.html">
                                <div class="property-image">
                                   <img src="<c:url value="/img/properties/property-04.jpg"/>" alt="">
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
                    <div class="col-md-3 col-sm-6">
                        <div class="property">
                            <a href="property-detail.html">
                                <div class="property-image">
                                    <img src="<c:url value="/img/properties/property-07.jpg"/>" alt="">
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
                    <div class="col-md-3 col-sm-6">
                        <div class="property">
                            <a href="property-detail.html">
                                <div class="property-image">
                                 <img src="<c:url value="/img/properties/property-08.jpg"/>" alt="">
                                </div>
                                <div class="overlay">
                                    <div class="info">
                                        <div class="tag price">$ 16,000</div>
                                        <h3>362 Lynn Ogden Lane</h3>
                                        <figure>Galveston, TX 77550</figure>
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
            </div><!-- /.container -->
        </section><!-- /#price-drop -->
        <aside id="advertising" class="block">
            <div class="container">
                <a href="submit.html">
                    <div class="banner">
                        <div class="wrapper">
                            <span class="title">Do you want your property to be listed here?</span>
                            <span class="submit">Submit it now! <i class="fa fa-plus-square"></i></span>
                        </div>
                    </div><!-- /.banner-->
                </a>
            </div>
        </aside><!-- /#adveritsing-->
        <section id="new-properties" class="block">
            <div class="container">
                <header class="section-title">
                    <h2>New Properties for You</h2>
                    <a href="properties-listing.html" class="link-arrow">All Properties</a>
                </header>
                <div class="row">
                    <div class="col-md-3 col-sm-6">
                        <div class="property">
                            <a href="property-detail.html">
                                <div class="property-image">
                                     <img src="<c:url value="/img/properties/property-09.jpg"/>" alt="">
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
                    <div class="col-md-3 col-sm-6">
                        <div class="property">
                            <a href="property-detail.html">
                                <div class="property-image">
                                    <img src="<c:url value="/img/properties/property-03.jpg"/>" alt="">
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
                    <div class="col-md-3 col-sm-6">
                        <div class="property">
                            <a href="property-detail.html">
                                <div class="property-image">
                                    <img src="<c:url value="/img/properties/property-06.jpg"/>" alt="">
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
                    <div class="col-md-3 col-sm-6">
                        <div class="property">
                            <a href="property-detail.html">
                                <div class="property-image">
                                    <img src="<c:url value="/img/properties/property-01.jpg"/>" alt="">
                                </div>
                                <div class="overlay">
                                    <div class="info">
                                        <div class="tag price">$ 16,000</div>
                                        <h3>362 Lynn Ogden Lane</h3>
                                        <figure>Galveston, TX 77550</figure>
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
                <div class="row">
                    <div class="col-md-3 col-sm-6">
                        <div class="property">
                            <a href="property-detail.html">
                                <div class="property-image">
                                     <img src="<c:url value="/img/properties/property-02.jpg"/>" alt="">
                                </div>
                                <div class="overlay">
                                    <div class="info">
                                        <div class="tag price">$ 18,000</div>
                                        <h3>2506 B Street</h3>
                                        <figure>New Brighton, MN 55112</figure>
                                    </div>
                                    <ul class="additional-info">
                                        <li>
                                            <header>Area:</header>
                                            <figure>280m<sup>2</sup></figure>
                                        </li>
                                        <li>
                                            <header>Beds:</header>
                                            <figure>3</figure>
                                        </li>
                                        <li>
                                            <header>Baths:</header>
                                            <figure>2</figure>
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
                    <div class="col-md-3 col-sm-6">
                        <div class="property">
                            <a href="property-detail.html">
                                <div class="property-image">
                                   <img src="<c:url value="/img/properties/property-12.jpg"/>" alt="">
                                </div>
                                <div class="overlay">
                                    <div class="info">
                                        <div class="tag price">$ 136,000</div>
                                        <h3>3990 Late Avenue</h3>
                                        <figure>Kingfisher, OK 73750</figure>
                                    </div>
                                    <ul class="additional-info">
                                        <li>
                                            <header>Area:</header>
                                            <figure>30m<sup>2</sup></figure>
                                        </li>
                                        <li>
                                            <header>Beds:</header>
                                            <figure>1</figure>
                                        </li>
                                        <li>
                                            <header>Baths:</header>
                                            <figure>1</figure>
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
                    <div class="col-md-3 col-sm-6">
                        <div class="property">
                            <a href="property-detail.html">
                                <div class="property-image">
                                    <img src="<c:url value="/img/properties/property-05.jpg"/>" alt="">
                                </div>
                                <div class="overlay">
                                    <div class="info">
                                        <div class="tag price">$ 12,680</div>
                                        <h3>297 Marie Street</h3>
                                        <figure>Towson, MD 21204 </figure>
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
                    <div class="col-md-3 col-sm-6">
                        <div class="property">
                            <a href="property-detail.html">
                                <div class="property-image">
                                    <img src="<c:url value="/img/properties/property-10.jpg"/>" alt="">
                                </div>
                                <div class="overlay">
                                    <div class="info">
                                        <div class="tag price">$ 12,800</div>
                                        <h3>64 Timberbrook Lane</h3>
                                        <figure>Denver, CO 80202</figure>
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
            </div><!-- /.container-->
        </section><!-- /#new-properties-->
        <section id="testimonials" class="block">
            <div class="container">
                <header class="section-title"><h2>Testimonials</h2></header>
                <div class="owl-carousel testimonials-carousel">
                    <blockquote class="testimonial">
                        <figure>
                            <div class="image">
                             <img src="<c:url value="/img/client-01.jpg"/>" alt="">
                            </div>
                        </figure>
                        <aside class="cite">
                            <p>Fusce risus metus, placerat in consectetur eu, porttitor a est sed sed dolor lorem cras adipiscing</p>
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
                            <p>Fusce risus metus, placerat in consectetur eu, porttitor a est sed sed dolor lorem cras adipiscing</p>
                            <footer>Natalie Jenkins</footer>
                        </aside>
                    </blockquote>
                </div><!-- /.testimonials-carousel -->
            </div><!-- /.container -->
        </section><!-- /#testimonials -->
        <section id="partners" class="block">
            <div class="container">
                <header class="section-title"><h2>Our Partners</h2></header>
              <div class="logos">
                    <div class="logo"><a href=""> <img src="<c:url value="/img/logo-partner-01.png"/>" alt=""></a></div>
                    <div class="logo"><a href=""> <img src="<c:url value="/img/logo-partner-02.png"/>" alt=""></a></div>
                    <div class="logo"><a href=""> <img src="<c:url value="/img/logo-partner-03.png"/>" alt=""></a></div>
                    <div class="logo"><a href=""> <img src="<c:url value="/img/logo-partner-04.png"/>" alt=""></a></div>
                    <div class="logo"><a href=""> <img src="<c:url value="/img/logo-partner-05.png"/>" alt=""></a></div>
                </div>
            </div><!-- /.container -->
        </section><!-- /#partners -->
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

<div id="overlay"></div>

<script type="text/javascript" src="assets/js/jquery-2.1.0.min.js"></script>
<script type="text/javascript" src="assets/js/leaflet.js"></script>
<script type="text/javascript" src="assets/js/leaflet.markercluster.js"></script>
<script type="text/javascript" src="assets/js/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" src="assets/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="assets/js/smoothscroll.js"></script>
<script type="text/javascript" src="assets/js/owl.carousel.min.js"></script>
<script type="text/javascript" src="assets/js/bootstrap-select.min.js"></script>
<script type="text/javascript" src="assets/js/jquery.validate.min.js"></script>
<script type="text/javascript" src="assets/js/jquery.placeholder.js"></script>
<script type="text/javascript" src="assets/js/icheck.min.js"></script>
<script type="text/javascript" src="assets/js/jquery.vanillabox-0.1.5.min.js"></script>
<script type="text/javascript" src="assets/js/retina-1.1.0.min.js"></script>
<script type="text/javascript" src="assets/js/smoothscroll.js"></script>
<script type="text/javascript" src="assets/js/jshashtable-2.1_src.js"></script>
<script type="text/javascript" src="assets/js/jquery.numberformatter-1.2.3.js"></script>
<script type="text/javascript" src="assets/js/tmpl.js"></script>
<script type="text/javascript" src="assets/js/jquery.dependClass-0.1.js"></script>
<script type="text/javascript" src="assets/js/draggable-0.1.js"></script>
<script type="text/javascript" src="assets/js/jquery.slider.js"></script>
<script type="text/javascript" src="assets/js/custom-map.js"></script>
<script type="text/javascript" src="assets/js/custom.js"></script>
<!--[if gt IE 8]>
<script type="text/javascript" src="assets/js/ie.js"></script>
<![endif]-->
<script>
    _latitude = 48.871;
    _longitude = 2.3;
    createHomepageOSM(_latitude,_longitude);
    $(window).load(function(){
        initializeOwl(false);
    });
</script>
</body>
</html>