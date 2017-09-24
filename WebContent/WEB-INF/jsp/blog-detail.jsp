<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.io.*"%>
<!DOCTYPE html>
<html lang="en-US">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="author" content="ThemeStarz">

<link href='http://fonts.googleapis.com/css?family=Roboto:300,400,700'
	rel='stylesheet' type='text/css'>
<link href="fonts/font-awesome.css" rel="stylesheet"type="text/css">
<link rel="stylesheet" href="bootstrap/css/bootstrap.css"type="text/css">
<link rel="stylesheet" href="css/bootstrap-select.min.css"type="text/css">
<link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
<link rel="stylesheet" href="css/jquery.slider.min.css" type="text/css">
<link rel="stylesheet" href="css/owl.carousel.css" type="text/css">
<link rel="stylesheet" href="css/style.css" type="text/css">

    <title>Mall Bangkok | Blog Detail</title>

</head>

<body class="page-sub-page page-blog-detail" id="page-top">
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
                        <a href="#" class="active">  <img src="<c:url value="/img/flags/gb.png"/>" alt=""></a> 
                        <a href="#"> <img src="<c:url value="/img/flags/de.png"/>" alt=""></a> 
                        <a href="#"> <img src="<c:url value="/img/flags/es.png"/>" alt=""></a> 
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
                <li class="active">Blog Detail</li>
            </ol>
        </div>
        <!-- end Breadcrumb -->

        <div class="container">
            <div class="row">
                <!-- Content -->
                <div class="col-md-9 col-sm-9">
                    <section id="content">
                        <header><h1>Article Detail</h1></header>
                        <article class="blog-post">
                            <%-- <a href="blog-detail.html">
                            <img src="<c:url value="/img/properties/property-detail-02.jpg"/>" alt=""></a>  --%>
                           
                            <header><a href="blog-detail.html"><h2><c:out value="${article.articlename }"/></h2></a></header>
                            <figure class="meta">
                                <a href="#" class="link-icon"><i class="fa fa-user"></i>Admin</a>
                                <a href="#" class="link-icon"><i class="fa fa-calendar"></i><c:out value="${article.articledatetime }"/></a>
                                <div class="tags">
                                    <a href="#" class="tag article">Architecture</a>
                                    <a href="#" class="tag article">Design</a>
                                    <a href="#" class="tag article">Trend</a>
                                </div>
                            </figure>
                            <p>Fusce quis nulla volutpat, rhoncus ligula ut, pulvinar nisi. In dapibus urna sit amet accumsan
                                tristique. Donec odio ligula, luctus venenatis varius id, tincidunt ac ipsum. Cras commodo,
                                velit nec aliquam dictum, tortor velit dictum ipsum, sed ornare nunc leo nec ipsum. Vestibulum
                                sagittis sapien vitae tristique mollis. Aliquam hendrerit nulla semper, viverra mi et,
                                hendrerit mauris. Maecenas hendrerit congue ultrices. In laoreet erat blandit eros aliquet,
                                in malesuada sem rutrum. In placerat porta egestas.
                            </p>
                            <h3>Parahraph Headline</h3>
                            <% 
	                            BufferedReader reader = new BufferedReader(
	                            		new FileReader("C:\\Users\\demon\\Documents\\GitHub\\projectfinal\\WebContent\\WEB-INF\\assets\\test3.txt"));
	                            StringBuilder sb = new StringBuilder();
	                            String line;
	
	                            while((line = reader.readLine())!= null){
	                                sb.append(line);
	                            }
	                            out.print(sb.toString());
                            %>
                            <h3>Audio Object</h3>
                            <iframe width="100%" height="166" scrolling="no" frameborder="no" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/71654970&amp;color=ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_artwork=true&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false"></iframe>
                            <h3>Parahraph Headline</h3>
                            <p>
                                Phasellus metus ipsum, sollicitudin lacinia turpis in, pellentesque pulvinar diam.
                                Cras ultricies augue sapien, aliquam hendrerit mi suscipit at. Suspendisse vulputate felis eget
                                felis convallis fermentum et eu nulla. Donec sagittis sit amet erat non eleifend. Mauris at convallis
                                magna. Quisque pellentesque id mauris vitae placerat.
                            </p>
                            <h4>List Headline</h4>
                            <ul>
                                <li>Phasellus metus ipsum, sollicitudin</li>
                                <li>Quisque pellentesque id mauris</li>
                                <li>Donec ac lorem commodo</li>
                                <li>In nisi risus, molestie a sem adipiscing</li>
                                <li>Pellentesque nec felis sit amet nunc</li>
                            </ul>
                        </article><!-- /.blog-post-listing -->
                        <section id="about-author">
                            <header><h3>About the Author</h3></header>
                            <div class="post-author">
                             <img src="<c:url value="/img/member-04.jpg"/>" alt="">
                                <div class="wrapper">
                                    <header>Maria Scott</header>
                                    <p>Phasellus metus ipsum, sollicitudin lacinia turpis in, pellentesque pulvinar diam.
                                        Cras ultricies augue sapien, aliquam hendrerit mi suscipit at. Suspendisse vulputate felis eget
                                    </p>
                                </div>
                            </div>
                        </section>
                    </section><!-- /#content -->
                    <section id="comments">
                        <header><h2 class="no-border">Comments</h2></header>
                        <ul class="comments">
                            <li class="comment">
                                <figure>
                                    <div class="image">
                                     <img src="<c:url value="/img/client-01.jpg"/>" alt="">
                                        
                                    </div>
                                </figure>
                                <div class="comment-wrapper">
                                    <div class="name pull-left">Catherine Brown</div>
                                    <span class="date pull-right"><span class="fa fa-calendar"></span>12.05.2014</span>
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
                                              <img src="<c:url value="/img/agent-01.jpg"/>" alt="">
                                              
                                            </div>
                                        </figure>
                                        <div class="comment-wrapper">
                                            <div class="name">John Doe</div>
                                            <span class="date"><span class="fa fa-calendar"></span>24.06.2014</span>
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
                                     <img src="<c:url value="/img/user-02.jpg"/>" alt="">
                                       
                                    </div>
                                </figure>
                                <div class="comment-wrapper">
                                    <div class="name">John Doe</div>
                                    <span class="date"><span class="fa fa-calendar"></span>08.05.2014</span>
                                    <p>Quisque iaculis neque at dui cursus posuere. Sed tristique pharetra orci, eu malesuada ante tempus nec.
                                        Phasellus enim odio, facilisis et ante vel, tempor congue sapien. Praesent eget ligula
                                        eu libero cursus facilisis vel non arcu. Sed vitae quam enim.
                                    </p>
                                    <a href="#" class="reply"><span class="fa fa-reply"></span>Reply</a>
                                    <hr>
                                </div>
                            </li>
                        </ul>
                    </section><!-- /#comments -->
                    <section id="leave-reply">
                        <header><h2 class="no-border">Leave a Reply</h2></header>
                        <form role="form" id="form-blog-reply" method="post"  class="clearfix">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="form-blog-reply-name">Your Name<em>*</em></label>
                                        <input type="text" class="form-control" id="form-blog-reply-name" name="form-blog-reply-name" required>
                                    </div><!-- /.form-group -->
                                </div><!-- /.col-md-6 -->
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="form-blog-reply-email">Your Email<em>*</em></label>
                                        <input type="email" class="form-control" id="form-blog-reply-email" name="form-blog-reply-email" required>
                                    </div><!-- /.form-group -->
                                </div><!-- /.col-md-6 -->
                            </div><!-- /.row -->
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="form-blog-reply-message">Your Message<em>*</em></label>
                                        <textarea class="form-control" id="form-blog-reply-message" rows="5" name="form-blog-reply-message" required></textarea>
                                    </div><!-- /.form-group -->
                                </div><!-- /.col-md-12 -->
                            </div><!-- /.row -->
                            <div class="form-group clearfix">
                                <button type="submit" class="btn pull-right btn-default" id="form-blog-reply-submit">Leave a Reply</button>
                            </div><!-- /.form-group -->
                            <div id="form-rating-status"></div>
                        </form><!-- /#form-contact -->
                    </section>
                </div><!-- /.col-md-9 -->
                <!-- end Content -->

                <!-- sidebar -->
                <div class="col-md-3 col-sm-3">
                    <section id="sidebar">
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
                        <aside id="search">
                            <header><h3>Search</h3></header>
                            <div class="input-group">
                                <input type="text" class="form-control" placeholder="Enter Keyword">
                                <span class="input-group-btn"><button class="btn btn-default search" type="button"><i class="fa fa-search"></i></button></span>
                            </div><!-- /input-group -->
                        </aside>
                        <aside id="post-archive">
                            <header><h3>Post Archive</h3></header>
                            <ul class="list-links">
                                <li><a href="#">June 2014</a></li>
                                <li><a href="#">May 2014</a></li>
                                <li><a href="#">April 2014</a></li>
                                <li><a href="#">March 2014</a></li>
                                <li><a href="#">January 2014</a></li>
                                <li><a href="#">December 2013</a></li>
                                <li><a href="#">November 2013</a></li>
                                <li><a href="#">August 2013</a></li>
                            </ul>
                        </aside><!-- /#post-archive -->
                        <aside id="categories">
                            <header><h3>Categories</h3></header>
                            <ul class="list-links">
                                <li><a href="#">Architecture</a></li>
                                <li><a href="#">Apartments</a></li>
                                <li><a href="#">Design</a></li>
                                <li><a href="#">Do it yourself</a></li>
                                <li><a href="#">Housing</a></li>
                                <li><a href="#">Interior</a></li>
                                <li><a href="#">Trends</a></li>
                            </ul>
                        </aside><!-- /#categories -->
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