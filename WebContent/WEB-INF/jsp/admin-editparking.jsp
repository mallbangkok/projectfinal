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
    <link href="fonts/font-awesome.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="bootstrap/css/bootstrap.css" type="text/css">
    <link rel="stylesheet" href="css/bootstrap-select.min.css" type="text/css">
    <link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="css/jquery.slider.min.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">

    <title>Mall Bangkok | Admin Management</title>

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
                        <li class="active has-child"><a href="#">Homepage</a>
                            <ul class="child-navigation">
                                <li><a href="index-google-map-fullscreen.html">Google Map Full Screen</a></li>
                                <li><a href="index-google-map-fixed-height.html">Google Map Fixed Height</a></li>
                                <li><a href="index-google-map-fixed-navigation.html">Google Map Fixed Navigation</a></li>
                                <li><a href="index-osm.html">OpenStreetMap Full Screen</a></li>
                                <li><a href="index-osm-fixed-height.html">OpenStreetMap Fixed Height</a></li>
                                <li><a href="index-osm-fixed-navigation.html">OpenStreetMap Fixed Navigation</a></li>
                                <li><a href="index-slider.html">Slider Homepage</a></li>
                                <li><a href="index-slider-search-box.html">Slider with Search Box</a></li>
                                <li><a href="index-horizontal-search-floated.html">Horizontal Search Floated</a></li>
                                <li><a href="index-advanced-horizontal-search.html">Horizontal Advanced Search</a></li>
                                <li><a href="index-slider-horizontal-search-box.html">Horizontal Slider Search</a></li>
                                <li><a href="index-slider-horizontal-search-box-floated.html">Horizontal Slider Floated Search</a></li>
                            </ul>
                        </li>
                        <li class="has-child"><a href="#">Directory</a>
                            <ul class="child-navigation">
                                <li><a href="#">List By Type</a>
                                	<ul class="child-navigation">
                                		<li><a href="list-mall?typename=Regional Mall">Regional Mall</a></li>
                                		<li><a href="list-mall?typename=Community Mall">Community Mall</a></li>
                                		<li><a href="#">HyperMarket/SpecialtyStore</a></li>
                                		<li><a href="#">Theme Mall</a></li>
                                		<li><a href="#">Luxury Mall</a></li>
                                		<li><a href="#">Department Store</a></li>
                                		<li><a href="#">Complex</a></li>
                                		<li><a href="#">Shopping Plaza</a></li>
                                	</ul>
                                </li>
                                <li><a href="properties-listing">List By Area</a></li>
                                <li><a href="properties-listing-grid.html">List All</a></li>
                            </ul>
                        </li>
                        <li class="has-child"><a href="#">Pages</a>
                            <ul class="child-navigation">
                                <li><a href="my-properties">Admin Management</a></li>
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
                <li><a href="index-google-map-fullscreen">Home</a></li>
                <li class="active">My Properties</li>
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
                            <li><a href="submit"><i class="fa fa-home"></i><span>Add Mall</span></a></li>
                            <li><a href="store-admin"><i class="fa fa-home"></i><span>Add Store</span></a></li>
                            <li><a href="list-category-admin"><i class="fa fa-book"></i><span>List Mall</span></a></li>
                            <li><a href="parking-admin"><i class="fa fa-automobile" ></i><span>Parking</span></a>
                            	<ul>
                            		<a href="parking-admin"><i class="fa fa-automobile" ></i><span>Add Parking</span></a>
                            		<a href="admin-editparking"><i class="fa fa-automobile" ></i><span>Update Parking</span></a>
                            	</ul>
                            </li>
                        </ul>
                    </aside>
                </section><!-- /#sidebar -->
            </div><!-- /.col-md-3 -->
            <!-- end Sidebar -->
                <!-- My Properties -->
                	<div class="col-md-9 col-sm-10">
                    <section id="my-properties">
                      <div class="col-md-9 col-sm-10">
                      <form role="form" id="searchMall"  action="searchmall-parking" method="get">
                        <div class="col-md-4">
                                    <div class="form-group">
                                               <select name="types" id="types" onchange="onChanges()">
                                                    	<option value="">Select type</option>
                                                    	<option value="Community Mall">Community Mall</option>
                                                    	<option value="Theme Mall">Theme Mall</option>
                                                    	<option value="Luxury Mall">Luxury Mall</option>
                                                    	<option value="Complex">Complex</option>
                                                    	<option value="Shopping Plaza">Shopping Plaza</option>
                                                    	<option value="Department Store">Department Store</option>
                                                    	<option value="Regional Mall">Regional Mall</option>
                                                    	<option value="HyperMarket/SpecialtyStore">HyperMarket/SpecialtyStore</option>
                                                        <c:choose>
                                  							<c:when test="${typeMall != null }">
                                  							<option value="${typeMall}"selected>${typeMall}</option>
                                  						    </c:when>
                            				           </c:choose>
                                                    </select>
                                   </div><!-- /.form-group -->
                             </div>
                    		  <div class="col-md-4">
                                    <div class="form-group">
                                                <select name="nameMall" id="nameMall" onchange="onChangeName()" required>
                                                    	<option value="Please Select Mall">Please Select Mall</option>
                                                    	 	<c:choose>
                                               				   <c:when test="${mallType != null }">
                                                     		    <c:forEach var="i" items="${mallType}">
                                                      				<option value="${i.mallNameEng}">${i.mallNameEng}</option>
                                                                </c:forEach>
                                                            </c:when>
                                       						</c:choose>	
                                                    </select>
                                   </div><!-- /.form-group -->
                             </div>
                            <div class="col-md-4">
                                    <div class="form-group">
                             			<button type="submit" id="searchMall" class="btn btn-default">Search Mall</button>
                             		</div>
                             </div>
                      </form>
               		 </div><!-- /.col-md-9 -->
               		 <!-- Start add Condition Condition Condition Condition Condition Condition Condition Condition Condition  -->
               		   <c:choose>
                               <c:when test="${sizeofcon == '3' }">
                                <form role="form" id="addconditionIII"  action="add-conditionIII-parking" method="get">
                                <input type="hidden" name="nameMalls" id="nameMalls" >
                               <div class="col-md-8 col-sm-12">   
                                <section id="property-features">
                                   <hr class="thick"></hr>
                                   <div class="col-md-6 col-sm-6">
                                <section id="address">
                                    <div class="form-group">
                                        <label for="form-create-agency-address-1">Starting Rate :</label>
                                        <input type="text" class="form-control" id="conditionIII1"name="conditionIII1" value="${conditions.get(0).getConName()}">
                                    </div><!-- /.form-group -->
                                    <div class="row">
                                     <div class="col-md-12 col-sm-12">
                                            <div class="form-group">
                                                <select name="dateIII1" id="dateIII1">
                                                	<option value="Please Select Date">Please Select Date</option>
                                        		 	<option value="จันทร์-ศุกร์">จันทร์-ศุกร์</option>
                                        			<option value="จันทร์-อาทิตย์">จันทร์-อาทิตย์</option>
                                        			<option value="เสาร์-อาทิตย์">เสาร์-อาทิตย์</option>
                                        			<option value="${conditions.get(0).getDateOfCon()}" selected>${conditions.get(0).getDateOfCon()}</option>
                                       		   </select>
                                            </div><!-- /.form-group -->
                                        </div><!-- /.col-md-4 -->
                                        <div class="col-md-4 col-sm-4">
                                            <div class="form-group">
                                                <input type="text" class="form-control" id="timeIII1"name="timeIII1" placeholder="Time">
                                            </div><!-- /.form-group -->
                                        </div><!-- /.col-md-4 -->
                                        <div class="col-md-8 col-sm-8">
                                            <div class="form-group">
                                                <select name="typeIII1" id="typeIII1">
                                                	<option value="นาที">นาที</option>
                                                	<option value="ชั่วโมง">ชั่วโมง</option>
                                                </select>
                                            </div><!-- /.form-group -->
                                        </div><!-- /.col-md-8 -->  
                                    </div><!-- /.row -->
                                </section><!-- /#address -->
                            </div><!-- /.col-md-6 --> 
                            </section><!-- /#property-features -->
                            </div><!-- /.col-md-8 -->
                                <div class="col-md-8 col-sm-12">
                                <section id="property-features">
                                   <div class="col-md-6 col-sm-6">
                                <section id="address">
                                    <div class="form-group">
                                        <label for="form-create-agency-address-1">Next Rate :</label>
                                        <input type="text" class="form-control" id="conIII2" name="conIII2" value="ชั่วโมงถัดไป">
                                    </div><!-- /.form-group -->
                                    <div class="row">
                                     <div class="col-md-12 col-sm-12">
                                            <div class="form-group">
                                                <select name="dateIII2" id="dateIII2">
                                        		 	<option value="จันทร์-ศุกร์">จันทร์-ศุกร์</option>
                                        			<option value="จันทร์-อาทิตย์">จันทร์-อาทิตย์</option>
                                        			<option value="เสาร์-อาทิตย์">เสาร์-อาทิตย์</option>
                                       		   </select>
                                            </div><!-- /.form-group -->
                                        </div><!-- /.col-md-4 -->
                                        <div class="col-md-4 col-sm-4">
                                            <div class="form-group">
                                                <input type="text" class="form-control" id="priceIII2" name="priceIII2" placeholder="Price">
                                            </div><!-- /.form-group -->
                                        </div><!-- /.col-md-4 -->
                                        <div class="col-md-8 col-sm-8">
                                            <div class="form-group">
                                                <input type="text" class="form-control" id="" value="บาท">
                                            </div><!-- /.form-group -->
                                        </div><!-- /.col-md-8 -->  
                                    </div><!-- /.row -->
                                </section><!-- /#address -->
                            </div><!-- /.col-md-6 --> 
                            </section><!-- /#property-features -->
                             <div class="col-md-6 col-sm-6">
                                <section id="address">
                                    <div class="form-group">
                                        <label for="form-create-agency-address-1">Last Rate :</label>
                                        <select id="conIII3" name="conIII3">
                                        	<option value="ชั่วโมงที่กำหนดเป็นต้นไป">ชั่วโมงที่กำหนดเป็นต้นไป</option>
                                        	<option value="เกินคิดเป็นชั่วโมงละ">เกินคิดเป็นชั่วโมงละ</option>
                                        </select>
                                    </div><!-- /.form-group -->
                                    <div class="row">
                                     <div class="col-md-12 col-sm-12">
                                            <div class="form-group">
                                                <select name="dateIII3" id="dateIII3">
                                        		 	<option value="จันทร์-ศุกร์">จันทร์-ศุกร์</option>
                                        			<option value="จันทร์-อาทิตย์">จันทร์-อาทิตย์</option>
                                        			<option value="เสาร์-อาทิตย์">เสาร์-อาทิตย์</option>
                                       		   </select>
                                            </div><!-- /.form-group -->
                                        </div><!-- /.col-md-4 -->
                                        <div class="col-md-4 col-sm-4">
                                            <div class="form-group">
                                                <input type="text" class="form-control" id="timeIII3" name="timeIII3" placeholder="Hour">
                                            </div><!-- /.form-group -->
                                        </div><!-- /.col-md-4 -->
                                        <div class="col-md-8 col-sm-8">
                                            <div class="form-group">
                                                <input type="text" class="form-control" id="priceIII3" name="priceIII3" placeholder="Price">
                                            </div><!-- /.form-group -->
                                        </div><!-- /.col-md-8 -->  
                                    </div><!-- /.row -->
                                     <section id="submit">
                           				 <div class="form-group center">
                              				  <button type="submit" class="btn btn-default large" id="account-submit">Add Condition</button>
                           				 </div><!-- /.form-group -->
                       				 </section>
                                </section><!-- /#address -->
                                
                            </div><!-- /.col-md-6 --> 
                            </div><!-- /.col-md-8 -->  
                            </form>
                               </c:when>
                       </c:choose>
               		  <c:choose>
                               <c:when test="${sizeofcon == '1' }">
                               <div class="col-md-8 col-sm-12">
                                <section id="property-features">
                                   <hr class="thick"></hr>
                                   <div class="col-md-6 col-sm-6">
                                <section id="address">
                                 <form role="form" id="addconditioni"  action="add-conditionI-parking" method="get">
                                  <input type="hidden" name="nameMalls" id="nameMalls" >
                                    <div class="row">
                                     <div class="col-md-12 col-sm-12">
                                            <div class="form-group">
                                                <label for="form-create-agency-city">Condition :</label>
                                                <select name="typeOfFreeConditionI" id="typeOfFreeConditionI">
                                        		 	<option value="จอดรถฟรี(รับบัตร)">จอดรถฟรี(รับบัตร)</option>
                                        			<option value="จอดรถฟรี(ไม่ต้องรับบัตร)">จอดรถฟรี(ไม่ต้องรับบัตร)</option>
                                       		   </select>
                                            </div><!-- /.form-group -->
                                        </div><!-- /.col-md-8 -->
                                        <div class="col-md-12 col-sm-12">
                                            <div class="form-group">
                                                <label for="form-create-agency-zip">Date:</label>
                                                <select name="dateofTypeConditonI" id="dateofTypeConditonI">
                                        		 	<option value="จันทร์-ศุกร์">จันทร์-ศุกร์</option>
                                        			<option value="จันทร์-อาทิตย์">จันทร์-อาทิตย์</option>
                                        			<option value="เสาร์-อาทิตย์">เสาร์-อาทิตย์</option>
                                       		   </select>
                                            </div><!-- /.form-group -->
                                        </div><!-- /.col-md-4 -->
                                    </div><!-- /.row -->
                                     <section id="submit">
                           				 <div class="form-group center">
                              				  <button type="submit" class="btn btn-default large" id="addconditioni">Add Condition</button>
                           				 </div><!-- /.form-group -->
                       				 </section>
                       				 </form>
                                </section><!-- /#address -->
                            </div><!-- /.col-md-6 --> 
                         
                                </section><!-- /#property-features -->
                            </div><!-- /.col-md-8 -->
                               </c:when>
                      </c:choose>
               		 <c:choose>
                               <c:when test="${sizeofcon == '2' }">
                                <div class="col-md-8 col-sm-12">
                                  <form role="form" id="addconditionII"  action="add-conditionII-parking" method="get" >
                                   <input type="hidden" name="nameMalls" id="nameMalls" >
                                <section id="property-features">
                                   <hr class="thick"></hr>
                                   <div class="col-md-6 col-sm-6">
                                <section id="address">
                                    <div class="form-group">
                                        <label for="form-create-agency-address-1">Starting Rate:</label>
                                        <input type="text" class="form-control"name="nameConII1" id="nameConII1" value="จอดรถฟรี">
                                    </div><!-- /.form-group -->
                                    <div class="row">
                                     <div class="col-md-12 col-sm-12">
                                            <div class="form-group">
                                                <select name="dateoftypeII1" id="dateoftypeII">
                                        		 	<option value="จันทร์-ศุกร์">จันทร์-ศุกร์</option>
                                        			<option value="จันทร์-อาทิตย์">จันทร์-อาทิตย์</option>
                                        			<option value="เสาร์-อาทิตย์">เสาร์-อาทิตย์</option>
                                       		   </select>
                                            </div><!-- /.form-group -->
                                        </div><!-- /.col-md-4 -->
                                        <div class="col-md-4 col-sm-4">
                                            <div class="form-group">
                                                <input type="text" class="form-control"name="timeII1" id="timeII1" placeholder="Time">
                                            </div><!-- /.form-group -->
                                        </div><!-- /.col-md-4 -->
                                        <div class="col-md-8 col-sm-8">
                                            <div class="form-group">
                                                <select name="timeoftypeII" id="timeoftypeII">
                                                	<option value="นาที">นาที</option>
                                                	<option value="ชั่วโมง">ชั่วโมง</option>
                                                </select>
                                            </div><!-- /.form-group -->
                                        </div><!-- /.col-md-8 -->
                                    </div><!-- /.row -->
                                </section><!-- /#address -->
                            </div><!-- /.col-md-6 --> 
                            <div class="col-md-6 col-sm-6">
                                <section id="contacts">
                                     <div class="form-group">
                                        <label for="form-create-agency-address-1">Next Rate:</label>
                                        <input type="text" class="form-control"name="nameConII2" id="nameConII2" value="ชั่วโมงถัดไป">
                                    </div><!-- /.form-group -->
                                    <div class="row">
                                      <div class="col-md-12 col-sm-12">
                                            <div class="form-group">
                                                <select name="dateoftypeII2" id="dateoftypeII2">
                                        		 	<option value="จันทร์-ศุกร์">จันทร์-ศุกร์</option>
                                        			<option value="จันทร์-อาทิตย์">จันทร์-อาทิตย์</option>
                                        			<option value="เสาร์-อาทิตย์">เสาร์-อาทิตย์</option>
                                       		   </select>
                                            </div><!-- /.form-group -->
                                        </div><!-- /.col-md-4 -->
                                        <div class="col-md-4 col-sm-4">
                                            <div class="form-group"> 
                                                <input type="text" class="form-control"name="priceConII" id="priceConII" placeholder="Price">
                                            </div><!-- /.form-group -->
                                        </div><!-- /.col-md-4 -->
                                         <div class="col-md-8 col-sm-8">
                                            <div class="form-group">
                                                <input type="text" class="form-control" id="form-create-agency-city" value="บาท">
                                            </div><!-- /.form-group -->
                                        </div><!-- /.col-md-8 -->
                                    </div><!-- /.row -->
                                  
                                </section><!-- /#address -->
                                 <section id="submit">
                            <div class="form-group center">
                                <button type="submit" class="btn btn-default large" id="addconditionII">Update</button>
                            </div><!-- /.form-group -->
                        </section>
                            </div><!-- /.col-md-6 -->
                                </section><!-- /#property-features -->
                                  </form>
                            </div><!-- /.col-md-8 -->
                               </c:when>
                     </c:choose>
               		 <!-- End of Add Condition Condition Condition Condition Condition Condition Condition -->
               		  <header><h3> </h3></header>
                        	<div class="my-properties">
                           
                        	</div><!-- /.my-properties -->
                    	</section><!-- /#my-properties -->
                	</div><!-- /.col-md-9 -->
                	<div class="col-md-9 col-sm-10">
                		   <section id="sidebar">
                   		  
                   
               			   </section><!-- /#sidebar -->
                	</div>

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
<script type="text/javascript">
  function demoselect(){
	  var type = document.getElementById('select-type').value;
	  var malls = document.getElementById('nameMall').value;
		location.assign('http://localhost:8080/ProjectFinal/parking-admin-typeofparking?type=' + type+'&nameMall='+malls);
  }
  function onChanges(){
		var type = document.getElementById('types').value;
		console.log(type);
		location.assign('http://localhost:8080/ProjectFinal/gettype-edit?type=' + type);
  }
  function onChangeName(){
	  document.getElementById('nameMalls').value=document.getElementById('nameMall').value;
  }
</script>
</body>
</html>