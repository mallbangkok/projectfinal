<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

    <title>Mall Bangkok | Search Shop</title>

</head>

<body class="page-homepage navigation-fixed-top page-slider page-slider-search-box" id="page-top" data-spy="scroll" data-target=".navigation" data-offset="90">
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
						<c:choose>
							<c:when test="${username != null}">
								<a href="logout">Log Out</a>
							</c:when>
							<c:otherwise>
								<a href="sign-in">Sign In</a>
							</c:otherwise>
						</c:choose>
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
						</ul>
					</nav>
            </header><!-- /.navbar -->
        </div><!-- /.container -->
    </div><!-- /.navigation -->

    <!-- Slider -->
    <div id="slider" class="loading has-parallax">
        <div id="loading-icon"><i class="fa fa-cog fa-spin"></i></div>
        <div class="owl-carousel homepage-slider carousel-full-width">
            <div class="slide">
                <div class="container">
                    <div class="overlay">
                        <div class="info">
                        </div>
                    </div>
                </div>
                <img src="<c:url value="/img/slide-01.png"/>" >
            </div>
            <div class="slide">
                <div class="container">
                    <div class="overlay">
                        <div class="info">
                        </div>
                    </div>
                </div>
                <img src="<c:url value="/img/slide-02.png"/>" >
            </div>
            <div class="slide">
                <div class="container">
                    <div class="overlay">
                        <div class="info">
                        </div>
                    </div>
                </div>
                <img src="<c:url value="/img/slide-03.png"/>" >
            </div>
        </div>
    </div>
    <!-- end Slider -->

    <!-- Search Box -->
    <div class="search-box-wrapper">
        <div class="search-box-inner">
            <div class="container">
                <div class="row">
                    <div class="col-md-3 col-md-offset-9 col-sm-4 col-sm-offset-8">
                        <div class="search-box map">
                            <form role="form" id="form-map" class="form-map form-search" action="index-slider-search-custom" method="post">
                                <h2>Search Shop</h2>
                                <div class="form-group">
                                    <input type="text" class="form-control" id="inputShop" name="inputShop" placeholder="Nike Shop" required>
                                </div>
                                
                                <div class="form-group">
                                    <button id="btnShop" type="submit" class="btn btn-default" disabled="true">Search Now</button>
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
                    <h1 class="no-bottom-margin no-border">Retail Shop Directory Website <a href="index-google-map-fullscreen" class="text-underline">Mall Bangkok</a>!</h1>
                </div>
            </div>
        </section><!-- /#banner -->
        <section id="new-properties" class="block">
            <div class="container">
                <c:choose>
                	<c:when test="${storeSize != null }">
                		<header class="section-title">
                    	<h2>Result : Found <c:out value="${storeSize}"/> Shop</h2>
                		</header>
                	</c:when>
                	<c:otherwise>
                		<header class="section-title">
                    	<h2>Result : Can your search shop in search field.</h2>
                		</header>
                	</c:otherwise>
                </c:choose>
                <form id="frm" action="list-mall" method="post">
                <div class="row">
                	<c:choose>
                		<c:when test="${store != null }">
                			<c:forEach var="i" items="${store}">
                    		<div class="col-md-3 col-sm-6">
                        	<div class="property">
                            	<a href="javascript:;" onclick="onClick(${i.mall.mallId})">
                            	<input type="hidden" id="valueClick" name="valueClick" />
                                	<div class="property-image">
                                  		<img src="<c:url value="/img/mall/thumbnail/${i.mall.imageMall }"/>" >
                                	</div>
                                	<div class="overlay">
                                    	<div class="info">
                                        	<div class="tag price"><c:out value="${i.storeName}" /></div>
                                        	<h3><c:out value="${i.mall.mallNameEng }"/></h3>
                                        	<h3>Floor : <c:out value="${i.floor }"/></h3>
                                        	<figure>Status : <c:out value="${i.storeStatus }"/></figure>
                                    	</div>
                                	</div>
                            		</a>
                        		</div><!-- /.property -->
                    		</div><!-- /.col-md-3 -->
                    		</c:forEach>
                		</c:when>
                		<c:otherwise>
                		</c:otherwise>
                	</c:choose>
                	
                </div><!-- /.row-->
                </form>
                <form action="index-slider-search-custom-click" method="post" id="frm">
	                <div class="center">
	                            <ul class="pagination">
	                                
	                            </ul><!-- /.pagination-->
	                        </div><!-- /.center-->
	                        <input type="hidden" id="valueClick" name="valueClick" />
                </form>
            </div><!-- /.container-->
        </section><!-- /#new-properties-->
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

<div id="overlay"></div>
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
	onClick = function(num){
		document.getElementById('valueClick').value = num;
		document.getElementById('frm').submit();
	}
	
	function doCheck(){
        var allFilled = true;
        var inputs = document.getElementsByName("inputShop");
        for(var i=0; i<inputs.length; i++){
            var t = inputs[i].value;
            if(t.length < 3 && inputs[i].type == "text"){
            	allFilled = false;
                break;
            }
        }
        document.getElementById("btnShop").disabled = !allFilled;
    }
	
	window.onload = function(){
        var inputs = document.getElementsByName("inputShop");
        for(var i=0; i<inputs.length; i++){
            if(inputs[i].type == "text"){
                inputs[i].onkeyup = doCheck;
                inputs[i].onblur = doCheck;
            }
        }
    };
</script>
<script type="text/javascript" src="js/jquery-2.1.0.min.js"></script>
<script type="text/javascript" src="js/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/smoothscroll.js"></script>
<script type="text/javascript" src="js/owl.carousel.min.js"></script>
<script type="text/javascript" src="js/bootstrap-select.min.js"></script>
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
<script type="text/javascript" src="js/custom.js"></script>
<!--[if gt IE 8]>
<script type="text/javascript" src="assets/js/ie.js"></script>
<![endif]-->
<script>
    $(window).load(function(){
        initializeOwl(false);
    });
</script>
</body>
</html>