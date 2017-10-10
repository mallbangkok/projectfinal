<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*,com.spring.model.*,com.spring.searchfilter.*"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
  
<html lang="en-US">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="author" content="ThemeStarz">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link href='http://fonts.googleapis.com/css?family=Roboto:300,400,700' rel='stylesheet' type='text/css'>
    <link href="fonts/font-awesome.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="bootstrap/css/bootstrap.css" type="text/css">
    <link rel="stylesheet" href="css/bootstrap-select.min.css" type="text/css">
    <link rel="stylesheet" href="css/jquery.slider.min.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.css" type="text/css">
    <link rel="stylesheet" href="css/style3.css" type="text/css">

    <title>Mall Bangkok | Search Filter</title>

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
					</nav><!-- /.navbar collapse-->
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
                            <h1>${dataMall.mallNameEng}  ${dataMall.mallNameThai}</h1>
                            <figure>Open-Closed : <c:out value="${dataMall.timeMall}"></c:out></figure>
                        </header>
                        <section id="property-gallery">
                            <div class="owl-carousel property-carousel">
                                <div class="property-slide">
                                    <a href="assets/img/properties/property-detail-01.jpg" class="image-popup">
                                        <div class="overlay"><h3>Front View</h3></div>
                                         <img src="<c:url value="/img/mall/${dataMall.imageMall}"/>" alt="">
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
                                    <header>
                                     <c:choose>
                                  		<c:when test="${dataMall != null }">
                                  			<h1><c:out value="${dataMall.mallNameEng}"></c:out></h1>
                                  		</c:when>
                            		</c:choose>
                                    </header>
                                    <dl>
                                    	<dt>Mall Group</dt>
                                            <dd>${dataMall.mallGroup}</dd>
                                        <dt>Type</dt>
                                            <dd>${dataMall.type}</dd>
                                        <dt>Area</dt>
                                            <dd>${dataMall.area}</dd>
                                        <dt>Status Mall</dt>
                                            <dd>${dataMall.statusMall}</dd>
                                        <dt>Updated</dt>
                                            <dd>${dataMall.updatedDate}</dd>
                                        <dt>Phone Number</dt>
                                            <dd>${dataMall.phoneNoMall}</dd>
                                        <dt>Facilities</dt>
                                            <c:if test="${facilities != null }">
                                            	<c:forEach var="i" items="${facilities }">
                                            		<dd><c:out value="${i.facilitiesName }" /></dd>
                                            	</c:forEach>
                                            </c:if>
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
                                                      	<li><c:out value="${i.storeName}" /> , Level : <c:out value="${i.floor }"/></li>
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
                                                      	<li><c:out value="${i.storeName}" /> , Level : <c:out value="${i.floor }"/></li>
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
                                                      <li><c:out value="${i.storeName}" /> , Level : <c:out value="${i.floor }"/></li>
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
                           
                                
                            </div>                                
                            <div class="col-md-4 col-sm-12"></div>
                              <div class="col-md-8 col-sm-12">
                                
                            <div class="col-md-12 col-sm-12">
                                <hr class="thick">
                               <div class="fb-comments" data-href="http://localhost:8080/ProjectFinal/loadsearchfilter" data-width="500" data-numposts="5"></div>
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
                            <c:forEach var="i" items="${mallupdated}">
	                            <div class="property small">
	                                <a href="javascript:;" onclick="onClick(${i.mallId})">
	                                <input type="hidden" id="valueClick" name="valueClick" />
	                                    <div class="property-image">
	                                        <img alt="" src="<c:url value="/img/mall/thumbnail/${i.imageMall }"/>">
	                                    </div>
	                                </a>
	                                <div class="info">
	                                    <a href="javascript:;" onclick="onClickMall(${i.mallId})">
	                                    <h4><c:out value="${i.mallNameEng }"/></h4></a>
	                                    <figure><c:out value="${i.mallNameThai }"/></figure>
	                                    <div class="tag price"><c:out value="${i.updatedDate }"/></div>
	                                </div>
	                            </div><!-- /.property -->
	                        </c:forEach>
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

<script type="text/javascript">
	var mid;
	onClickMall = function(id){
		document.getElementById('valueClick').value = id;
		document.getElementById('frmMallupdate').submit();
		mid = id;
		console.log(mid);
	}
</script>
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

<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/th_TH/sdk.js#xfbml=1&version=v2.10&appId=2039217382978375";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
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