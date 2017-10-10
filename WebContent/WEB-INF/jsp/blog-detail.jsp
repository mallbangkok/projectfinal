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
                <li><a href="index-google-map-fullscreen">Home</a></li>
                <li class="active">Blog Detail</li>
            </ol>
        </div>
        <!-- end Breadcrumb -->

        <div class="container">
            <div class="row">
                <!-- Content -->
                <div class="col-md-9 col-sm-9">
                    <section id="content">
                        <header><h1>Blog Detail</h1></header>
                        <article class="blog-post">
                            <header><a href="#"><h2><c:out value="${article.articlename}"/></h2></a></header>
                            <figure class="meta">
                                <a href="#" class="link-icon"><i class="fa fa-user"></i>Admin</a>
                                <a href="#" class="link-icon"><i class="fa fa-calendar"></i><c:out value="${article.articledatetime }"/></a>
                                <div class="tags">
                                    <a href="blog?articletype=${article.articletype}" class="tag article"><c:out value="${article.articletype}"/></a>
                                </div>
                            </figure>
                            <%
                            	String filename = (String)session.getAttribute("filename");
                            %>
                            <% 
	                            BufferedReader reader = new BufferedReader(
	                            		new FileReader("C:\\Users\\demon\\Documents\\GitHub\\projectfinal\\WebContent\\WEB-INF\\assets\\article\\" + filename));
	                            StringBuilder sb = new StringBuilder();
	                            String line;
	
	                            while((line = reader.readLine())!= null){
	                                sb.append(line);
	                            }
	                            out.print(sb.toString());
                            %>
                            
                        </article><!-- /.blog-post-listing -->
                    </section><!-- /#content -->
                </div><!-- /.col-md-9 -->
                <!-- end Content -->

                <!-- sidebar -->
                <div class="col-md-3 col-sm-3">
                    <section id="sidebar">
                        <aside id="categories">
                            <header><h3>Categories</h3></header>
                            <ul class="list-links">
                                <c:forEach var="val" items="${blogtype}">
									<li><a href="blog?articletype=${val}"><c:out value="${val}"/></a></li>
								</c:forEach>
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