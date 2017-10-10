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
                <li class="active">add condition</li>
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
                        <div class="col-md-4">
                                    <div class="form-group">
                                                <select name="select-type" id="select-type" onchange="demoselect()">
                                                    <option>Type Of Parking</option>
                                                    <option value="I">Type of Parking I</option>
                                                    <option value="II">Type of Parking II</option>  
                                                    <option value="III">Type of Parking III</option>
                                                    <option value="addStamp">Add Stamp</option>       
                                                </select>
                                   </div><!-- /.form-group -->
                             </div>
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
                            
                           
               		 </div><!-- /.col-md-9 -->
               		 <!-- Start add Condition Condition Condition Condition Condition Condition Condition Condition Condition  -->
               		   <c:choose>
                               <c:when test="${typeOfParking == 'III' }">
                                <form role="form" id="addcondition"  action="add-condition-parking" method="get">
                                 <input type="hidden" name="nameMalls" id="nameMalls" >
                                  <input type="hidden" name="typeOfCondition" id="typeOfCondition"value="III" >
                               <div class="col-md-8 col-sm-12">   
                                <section id="property-features">
                                   <hr class="thick"></hr>
                                   <div class="col-md-6 col-sm-6">
                                <section id="address">
                                    <div class="form-group">
                                        <label for="form-create-agency-address-1">Starting Rate :</label>
                                        <input type="text" class="form-control" id="conditionIII1"name="conditionIII1" value="จอดรถฟรี">
                                    </div><!-- /.form-group -->
                                    <div class="row">
                                     <div class="col-md-12 col-sm-12">
                                            <div class="form-group">
                                                <select name="dateIII1" id="dateIII1">
                                        		 	<option value="จันทร์-ศุกร์">จันทร์-ศุกร์</option>
                                        			<option value="จันทร์-อาทิตย์">จันทร์-อาทิตย์</option>
                                        			<option value="เสาร์-อาทิตย์">เสาร์-อาทิตย์</option>
                                       		   </select>
                                            </div><!-- /.form-group -->
                                        </div><!-- /.col-md-4 -->
                                        <div class="col-md-4 col-sm-4">
                                            <div class="form-group">
                                                <input type="text" class="form-control" id="timeIII1"name="timeIII1" placeholder="Time"required>
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
                                                <input type="text" class="form-control" id="priceIII2" name="priceIII2" placeholder="Price"required>
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
                                       <input type="text" class="form-control" id="conIII3" name="conIII3" value="เกินคิดเป็นชั่วโมงละ">
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
                                                <input type="text" class="form-control" id="timeIII3" name="timeIII3" placeholder="Hour"required>
                                            </div><!-- /.form-group -->
                                        </div><!-- /.col-md-4 -->
                                        <div class="col-md-8 col-sm-8">
                                            <div class="form-group">
                                                <input type="text" class="form-control" id="priceIII3" name="priceIII3" placeholder="Price"required>
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
                             <hr class="thick">
                                   <c:if test="${message != null }">
         								<h2><c:out value="${message}"/></h2>
         							</c:if>
                                </hr>
                            </div><!-- /.col-md-8 -->  
                            </form>
                               </c:when>
                       </c:choose>
               		  <c:choose>
                               <c:when test="${typeOfParking == 'I' }">
                               <div class="col-md-8 col-sm-12">
                                
                                   <hr class="thick"></hr>
                                   <div class="col-md-6 col-sm-6">
                                <section id="address">
                                 <form role="form" id="addconditioni"  action="add-condition-parking" method="get">
                                  <input type="hidden" name="nameMalls" id="nameMalls" >
                                  <input type="hidden" name="typeOfCondition" id="typeOfCondition"value="I" >
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
                                 <c:if test="${message != null }">
                                   <hr class="thick">
         								<h2><c:out value="${message}"/></h2>
         							</c:if>
                            </div><!-- /.col-md-6 --> 
                            </div><!-- /.col-md-8 -->
                               </c:when>
                      </c:choose>
               		 <c:choose>
                               <c:when test="${typeOfParking == 'II' }">
                                <div class="col-md-8 col-sm-12">
                                  <form role="form" id="addconditionII"  action="add-condition-parking" method="get" >
                                   <input type="hidden" name="nameMalls" id="nameMalls" >
                                  <input type="hidden" name="typeOfCondition" id="typeOfCondition"value="II" >
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
                                                <input type="text" class="form-control"name="timeII1" id="timeII1" placeholder="Time"required>
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
                                                <input type="text" class="form-control"name="priceConII" id="priceConII" placeholder="Price" required>
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
                                <button type="submit" class="btn btn-default large" id="addconditionII">Add Condition</button>
                            </div><!-- /.form-group -->
                        </section>
                            </div><!-- /.col-md-6 -->
                             <hr class="thick">
                                   <c:if test="${message != null }">
         								<h2><c:out value="${message}"/></h2>
         							</c:if>
                                </hr>
                                </section><!-- /#property-features -->
                                  </form>
                            </div><!-- /.col-md-8 -->
                               </c:when>
                     </c:choose>
                      <c:choose>
                               <c:when test="${typeOfParking == 'addStamp' }">
                                <div class="col-md-8 col-sm-12">
                                <form role="form" id="addconditionII"  action="add-condition-parking-stamp" method="get">
                                 <input type="hidden" name="nameMalls" id="nameMalls" >
                                
                                   <hr class="thick"></hr>
                                   <div class="col-md-6 col-sm-6">
                                <section id="address">
                                    <div class="row">
                                     <div class="col-md-12 col-sm-12">
                                            <div class="form-group">
                                                <label for="form-create-agency-city">Stramp :</label>
  												<input type="text" class="form-control" id="con4" name="con4" value="ใบเสร็จ">
                                            </div><!-- /.form-group -->
                                        </div><!-- /.col-md-8 -->
                                         <div class="col-md-4 col-sm-4">
                                            <div class="form-group">
                                                <input type="text" class="form-control" id="price4" name="price4" placeholder="Price" required>
                                            </div><!-- /.form-group -->
                                        </div><!-- /.col-md-4 -->
                                         <div class="col-md-8 col-sm-8">
                                            <div class="form-group">
                                                <input type="text" class="form-control" id="form-create-agency-city" value="บาท">
                                            </div><!-- /.form-group -->
                                        </div><!-- /.col-md-8 -->
                                        <div class="col-md-4 col-sm-4">
                                            <div class="form-group">
                                               
                                                <input type="text" class="form-control" id="freeHour" name="freeHour" placeholder="Time" required>
                                            </div><!-- /.form-group -->
                                        </div><!-- /.col-md-4 -->
                                         <div class="col-md-8 col-sm-8">
                                            <div class="form-group">
                                               
                                                <input type="text" class="form-control" id="form-create-agency-city" value="ชั่วโมง">
                                            </div><!-- /.form-group -->
                                        </div><!-- /.col-md-8 -->
                                    </div><!-- /.row -->
                                     <section id="submit">
                           				 <div class="form-group center">
                              				  <button type="submit" class="btn btn-default large" id="account-submit">Add Condition</button>
                           				 </div><!-- /.form-group -->
                       				 </section>
                                </section><!-- /#address -->
                                <hr class="thick">
                                   <c:if test="${message != null }">
         								<h2><c:out value="${message}"/></h2>
         							</c:if>
                                </hr>
                            </div><!-- /.col-md-6 --> 
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
		location.assign('http://localhost:8080/ProjectFinal/gettype-parking?type=' + type);
  }
  function onChangeName(){
	  document.getElementById('nameMalls').value=document.getElementById('nameMall').value;
  }
</script>
</body>
</html>