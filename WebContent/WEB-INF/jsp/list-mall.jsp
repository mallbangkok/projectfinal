<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@ page import="java.util.*,com.spring.model.*"%>
<%String[] types = {"Regional Mall","Community Mall","HyperMarket/SpecialtyStore","Theme Mall","Luxury Mall"
    				,"Department Store","Complex","Shopping Plaza"}; %>
<%String[] areas = {"Siam","Central Bangkok","Sukhumvit","Thonburi","Inner Bangkok","Northern Bangkok",
		"North-East Bangkok","North-Middle Bangkok","North-West Bangkok","South-East Bangkok","South-West Bangkok","Upcountry"}; %>
<% HashMap<String,String> map = new HashMap<String,String>(); 
	map.put("null", "Directory");
	map.put("Type", "Type");
	map.put("Area", "Area");
	pageContext.setAttribute("map", map);
%>
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
    <link rel="stylesheet" href="css/style.css" type="text/css">

    <title>Mall Bangkok | List Mall</title>

</head>

<body class="page-sub-page page-listing page-grid page-search-results" id="page-top">
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
                <li class="active">List Mall</li>
            </ol>
        </div>
        <!-- end Breadcrumb -->

        <div class="container">
            <div class="row">
                <!-- Results -->
                <div class="col-md-12">
                    <section id="results">
                        <header><h1><c:out value="${type }"/></h1></header>
                        <section id="search-filter">
                            <figure><h3><i class="fa fa-search"></i>Search Results:</h3>
                                <span class="search-count"><c:out value="${size }"></c:out></span>
                            </figure>
                        </section>
                        <section id="properties">
                        <form action="list-mall" method="post" id="frm">
                        <div class="row">
                   		<c:if test="${listmallpage != null }">
                                    		<c:forEach begin="1" end="${countpages}" varStatus="loop">
                                    			<c:choose>
                                    				<c:when test="${listpage == loop.index }">
                                    					<c:choose>
                                    						<c:when test="${listpage == 1}">
                                    							<c:forEach begin="0" end="9" var="i" items="${listByType}" varStatus="loop">
									                            		<div class="col-md-3 col-sm-3">
										                                	<div class="property equal-height">
										                                    	<a href="javascript:;" onclick="onClick(${i.mallId})">
										                                    	<input type="hidden" id="valueClick" name="valueClick" />
										                                        	<div class="property-image">
										                                            	<img alt="" src="<c:url value="/img/mall/thumbnail/${i.imageMall }"/>">
										                                        	</div>
										                                        	<div class="overlay">
										                                            	<div class="info">
										                                                	<h3><c:out value="${i.mallNameEng }" /></h3>
										                                                	<h4><c:out value="${i.mallNameThai }" /></h4>
										                                            	</div>
										                                        	</div>
										                                    	</a>
										                                	</div><!-- /.property -->
									                            		</div><!-- /.col-md-3 -->
                         										</c:forEach>
                                    						</c:when>
                                    						<c:otherwise>
                                    							<c:forEach begin="${listpage * 10 - 10 }" end="${listpage * 10 - 1}" var="i" items="${listByType}" varStatus="loop">
									                            		<div class="col-md-3 col-sm-3">
										                                	<div class="property equal-height">
										                                    	<a href="javascript:;" onclick="onClick(${i.mallId})">
										                                    	<input type="hidden" id="valueClick" name="valueClick" />
										                                        	<div class="property-image">
										                                            	<img alt="" src="<c:url value="/img/mall/thumbnail/${i.imageMall }"/>">
										                                        	</div>
										                                        	<div class="overlay">
										                                            	<div class="info">
										                                                	<h3><c:out value="${i.mallNameEng }" /></h3>
										                                                	<h4><c:out value="${i.mallNameThai }" /></h4>
										                                            	</div>
										                                        	</div>
										                                    	</a>
										                                	</div><!-- /.property -->
									                            		</div><!-- /.col-md-3 -->
                         										</c:forEach>
                                    						</c:otherwise>
                                    					</c:choose>
                                    				</c:when>
                                    			</c:choose>
                                    		</c:forEach>
                                    	</c:if>
                                 <c:if test="${listmallpage == 1 }">
                                 	<c:forEach begin="0" end="9" var="i" items="${listByType}" varStatus="loop">
									                            		<div class="col-md-3 col-sm-3">
										                                	<div class="property equal-height">
										                                    	<a href="javascript:;" onclick="onClick(${i.mallId})">
										                                    	<input type="hidden" id="valueClick" name="valueClick" />
										                                        	<div class="property-image">
										                                            	<img alt="" src="<c:url value="/img/mall/thumbnail/${i.imageMall }"/>">
										                                        	</div>
										                                        	<div class="overlay">
										                                            	<div class="info">
										                                                	<h3><c:out value="${i.mallNameEng }" /></h3>
										                                                	<h4><c:out value="${i.mallNameThai }" /></h4>
										                                            	</div>
										                                        	</div>
										                                    	</a>
										                                	</div><!-- /.property -->
									                            		</div><!-- /.col-md-3 -->
                         										</c:forEach>
                                 </c:if>
                        </div><!-- /.row-->
                        </form>
                        <!-- Pagination -->
                        <div class="center">
                            <ul class="pagination">
                            <c:if test="${listmallpage == null }">
                            	<li class="active"><a href="change-list-mall-page?page=1"><c:out value="1"/></a></li>
                            </c:if>
                            <c:if test="${listmallpage != null }">
                            	<c:forEach varStatus="val" begin="1" end="${countpages}">
	                                	<c:choose>
	                                		<c:when test="${listpage == val.index }">
	                                			<li class="active"><a href="change-list-mall-page?page=${val.index }"><c:out value="${val.index}"/></a></li>
	                                		</c:when>
	                                		<c:otherwise>
	                                			<li><a href="change-list-mall-page?page=${val.index }"><c:out value="${val.index}"/></a></li>
	                                		</c:otherwise>
	                                	</c:choose>
                                </c:forEach>
                            </c:if>
                            </ul><!-- /.pagination-->
                        </div><!-- /.center-->

                        </section><!-- /#properties-->
                    </section><!-- /#results -->
                </div><!-- /.col-md-9 -->
                <!-- end Results -->

                
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
<script type="text/javascript">
	var mid;
	onClick = function(id){
		document.getElementById('valueClick').value = id;
		document.getElementById('frm').submit();
		mid = id;
		console.log(mid);
	}
</script>
<script type="text/javascript">
	var type = document.getElementById('directory').value;
	function populate(){
		if(type == 'Type'){
			console.log("type");
		}else{
			console.log("area");
		}
	}
</script>
<script type="text/javascript" src="js/jquery-2.1.0.min.js"></script>
<script type="text/javascript" src="js/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/smoothscroll.js"></script>
<script type="text/javascript" src="js/bootstrap-select.min.js"></script>
<script type="text/javascript" src="js/icheck.min.js"></script>
<script type="text/javascript" src="js/retina-1.1.0.min.js"></script>
<script type="text/javascript" src="js/jshashtable-2.1_src.js"></script>
<script type="text/javascript" src="js/jquery.numberformatter-1.2.3.js"></script>
<script type="text/javascript" src="js/tmpl.js"></script>
<script type="text/javascript" src="js/jquery.dependClass-0.1.js"></script>
<script type="text/javascript" src="js/draggable-0.1.js"></script>
<script type="text/javascript" src="js/jquery.slider.js"></script>
<script type="text/javascript" src="js/custom.js"></script>
<!--[if gt IE 8]>
<script type="text/javascript" src="assets/js/ie.js"></script>
<![endif]-->


</body>
</html>