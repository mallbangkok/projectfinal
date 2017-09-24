<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html lang="en-US">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="author" content="ThemeStarz">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="fonts/font-awesome.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="bootstrap/css/bootstrap.css" type="text/css">
    <link rel="stylesheet" href="css/bootstrap-select.min.css" type="text/css">
    <link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="css/jquery.slider.min.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">

    <title>Mall Bangkok | Admin List Mall</title>

</head>

<body class="page-sub-page page-my-properties page-account" id="page-top">
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
                <li><a href="index-google-map-fullscreen">Home</a></li>
                <li class="active"><a href="list-category-admin">List Mall</a></li>
            </ol>
        </div>
        <!-- end Breadcrumb -->

        <div class="container">
            <div class="row">
            <!-- sidebar -->
            <div class="col-md-3 col-sm-2">
                <section id="sidebar">
                    <header><h3>Management List</h3></header>
                    <aside>
                        <ul class="sidebar-navigation">
                        	<li><a href="admin-profile"><i class="fa fa-user"></i><span>Admin Profile</span></a></li>
                            <li><a href="submit"><i class="fa fa-home"></i><span>Add Mall</span></a></li>
                            <li><a href="store-admin"><i class="fa fa-home"></i><span>Add Store</span></a></li>
                            <li><a href="article"><i class="fa fa-home"></i><span>Add Article</span></a></li>
                            <li><a href="list-category-admin"><i class="fa fa-book"></i><span>List Mall</span></a></li>
                            <li><a href="list-store-admin"><i class="fa fa-book"></i><span>List Store</span></a></li>
                            <li><a href="list-mall-article"><i class="fa fa-book"></i><span>List Article</span></a></li>
                            <li><a href="parking-admin"><i class="fa fa-automobile" ></i><span>Parking</span></a></li>
                        </ul>
                    </aside>
                </section><!-- /#sidebar -->
            </div><!-- /.col-md-3 -->
            <!-- end Sidebar -->
                <!-- My Properties -->
                <c:choose>
                	<c:when test="${listMalls != null}">
                		<div class="col-md-9 col-sm-10">
                    		<section id="my-properties">
                        	<header><h1>List Mall (found : <c:out value="${listMallSize}"/> Mall)</h1></header>
                        	<div class="my-properties">
                            	<div class="table-responsive">
                                	<table class="table">
                                    	<thead>
                                    	<tr>
                                        	<th>Mall name</th>
                                        	<th></th>
                                        	<th></th>
                                        	<th>Actions</th>
                                        	<th></th>
                                    	</tr>
                                    	</thead>
                                    <tbody>
	                                    <c:forEach begin="1" end="${mallPages}" varStatus="loop">
	                                    	<c:choose>
	                                    		<c:when test="${mPage == loop.index }">
																<c:choose>
																	<c:when test="${mPage == 1 }">
																		<c:forEach varStatus="i" begin="0" end="9" var="val"
																			items="${listMalls }">
																			<tr>
																				<td>
																					<div class="inner">
																						<a href="#"><h2>
																								<c:out value="${val.mallNameEng}" />
																							</h2></a>
																					</div>
																				</td>
																				<td><c:out value="${val.mallNameThai }" /></td>
																				<td></td>
																				<td class="actions"><a href="list-update-admin?mallid=${val.mallId }" class="edit"><i
																						class="fa fa-pencil"></i>Edit</a></td>
																				<td class="actions">
																					<button type="button" class="btn btn-danger">Delete</button>
																				</td>
																			</tr>
																		</c:forEach>
																	</c:when>
																	<c:otherwise>
																		<c:forEach varStatus="i" begin="${mPage * 10 - 10 }"
																			end="${mPage * 10 - 1}" var="val"
																			items="${listMalls }">
																			<tr>
																				<td>
																					<div class="inner">
																						<a href="#"><h2>
																								<c:out value="${val.mallNameEng}" />
																							</h2></a>
																					</div>
																				</td>
																				<td><c:out value="${val.mallNameThai}" /></td>
																				<td></td>
																				<td class="actions"><a href="list-update-admin?mallid=${val.mallId }" class="edit"><i
																						class="fa fa-pencil"></i>Edit</a></td>
																				<td class="actions">
																					<button type="button" class="btn btn-danger">Delete</button>
																				</td>
																			</tr>
																		</c:forEach>
																	</c:otherwise>
																</c:choose>
															</c:when>
	                                    	</c:choose>
	                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div><!-- /.table-responsive -->
                            <!-- Pagination -->
                            <div class="center">
                                <ul class="pagination">
                                    <c:forEach varStatus="loop" begin="1" end="${mallPages}">
                                    <c:choose>
                                    	<c:when test="${mPage == loop.index }">
                                    		<li class="active"><a href="change-mall-page?page=${loop.index }"><c:out value="${loop.index}"/></a></li>
                                    	</c:when>
                                    	<c:otherwise>
                                    		<li><a href="change-mall-page?page=${loop.index }"><c:out value="${loop.index}"/></a></li>
                                    	</c:otherwise>
                                    </c:choose>
                                    	
                                    </c:forEach>
                                </ul><!-- /.pagination-->
                            </div><!-- /.center-->
                        </div><!-- /.my-properties -->
                    </section><!-- /#my-properties -->
                </div><!-- /.col-md-9 -->
                	</c:when>
                </c:choose>
                <!-- end My Properties -->
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

<script type="text/javascript" src="js/jquery-2.1.0.min.js"></script>
<script type="text/javascript" src="js/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/smoothscroll.js"></script>
<script type="text/javascript" src="js/bootstrap-select.min.js"></script>
<script type="text/javascript" src="js/retina-1.1.0.min.js"></script>
<script type="text/javascript" src="js/custom.js"></script>
<!--[if gt IE 8]>
<script type="text/javascript" src="assets/js/ie.js"></script>
<![endif]-->

</body>
</html>