<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@ page import="java.util.*,com.spring.model.*"%>

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
                   			<c:choose>
                   				<c:when test="${listmallpage == 1 }">
												<c:forEach begin="0" end="9" var="i" items="${listByType}"
													varStatus="loop">
													<div class="col-md-3 col-sm-3">
														<div class="property equal-height">
															<a href="javascript:;" onclick="onClick(${i.mallId})">
																<input type="hidden" id="valueClick" name="valueClick" />
																<div class="property-image">
																	<img alt=""
																		src="<c:url value="/img/mall/thumbnail/${i.imageMall }"/>">
																</div>
																<div class="overlay">
																	<div class="info">
																		<h3>
																			<c:out value="${i.mallNameEng }" />
																		</h3>
																		<h4>
																			<c:out value="${i.mallNameThai }" />
																		</h4>
																	</div>
																</div>
															</a>
														</div>
														<!-- /.property -->
													</div>
													<!-- /.col-md-3 -->
												</c:forEach>
											</c:when>
											<c:otherwise>
												<c:forEach begin="1" end="${countpages}" varStatus="loop">
                                    			<c:choose>
                                    				<c:when test="${listmallpage == loop.index }">
                                    					<c:choose>
                                    						<c:when test="${listmallpage == 1}">
                                    							<c:forEach begin="0" end="9" var="i" items="${listByType}" varStatus="val">
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
                                    							<c:forEach begin="${listmallpage * 10 - 10 }" end="${listmallpage * 10 - 1}" var="i" items="${listByType}" varStatus="val">
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
											</c:otherwise>
                   			</c:choose>
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
	                                		<c:when test="${listmallpage == val.index }">
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