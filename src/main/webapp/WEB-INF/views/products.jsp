<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <title>Bootshop online Shopping cart</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
<!--Less styles -->
   <!-- Other Less css file //different less files has different color scheam
	<link rel="stylesheet/less" type="text/css" href="themes/less/simplex.less">
	<link rel="stylesheet/less" type="text/css" href="themes/less/classified.less">
	<link rel="stylesheet/less" type="text/css" href="themes/less/amelia.less">  MOVE DOWN TO activate
	-->
	<!--<link rel="stylesheet/less" type="text/css" href="themes/less/bootshop.less">
	<script src="themes/js/less.js" type="text/javascript"></script> -->
	
<!-- Bootstrap style --> 
    <link id="callCss" rel="stylesheet" href='<c:url value ="/resources/themes/bootshop/bootstrap.min.css"/>' media="screen"/>
    <link href='<c:url value ="/resources/themes/css/base.css"/>' rel="stylesheet" media="screen"/>
<!-- Bootstrap style responsive -->	
	<link href='<c:url value ="/resources/themes/css/bootstrap-responsive.min.css"/>' rel="stylesheet"/>
	<link href='<c:url value ="/resources/themes/css/font-awesome.css"/>' rel="stylesheet" type="text/css">
<!-- Google-code-prettify -->	
	<link href='<c:url value ="/resources/themes/js/google-code-prettify/prettify.css"/>' rel="stylesheet"/>
<!-- fav and touch icons -->
    <link rel="shortcut icon" href='<c:url value ="/resources/themes/images/ico/favicon.ico"/>'>
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href='<c:url value ="/resources/themes/images/ico/apple-touch-icon-144-precomposed.png"/>'>
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href='<c:url value ="/resources/themes/images/ico/apple-touch-icon-114-precomposed.png"/>'>
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href='<c:url value ="/resources/themes/images/ico/apple-touch-icon-72-precomposed.png"/>'>
    <link rel="apple-touch-icon-precomposed" href='<c:url value ="/resources/themes/images/ico/apple-touch-icon-57-precomposed.png"/>'>
	<style type="text/css" id="enject"></style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<div id="mainBody">
	<div class="container">
	<div class="row">
<!-- Sidebar ================================================== -->
		<jsp:include page="category.jsp"></jsp:include>
<!-- Sidebar end=============================================== -->
	<div class="span9">
    <ul class="breadcrumb">
		<li><a href="index.html">Home</a> <span class="divider">/</span></li>
		<li class="active">${tendanhmuc}</li>
    </ul>
	<h3> ${tendanhmuc} <small class="pull-right"> 40 products are available </small></h3>	
	<hr class="soft"/>
	<p>
		Nowadays the lingerie industry is one of the most successful business spheres.We always stay in touch with the latest fashion tendencies - that is why our goods are so popular and we have a great number of faithful customers all over the country.
	</p>
	<hr class="soft"/>
	<form class="form-horizontal span6">
		<div class="control-group">
		  <label class="control-label alignL">Sort By </label>
			<select>
              <option>Priduct name A - Z</option>
              <option>Priduct name Z - A</option>
              <option>Priduct Stoke</option>
              <option>Price Lowest first</option>
            </select>
		</div>
	  </form>
	  
<div id="myTab" class="pull-right">
 <a href="#listView" data-toggle="tab"><span class="btn btn-large"><i class="icon-list"></i></span></a>
 <a href="#blockView" data-toggle="tab"><span class="btn btn-large btn-primary"><i class="icon-th-large"></i></span></a>
</div>
<br class="clr"/>
<div class="tab-content">
	<div class="tab-pane" id="listView">
	  <div class="row">	  
			<div class="span2">
				<img src="themes/images/products/3.jpg" alt=""/>
			</div>
			<div class="span4">
				<h3>New | Available</h3>				
				<hr class="soft"/>
				<h5>Product Name </h5>
				<p>
				Nowadays the lingerie industry is one of the most successful business spheres.We always stay in touch with the latest fashion tendencies - 
				that is why our goods are so popular..
				</p>
				<a class="btn btn-small pull-right" href="product_details.html">View Details</a>
				<br class="clr"/>
			</div>
			<div class="span3 alignR">
			<form class="form-horizontal qtyFrm">
			<h3> $140.00</h3>
			<label class="checkbox">
				<input type="checkbox">  Adds product to compair
			</label><br/>
			
			  <a href="product_details.html" class="btn btn-large btn-primary"> Add to <i class=" icon-shopping-cart"></i></a>
			  <a href="product_details.html" class="btn btn-large"><i class="icon-zoom-in"></i></a>
			
				</form>
			</div>
		</div>
		<hr class="soft"/>
		
	</div>

	<div class="tab-pane  active" id="blockView">
		<ul class="thumbnails">
		<c:forEach var="sanpham" items="${listSanPham}">
			<li class="span3">
			  <div class="thumbnail">
				<a href='<c:url value ="/details/${sanpham.getMasanpham()}"/>'><img src='<c:url value ="/resources/themes/images/products/3.jpg"/>' alt=""/></a>
				<div class="caption">
				  <h5>${sanpham.getTensanpham()}</h5>
				  <p> 
					I'm a paragraph. Click here 
				  </p>
				   <h4 style="text-align:center"><a class="btn" href="details/${sanpham.getMasanpham()}"> <i class="icon-zoom-in"></i></a> <a class="btn" href="">Add to <i class="icon-shopping-cart"></i></a> <a class="btn btn-primary" href="#">${sanpham.getGiatien()}</a></h4>
				</div>
			  </div>
			</li>
			</c:forEach>
		  </ul>
	<hr class="soft"/>
	</div>
</div>

	<a href="compair.html" class="btn btn-large pull-right">Compair Product</a>
	<div class="pagination">
			<ul>
			<li><a href="#">&lsaquo;</a></li>
			<li><a href="#">1</a></li>
			<li><a href="#">2</a></li>
			<li><a href="#">3</a></li>
			<li><a href="#">4</a></li>
			<li><a href="#">...</a></li>
			<li><a href="#">&rsaquo;</a></li>
			</ul>
			</div>
			<br class="clr"/>
</div>
</div>
</div>
</div>

<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>