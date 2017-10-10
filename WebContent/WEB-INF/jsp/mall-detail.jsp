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
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
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
                            <h1>${mall.mallNameEng}  ${mall.mallNameThai}</h1>
                            <figure>Open-Closed : <c:out value="${mall.timeMall}"></c:out></figure>
                        </header>
                        <section id="property-gallery">
                            <div class="owl-carousel property-carousel">
                                <div class="property-slide">
                                    <a href="<c:url value="/img/mall/${mall.imageMall }"/>" class="image-popup">
                                        <div class="overlay"><h3>Front View</h3></div>
                                        <img alt="" src="<c:url value="/img/mall/${mall.imageMall}"/>">
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
                                        <dt>Facilities</dt>
                                            <c:if test="${facilities != null }">
                                            	<c:forEach var="i" items="${facilities }">
                                            		<dd><c:out value="${i.facilitiesName }" /></dd>
                                            	</c:forEach>
                                            </c:if>
                                    </dl>
                                </section><!-- /#quick-summary -->
                            </div><!-- /.col-md-4 -->
                            <div class="col-md-8">
                                <section id="find-shop">
                                    <header><h2>Shop in This Mall</h2></header>
                                    <ul class="nav nav-tabs">
										<li><a href="#home">Shopping</a></li>
										<li><a href="#menu1">Food</a></li>
										<li><a href="#menu2">Services</a></li>
									</ul>
                                </section><!-- /#find-shop -->
                                <div class="tab-content">
								<div id="home" class="tab-pane fade in active">
								<section id="property-features">
                                    <ul class="list-unstyled property-features-list">
                                       	<c:choose>
                                                  <c:when test="${listShopping != null }">
                                                      <c:forEach var="i" items="${listShopping}">
                                                      	<li><c:out value="${i.storeName}" /> , Level <c:out value="${i.floor }"/></li>
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
                                                      	<li><c:out value="${i.storeName}" />, Level <c:out value="${i.floor }"/></li>
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
                                                  <c:when test="${listServices != null }">
                                                      <c:forEach var="i" items="${listServices}">
                                                      	<li><c:out value="${i.storeName}" />, Level <c:out value="${i.floor }"/></li>
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
                            </div><!-- /.col-md-8 -->
                            <div class="col-md-12 col-sm-12">
                            </div><!-- /.col-md-12 -->
                        </div><!-- /.row -->
                    </section><!-- /#property-detail -->
                </div><!-- /.col-md-9 -->
                <!-- end Property Detail Content -->

                <!-- sidebar -->
                <form id="frmMallupdate" action="list-mall" method="post">
                <div class="col-md-3 col-sm-3">
                    <section id="sidebar">
                        <aside id="recent-post">
                            <header><h3>Recent Post</h3></header>
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
                        </aside><!-- /#recent post --> 
                    </section><!-- /#sidebar -->
                </div><!-- /.col-md-3 -->
                </form>
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