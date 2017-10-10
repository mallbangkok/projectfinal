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
								<a href="sign-in">Sign In</a>
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
                <li><a href="index-google-map-fullscreen">Home</a></li>
                <li class="active">Parking</li>
            </ol>
        </div>
        <!-- end Breadcrumb -->
        <div class="container">
            <div class="row">
            <!-- sidebar -->
            <div class="col-md-3 col-sm-2">
            </div><!-- /.col-md-3 -->
            <!-- end Sidebar -->
                <!-- My Properties -->
                	<div class="col-md-9 col-sm-10">
                    <section id="my-properties">
                     <form role="form" id="searchMall"  action="dosearchmall-user" method="get">
                      <div class="col-md-9 col-sm-10">
                    		  <div class="col-md-4">
                                    <div class="form-group">
                                               <select name="types" id="types" onchange="onChanges()">
                                                    	<option value="Please Select type">Please Select type</option>
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
                                               <select name="nameMall" id="nameMall"  required>
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
               		 </div><!-- /.col-md-9 -->
               		 </form>
                    </section><!-- /#my-properties -->
                	</div><!-- /.col-md-9 -->
                	<div class="container">
            <header><h1>Condition Of Parking</h1></header>
            <section id="pricing-3">
             <form role="form" id="docalculate-user" name="docalculate-user"  action="docalculate-user" method="get">
              <c:choose>
              <c:when test="${number != null }">
             <input type="hidden" name="mallsName" value="${malls.mallNameEng}">
             <input type="hidden" name="typeNumber" value="${number}">
             </c:when>
             </c:choose>
                <div class="row">
                    <div class="col-md-4 col-sm-4"></div><!-- /.col-md-3 -->
                   <div class="col-md-4 col-sm-4">
                        <div class="price-box">
                            <header><h2>Parking</h2></header>
                            <div class="price">
                                <figure>Condition</figure>
                            </div>
                            <ul> 
                            <c:choose>
                            	<c:when test="${number == '0' }">
                            	 <li><span>ขออภัย ไม่พบข้อมูลของบริการค่าจอดรถ</span></li>
                            	</c:when>
                                <c:when test="${number != '0' }">
                                	 <li><span>Name : ${malls.mallNameEng}</span> </li>
                                 <c:if test = "${number == '1'}">      
                                 <c:forEach var="i" items="${listConditon}">
                                		 <li><span>${i}</span> </li>
                                     </c:forEach>
                                </c:if>
                                <c:if test = "${number == '2'}">      
                                	 <c:forEach var="i" items="${listConditon}">
                                		 <li><span>${i}</span> </li>
                                     </c:forEach>
                                </c:if>
                                 <c:if test = "${number == '3'}">      
                                	 <c:forEach var="i" items="${listConditon}">
                                		 <li><span>${i}</span> </li>
                                     </c:forEach>
                                </c:if>
                                     <c:if test = "${malls.getStamp() != null}"> 
                                	 <c:forEach var="i" items="${malls.getStamp()}">
                                		 <li><input type="checkbox" name="checkstamp" id="checkstamp" value="${i.getStampId()}"><span>${i.getName()} ${i.getPriceOfStamp()} บาท ฟรี  ${i.getHourOfStamp()} ชั่วโมง </span></li>
                                     </c:forEach>
                               		</c:if>
                                </c:when>
                            </c:choose>
                            </ul>
                             <c:choose>
                             <c:when test="${priceafter == null }">
                              <a>Price after calculate</a>
                              </c:when>
                             <c:when test="${priceafter != null }">
                               <a>ค่าจอดรถ ${priceafter} บาท</a>
                              </c:when>
                            </c:choose>
                        </div><!-- /.price-box -->    
                    </div><!-- /.col-md-3 -->
                    <div class="col-md-4 col-sm-4"> 
                    </div><!-- /.col-md-3 -->
                </div><!-- /.row -->
                 <div class="row">
                    <div class="col-md-4 col-sm-4"> </div>
                     <div class="col-md-4 col-sm-4">
                                <section id="address">
                                <c:choose>
                                           <c:when test="${number != null }">
                                           <c:if test = "${number != '0'}">
                                            <c:if test = "${number != '1'}">
                                    <div class="row">
                                        <div class="col-md-4 col-sm-4">
                                            <div class="form-group">
                                            <label for="form-create-agency-zip">Time In:</label>
                                               <input type="text" class="form-control"name="timeIn" id="timeIn" placeholder="00:00"required>
                                            </div><!-- /.form-group -->
                                        </div><!-- /.col-md-4 -->
                                        <div class="col-md-4 col-sm-4">
                                            <div class="form-group">
                                            <label for="form-create-agency-zip">Time Out:</label>
                                                <input type="text" class="form-control"name="timeOut" id="timeOut" placeholder="00:00"required>
                                            </div><!-- /.form-group -->
                                        </div><!-- /.col-md-4 -->
                                        <div class="col-md-4 col-sm-4">
                                            <div class="form-group">
                                            <label for="form-create-agency-zip">Date :</label>
                                               <select name="dateOfCal" id="dateOfCal">
                                                	<option value="อาทิตย์">อาทิตย์</option>
                                        		 	<option value="จันทร์">จันทร์</option>
                                        		 	<option value="อังคาร">อังคาร</option>
                                        		 	<option value="พุธ">พุธ</option>
                                        		 	<option value="พฤหัสบดี">พฤหัสบดี</option>
                                        		 	<option value="ศุกร์">ศุกร์</option>
                                        		 	<option value="เสาร์">เสาร์<option>
                                       		   </select>
                                            </div><!-- /.form-group -->
                                        </div><!-- /.col-md-4 -->  
                                    </div><!-- /.row -->
                                     <div class="row">
                                     <div class="col-md-4 col-sm-4"></div>
                                        <div class="col-md-4 col-sm-4">
                                           <div class="form-group clearfix">
                                                <button class="btn btn-default large" id="docalculate-user" onclick="checkStasus()">Calculate</button>
                                            </div><!-- /.form-group -->
                                        </div><!-- /.col-md-4 -->  
                                        <div class="col-md-4 col-sm-4"></div>
                                    </div><!-- /.row -->
                                 	</c:if>
                                    </c:if>
                                     </c:when>
                                           </c:choose>
                                </section><!-- /#address -->
                            </div><!-- /.col-md-6 --> 
                    <div class="col-md-4 col-sm-4"> </div>
                </div><!-- /.row -->
                </form>
            </section><!-- /#pricing-3 -->
        </div><!-- /.container -->
                	
                	 
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
function checkStasus(){
	alert('demo');
}
</script>
<script type="text/javascript">
  function onChanges(){
		var type = document.getElementById('types').value;
		console.log(type);
		location.assign('http://localhost:8080/ProjectFinal/gettype-user?type=' + type);
  }
</script>
</body>
</html>