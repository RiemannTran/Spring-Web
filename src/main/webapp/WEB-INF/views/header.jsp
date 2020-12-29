<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome</title>
</head>
<body>
<div id="header">
<div class="container">
<div id="welcomeLine" class="row">
	<div class="span6">Welcome!<strong>${tendangnhap}</strong></div>
	<div class="span6">
	<div class="pull-right">
		<a href="product_summary.html"><span class="">Fr</span></a>
		<a href="product_summary.html"><span class="">Es</span></a>
		<span class="btn btn-mini">En</span>
		<a href='<c:url value ="cart/"/>'><span>&pound;</span></a>
		<span class="btn btn-mini">đ155.00</span>
		<a href='<c:url value ="cart/"/>'><span class="">đ</span></a>
		<c:choose>
	<c:when test="${giohang != null}">
	
        <a class="soluong" href='<c:url value ="/cart/"/>'><span class="btn btn-mini btn-primary"><i class="icon-shopping-cart icon-white"></i> [${giohang.size()}] Items in your cart </span> </a> 
         	   	  			 
	</c:when>
	<c:otherwise>

		<a class="soluong" href='<c:url value ="/cart/"/>'><span class="btn btn-mini btn-primary"><i class="icon-shopping-cart icon-white"></i> [0] Items in your cart </span> </a> 
	   	  			
	</c:otherwise>
	</c:choose>
	</div>
	</div>
</div>
<!-- Navbar ================================================== -->
<div id="logoArea" class="navbar">
<a id="smallScreen" data-target="#topMenu" data-toggle="collapse" class="btn btn-navbar">
	<span class="icon-bar"></span>
	<span class="icon-bar"></span>
	<span class="icon-bar"></span>
</a>
  <div class="navbar-inner">
    <a class="brand" href='<c:url value ="/"/>'><img src='<c:url value ="/resources/themes/images/logo.png"/>' alt="Bootsshop"/></a>
		<form class="form-inline navbar-search" method="post" action="products.html" >
		<input id="srchFld" class="srchTxt" type="text" />
		  <select class="srchTxt">
			<option>All</option>
			<option>CLOTHES </option>
			<option>FOOD AND BEVERAGES </option>
			<option>HEALTH & BEAUTY </option>
			<option>SPORTS & LEISURE </option>
			<option>BOOKS & ENTERTAINMENTS </option>
		</select> 
		  <button type="submit" id="submitButton" class="btn btn-primary">Go</button>
    </form>
    <ul id="topMenu" class="nav pull-right">
	 <li class=""><a href="special_offer.html">Specials Offer</a></li>
	 <li class=""><a href='<c:url value ="admin/"/>'>Admin</a></li>
	 <li class=""><a href='<c:url value ="userInfo/"/>'>User</a></li>
	 <li class="">
	 
	<c:choose>
	<c:when test="${tendangnhap != null}">
	
	   	  <a href='<c:url value ="/redirectLogout"/>' role="button" data-toggle="modal" style="padding-right:0"><span class="btn btn-large btn-success">Đăng xuất</span></a>
	   	  			 
	</c:when>
	<c:otherwise>

	   	  <a href='<c:url value ="/redirectLogin"/>' role="button" data-toggle="modal" style="padding-right:0"><span class="btn btn-large btn-success">Đăng nhập</span></a>
	   	  			
	</c:otherwise>
	</c:choose>
	   
	
	</li>
    </ul>
  </div>
</div>
</div>
</div>
</body>
</html>