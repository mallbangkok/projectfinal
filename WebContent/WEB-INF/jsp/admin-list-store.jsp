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
    <link href='http://fonts.googleapis.com/css?family=Roboto:300,400,700' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.css" type="text/css">
    <link rel="stylesheet" href="css/bootstrap-select.min.css" type="text/css">
    <link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="css/jquery.slider.min.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">

    <title>Mall Bangkok | Admin List Store</title>

</head>

<body class="page-sub-page page-my-properties page-account" id="page-top">
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
    <!-- end Navigation -->
    <!-- Page Content -->
    <div id="page-content">
        <!-- Breadcrumb -->
        <div class="container">
            <ol class="breadcrumb">
                <li><a href="index-google-map-fullscreen">Home</a></li>
                <li class="active">Admin Management</li>
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
                            <li><a href="list-mall-article"><i class="fa fa-book"></i><span>List Article</span></a></li>
                            
                            <li><a href="#"><i class="fa fa-automobile" ></i><span>Parking</span></a>
                            	<ul>
                            		<a href="parking-admin"><i class="fa fa-automobile" ></i><span>Add Parking</span></a>
                            		<a href="admin-editparking"><i class="fa fa-automobile" ></i><span>Edit Parking</span></a>
                            	</ul>
                            </li>
                        </ul>
                    </aside>
                </section><!-- /#sidebar -->
            </div><!-- /.col-md-3 -->
            <!-- end Sidebar -->
                <!-- My Properties -->
                <c:choose>
                	<c:when test="${listStore != null}">
                		<div class="col-md-9 col-sm-10">
                    		<section id="my-properties">
                        	<header><h1>List Store (found : <c:out value="${listStoreSize}"/> Store)</h1></header>
                        	<div class="my-properties">
                            	<div class="table-responsive">
                                	<table class="table">
                                    	<thead>
                                    	<tr>
                                        	<th>Store name</th>
                                        	<th>Floor</th>
                                        	<th></th>
                                        	<th>Actions</th>
                                        	<th></th>
                                    	</tr>
                                    	</thead>
                                    <tbody>
                                    	<c:if test="${page != null }">
                                    		<c:forEach begin="1" end="${pages}" varStatus="loop">
                                    			<c:choose>
                                    				<c:when test="${page == loop.index }">
                                    					<c:choose>
                                    						<c:when test="${page == 1}">
                                    							<c:forEach varStatus="i" begin="0" end="19" var="val" items="${listStore }">   
								                                    <tr>
								                                        <td>
								                                          	<div class="inner">
								                                            	<a href="#"><h2><c:out value="${val.storeName}"/></h2></a>
								                                        	</div>  
								                                        </td>
								                                        <td><c:out value="${val.floor }"/></td>
								                                        <td></td>
								                                        <td class="actions">
								                                            <a href="update-store?storeid=${val.storeId }" class="edit"><i class="fa fa-pencil"></i>Edit</a>
								                                        </td>
								                                        <td class="actions"><a href="admin-delete-stores?storeid=${val.storeId }" class="edit" onclick="return confirm('You need delete ??');"><i 
																					class="fa fa-trash-o" aria-hidden="true"></i>Delete</a>
																		</td>
								                                    </tr>
							                                    </c:forEach>
                                    						</c:when>
                                    						<c:otherwise>
                                    							<c:forEach varStatus="i" begin="${page * 20 - 20 }" end="${page * 20 - 1}" var="val" items="${listStore }">
								                                    <tr>
								                                        <td>
								                                          	<div class="inner">
								                                            	<a href="#"><h2><c:out value="${val.storeName}"/></h2></a>
								                                        	</div>  
								                                        </td>
								                                        <td><c:out value="${val.floor}"/></td>
								                                        <td></td>
								                                        <td class="actions">
								                                            <a href="update-store?storeid=${val.storeId }" class="edit"><i class="fa fa-pencil"></i>Edit</a>
								                                        </td>
								                                        <td class="actions"><a href="admin-delete-stores?storeid=${val.storeId }" class="edit" onclick="return confirm('You need delete ??');"><i 
																					class="fa fa-trash-o" aria-hidden="true"></i>Delete</a>
																		</td>
								                                    </tr>
							                                    </c:forEach>
                                    						</c:otherwise>
                                    					</c:choose>
                                    				</c:when>
                                    			</c:choose>
                                    		</c:forEach>
                                    	</c:if>
                                    </tbody>
                                </table>
                            </div><!-- /.table-responsive -->
                            <!-- Pagination -->
                            <div class="center">
                                <ul class="pagination">
                                <c:if test="${page == null }">
                                	<li class="active"><a href="change-page?page=1"><c:out value="1"/></a></li>
                                </c:if>
                                <c:if test="${page != null }">
                                	<c:forEach varStatus="val" begin="1" end="${pages}">
	                                	<c:choose>
	                                		<c:when test="${page == val.index }">
	                                			<li class="active"><a href="change-page?page=${val.index }"><c:out value="${val.index}"/></a></li>
	                                		</c:when>
	                                		<c:otherwise>
	                                			<li><a href="change-page?page=${val.index }"><c:out value="${val.index}"/></a></li>
	                                		</c:otherwise>
	                                	</c:choose>
                                	</c:forEach>
                                </c:if>
                                
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
				<aside id="footer-thumbnails" class="footer-thumbnails"></aside>
				<!-- /#footer-thumbnails -->
				<aside id="footer-copyright">
					<div class="container">
						<span>Mall Bangkok By Boat Buntana</span> <span
							class="pull-right"><a href="#page-top" class="roll">Go
								to top</a></span>
					</div>
				</aside>
			</div>
			<!-- /.inner -->
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