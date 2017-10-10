<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page
	import="java.util.*,com.spring.model.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
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
    <link rel="stylesheet" href="css/fileinput.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">

    <title>Mall Bangkok | Add Your Mall</title>

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
                <li class="active">Add your Mall</li>
            </ol>
        </div>
        <!-- end Breadcrumb -->

        <div class="container">
            <header><h1>Add Your Mall</h1></header>
            
            <form role="form" id="form-submit" class="form-submit" action="submit" method="post">
                <div class="row">
                    <div class="block">
                        <div class="col-md-12">
                            <section id="submit-form">
                                <section id="basic-information">
                                    <header><h2>Mall Information</h2></header>
                                    <div class="row">
                                    	<div class="col-md-4">
                                            <div class="form-group">
                                                <label for="submit-title">Mall Name Eng</label>
                                                <input type="text" class="form-control" id="submit-title" name="mallnameEng" required>
                                            </div><!-- /.form-group -->
                                        </div>
                                        <div class="col-md-4 col-sm-4">
                                            <div class="form-group">
                                                <label for="submit-title">Mall Name Thai</label>
                                                <input type="text" class="form-control" id="submit-title" name="mallNameThai" required>
                                            </div><!-- /.form-group -->
                                        </div>
                                    </div>
                                    
                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="submit-price">Type</label>
                                                <div class="input-group">
                                                    <span class="input-group-addon">T</span>
                                                    <select name="type" required>
                                                    	<option value="">Please Select Type</option>
                                                    	<option value="Regional Mall">Regional Mall</option>
                                                    	<option value="Community Mall">Community Mall</option>
                                                    	<option value="HyperMarket/SpecialtyStore">HyperMarket/SpecialtyStore</option>
                                                    	<option value="Theme Mall">Theme Mall</option>
                                                    	<option value="Luxury Mall">Luxury Mall</option>
                                                    	<option value="Department Store">Department Store</option>
                                                    	<option value="Complex">Complex</option>
                                                    	<option value="Shopping Plaza">Shopping Plaza</option>
                                                    </select>
                                                </div>
                                            </div><!-- /.form-group -->
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="submit-price">Area</label>
                                                <div class="input-group">
                                                    <span class="input-group-addon">A</span>
                                                    <select name="area" required>
                                                    	<option value="">Please Select Area</option>
                                                    	<option value="Siam">Siam</option>
                                                    	<option value="Central Bangkok">Central Bangkok</option>
                                                    	<option value="Sukhumvit">Sukhumvit</option>
                                                    	<option value="Thonburi">Thonburi</option>
                                                    	<option value="Inner Bangkok">Inner Bangkok</option>
                                                    	<option value="Northern Bangkok">Northern Bangkok</option>
                                                    	<option value="North-East Bangkok">North-East Bangkok</option>
                                                    	<option value="North-Middle Bangkok">North-Middle Bangkok</option>
                                                    	<option value="North-West Bangkok">North-West Bangkok</option>
                                                    	<option value="South-East Bangkok">South-East Bangkok</option>
                                                    	<option value="South-West Bangkok">South-West Bangkok</option>
                                                    	<option value="Upcountry">Upcountry</option>
                                                    </select>
                                                </div>
                                            </div><!-- /.form-group -->
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="submit-price">Mall Group</label>
                                                <div class="input-group">
                                                    <span class="input-group-addon">G</span>
                                                    <select name="mallgroup" required>
                                                    	<option value="">Please Select Group</option>
                                                    	<option value="No Group">No Group</option>
                                                    	<option value="Central Group">Central Group</option>
                                                    	<option value="The Mall Group">The Mall Group</option>
                                                    	<option value="Siam Piwat">Siam Piwat</option>
                                                    	<option value="MBK Group">MBK Group</option>
                                                    	<option value="MBK Group,Siam Piwat">MBK Group,Siam Piwat</option>
                                                    	<option value="MBK Group,Paradise Park,Siam Piwat">MBK Group,Paradise Park,Siam Piwat</option>
                                                    	<option value="Chula">Chula</option>
                                                    	<option value="Century">Century</option>
                                                    	<option value="Siam Future">Siam Future</option>
                                                    	<option value="Land & House (Siam Retail)">Land & House (Siam Retail)</option>
                                                    	<option value="Aeon">Aeon</option>
                                                    	<option value="Sansiri">Sansiri</option>
                                                    	<option value="Sammakorn">Sammakorn</option>
                                                    	<option value="Pata">Pata</option>
                                                    	<option value="Major Group">Major Group</option>
                                                    	<option value="Major Group,Tesco Lotus">Major Group,Tesco Lotus</option>
                                                    	<option value="Gaysorn Group">Gaysorn Group</option>
                                                    	<option value="Tesco">Tesco</option>
                                                    	<option value="Imperial Land">Imperial Land</option>
                                                    	<option value="TCC Group">TCC Group</option>
                                                    	<option value="TCC Group, The Street">TCC Group, The Street</option>
                                                    	<option value="Rangsit Plaza">Rangsit Plaza</option>
                                                    	<option value="Seacon Group">Seacon Group</option>
                                                    	<option value="CP Group">CP Group</option>
                                                    	<option value="Index">Index</option>
                                                    	<option value="TBN">TBN</option>
                                                    	<option value="Thaniya Group">Thaniya Group</option>
                                                    	<option value="Amornphan">Amornphan</option>
                                                    	<option value="Areeya">Areeya</option>
                                                    	<option value="Bangkok Land">Bangkok Land</option>
                                                    	<option value="D-Land">D-Land</option>
                                                    	<option value="Development Bangkok">Development Bangkok</option>
                                                    	<option value="IRIS Group">IRIS Group</option>
                                                    	<option value="K.E.Land">K.E.Land</option>
                                                    	<option value="Property Perfect">Property Perfect</	option>
                                                    	<option value="PSDC">PSDC</option>
                                                    	<option value="Sena Development">Sena Development</option>
                                                    	<option value="Silom Complex">Silom Complex</option>
                                                    	<option value="Suwan">Suwan</option>
                                                    	<option value="Tang Hua Seng">Tang Hua Seng</option>
                                                    	<option value="ZEER Property">ZEER Property</option>
                                                    	<option value="Raimond Land">Raimond Land</option>
                                                    	<option value="JAS">JAS</option>
                                                    	<option value="Thai Rung Group">Thai Rung Group</option>
                                                    </select>
                                                </div>
                                            </div><!-- /.form-group -->
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="submit-price">Status Mall</label>
                                                <div class="input-group">
                                                    <span class="input-group-addon">S</span>
                                                    <select name="statusmall" required>
                                                    	<option value="">Please Select Status</option>
                                                    	<option value="Open">Open</option>
                                                    	<option value="Closed">Closed</option>
                                                    	<option value="Renovated">Renovated</option>
                                                    </select>
                                                </div>
                                            </div><!-- /.form-group -->
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="submit-price">Time Mall</label>
                                                <div class="input-group">
                                                    <span class="input-group-addon">Time</span>
                                                    <select name="timemall" required>
                                                    	<option value="">Please Select Time Mall</option>
                                                    	<option value="24 Hours Everyday">24 Hours Everyday</option>
                                                    	<option value="06:00 - 22:00 Everyday">06:00 - 22:00 Everyday</option>
                                                    	<option value="06:00 - 24:00 Everyday">06:00 - 24:00 Everyday</option>
                                                    	<option value="07:00 - 22:00 Everyday">07:00 - 22:00 Everyday</option>
                                                    	<option value="07:00 - 24:00 Everyday">07:00 - 24:00 Everyday</option>
                                                    	<option value="08:00 - 22:00 Everyday">08:00 - 22:00 Everyday</option>
                                                    	<option value="08:00 - 23:00 Everyday">08:00 - 23:00 Everyday</option>
                                                    	<option value="08:30 - 20:00 Everyday">08:30 - 20:00 Everyday</option>
                                                    	<option value="08:30 - 20:30 Everyday">08:30 - 20:30 Everyday</option>
                                                    	<option value="09:00 - 20:00 Everyday">09:00 - 20:00 Everyday</option>
                                                    	<option value="09:00 - 21:00 Everyday">09:00 - 21:00 Everyday</option>
                                                    	<option value="09:00 - 22:00 Everyday">09:00 - 22:00 Everyday</option>
                                                    	<option value="09:00 - 23:00 Everyday">09:00 - 23:00 Everyday</option>
                                                    	<option value="09:30 - 22:00 Everyday">09:30 - 22:00 Everyday</option>
                                                    	<option value="09:00 - 24:00 Everyday">09:00 - 24:00 Everyday</option>
                                                    	<option value="10:00 - 24:00 Everyday">10:00 - 24:00 Everyday</option>
                                                    	<option value="10:00 - 19:00 Everyday">10:00 - 19:00 Everyday</option>
                                                    	<option value="10:00 - 02:00 Everyday">10:00 - 02:00 Everyday</option>
                                                    	<option value="10:00 - 20:00 Everyday">10:00 - 20:00 Everyday</option>
                                                    	<option value="10:00 - 21:00 Everyday">10:00 - 21:00 Everyday</option>
                                                    	<option value="10.00 - 21.30 Everyday">10.00 - 21.30 Everyday</option>
                                                    	<option value="10.00 - 22.00 Everyday">10.00 - 22.00 Everyday</option>
                                                    	<option value="10:00 - 23:00 Everyday">10:00 - 23:00 Everyday</option>
                                                    	<option value="10:30 - 21:00 Everyday">10:30 - 21:00 Everyday</option>
                                                    	<option value="10:30 - 21:30 Everyday">10:30 - 21:30 Everyday</option>
                                                    	<option value="10.30 - 22.00 Everyday">10.30 - 22.00 Everyday</option>
                                                    	<option value="10:30 - 22:30 Everyday">10:30 - 22:30 Everyday</option>
                                                    	<option value="10:30 - 23:45 Everyday">10:30 - 23:45 Everyday</option>
                                                    	<option value="11:00 - 21:00 Everyday">11:00 - 21:00 Everyday</option>
                                                    	<option value="11:00 - 22:00 Everyday">11:00 - 22:00 Everyday</option>
                                                    	<option value="17:00 - 24:00 Everyday">17:00 - 24:00 Everyday</option>
                                                    	<option value="08:00 - 21:30 Weekday, 09:00 - 21:30 Weekend">08:00 - 21:30 Weekday, 09:00 - 21:30 Weekend</option>
                                                    	<option value="10.00 - 21.00 Weekday, 10.00 - 22.00 Weekend">10.00 - 21.00 Weekday, 10.00 - 22.00 Weekend</option>
                                                    	<option value="10:00 - 20:00 Weekday, 10:00 - 21:00 Weekend">10:00 - 20:00 Weekday, 10:00 - 21:00 Weekend</option>
                                                    	<option value="10:00 - 21:00 Weekday, 11:00 - 21:00 Weekend">10:00 - 21:00 Weekday, 11:00 - 21:00 Weekend</option>
                                                    	<option value="10:30 - 21:30 Weekday, 10:00 - 21:30 Weekend">10:30 - 21:30 Weekday, 10:00 - 21:30 Weekend</option>
                                                    	<option value="10:30 - 22:00 Weekday, 10:00 - 22:00 Weekend ">10:30 - 22:00 Weekday, 10:00 - 22:00 Weekend</option>
                                                    	<option value="10:30 - 23:00 Weekday, 09:00 - 23:00 Weekend">10:30 - 23:00 Weekday, 09:00 - 23:00 Weekend</option>
                                                    	<option value="11:00 - 21:30 Weekday, 10:00 - 21:30 Weekend">11:00 - 21:30 Weekday, 10:00 - 21:30 Weekend</option>
                                                    	<option value="11:00 - 22:00 Weekday, 10:00 - 22:00 Weekend">11:00 - 22:00 Weekday, 10:00 - 22:00 Weekend</option>
                                                    	<option value="10:00 - 20:00 Mon-Fri, 10:30 - 21:00 Sat-Sun">10:00 - 20:00 Mon-Fri, 10:30 - 21:00 Sat-Sun</option>
                                                    	<option value="10:30 - 24:00 Mon-Wed, 10:00 - 24:00 Thu-Sun">10:30 - 24:00 Mon-Wed, 10:00 - 24:00 Thu-Sun</option>
                                                    	<option value="10:30 - 23:30 Mon-Wed, 10:00 - 23:30 Thu-Sun">10:30 - 23:30 Mon-Wed, 10:00 - 23:30 Thu-Sun</option>
                                                    	<option value="10:30 - 21:30 Mon-Thu, 11:00 - 22:00 Fri-Sun">10:30 - 21:30 Mon-Thu, 11:00 - 22:00 Fri-Sun</option>
                                                    	<option value="11:00 - 21:30 Mon-Thu, 11:00 - 22:00 Fri-Sun">11:00 - 21:30 Mon-Thu, 11:00 - 22:00 Fri-Sun</option>
                                                    	<option value="11:00 - 21:30 Mon-Thu, 11:00 - 22:00 Fri-Sun">10:30 - 21:00 Sun-Thu, 10:30 - 22:00 Fri-Sat</option>
                                                    	<option value="10:30 - 21:00 Mon-Thu, 10:30 - 22:00 Fri, 10:00 - 22:00 Weekend">10:30 - 21:00 Mon-Thu, 10:30 - 22:00 Fri, 10:00 - 22:00 Weekend</option>
                                                    	<option value="10:30 - 21:30 Mon-Thu, 10:30 - 22:00 Fri, 10:00 - 22:00 Weekend">10:30 - 21:30 Mon-Thu, 10:30 - 22:00 Fri, 10:00 - 22:00 Weekend</option>
                                                    	<option value="11:00 - 21:30 Mon-Thu, 11:00 - 22:00 Fri, 10:00 - 22:00 Sat, 10:00 - 21:30 Sun">11:00 - 21:30 Mon-Thu, 11:00 - 22:00 Fri, 10:00 - 22:00 Sat, 10:00 - 21:30 Sun</option>
                                                    	<option value="11:00 - 21:00 Mon-Thu, 11:00 - 21:30 Fri, 10:00 - 21:30 Sat, 10:00 - 21:00 Sun">11:00 - 21:00 Mon-Thu, 11:00 - 21:30 Fri, 10:00 - 21:30 Sat, 10:00 - 21:00 Sun</option>
                                                    	<option value="9:00 - 20:00 Mon,Tue,Thu,Fri, 8:00 - 20:00 Wed, 8:00 - 20:00 Weekend ">9:00 - 20:00 Mon,Tue,Thu,Fri, 8:00 - 20:00 Wed, 8:00 - 20:00 Weekend </option>
                                                    </select>
                                                </div>
                                            </div><!-- /.form-group -->
                                        </div>
                                    </div>
                                    <!-- 
                                    <div class="form-group">
                                        <label for="submit-description">Description</label>
                                        <textarea class="form-control" id="submit-description" rows="8" name="submit-description" required></textarea>
                                    </div>
                                    
                                     -->
                                </section><!-- /#basic-information -->
                                <section>
                                	<div class="row">
                                		<div class="col-md-4">
                                            <div class="form-group">
                                                <label for="submit-price">Phone Number</label>
                                                <div class="input-group">
                                                    <span class="input-group-addon">P</span>
                                                    <input type="text" class="form-control" id="submit-price" name="phonenumber" required>
                                                </div>
                                            </div><!-- /.form-group -->
                                        </div>
                                	</div>
                                </section>

                                <section class="block" id="gallery">
                                    <div class="center">
                                        <div class="form-group">
                                            <input id="file-upload" name="file" type="file" class="file" multiple="true" data-show-upload="false" data-show-caption="false" data-show-remove="false" accept="image/jpeg,image/png" data-browse-class="btn btn-default" data-browse-label="Browse Images">
                                            <figure class="note"><strong>Hint:</strong> You can upload all images at once!</figure>
                                        </div>
                                    </div>
                                </section>

                                <section id="property-features" class="block">
                                    <section>
                                        <header><h2>Facilities</h2></header>
                                        
                                        <ul class="submit-features">
                                        	<c:forEach var="i" items="${listFac}">
                                        		<li><div class="checkbox"><label><input type="checkbox" name="facilites" value="${i.facilitiesId}"><c:out value="${i.facilitiesName }"/></label></div></li>
                                        	</c:forEach>
                                        </ul>
                                    </section>
                                </section>
                                <hr>
                            </section>
                        </div><!-- /.col-md-9 -->
                    </div>
                </div><!-- /.row -->
                
                <div class="row">
                    <div class="block">
                        <div class="col-md-12 col-sm-12">
                            <div class="center">
                                <div class="form-group">
                                    <input type="submit" class="btn btn-default large" value="Add Mall">
                                </div><!-- /.form-group -->
                            </div>
                        </div>
                    </div>
                </div>
            </form><!-- /#form-submit -->
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

<script>
    var _latitude = 48.87;
    var _longitude = 2.29;

    google.maps.event.addDomListener(window, 'load', initSubmitMap(_latitude,_longitude));
    function initSubmitMap(_latitude,_longitude){
        var mapCenter = new google.maps.LatLng(_latitude,_longitude);
        var mapOptions = {
            zoom: 15,
            center: mapCenter,
            disableDefaultUI: false,
            //scrollwheel: false,
            styles: mapStyles
        };
        var mapElement = document.getElementById('submit-map');
        var map = new google.maps.Map(mapElement, mapOptions);
        var marker = new MarkerWithLabel({
            position: mapCenter,
            map: map,
            icon: '/img/marker.png',
            labelAnchor: new google.maps.Point(50, 0),
            draggable: true
        });
        $('#submit-map').removeClass('fade-map');
        google.maps.event.addListener(marker, "mouseup", function (event) {
            var latitude = this.position.lat();
            var longitude = this.position.lng();
            $('#latitude').val( this.position.lat() );
            $('#longitude').val( this.position.lng() );
        });

//      Autocomplete
        var input = /** @type {HTMLInputElement} */( document.getElementById('address-map') );
        var autocomplete = new google.maps.places.Autocomplete(input);
        autocomplete.bindTo('bounds', map);
        google.maps.event.addListener(autocomplete, 'place_changed', function() {
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
            $('#latitude').val( marker.getPosition().lat() );
            $('#longitude').val( marker.getPosition().lng() );
            var address = '';
            if (place.address_components) {
                address = [
                    (place.address_components[0] && place.address_components[0].short_name || ''),
                    (place.address_components[1] && place.address_components[1].short_name || ''),
                    (place.address_components[2] && place.address_components[2].short_name || '')
                ].join(' ');
            }
        });

    }

    function success(position) {
        initSubmitMap(position.coords.latitude, position.coords.longitude);
        $('#latitude').val( position.coords.latitude );
        $('#longitude').val( position.coords.longitude );
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