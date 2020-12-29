<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
 
<!DOCTYPE html>
<html lang="en">
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
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href='<c:url value ="/resources/themes/images/ico/apple-touch-icon-144-precomposed.png"></c:url>'>
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href='<c:url value ="/resources/themes/images/ico/apple-touch-icon-114-precomposed.png"/>'>
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href='<c:url value ="/resources/themes/images/ico/apple-touch-icon-72-precomposed.png"/>'>
    <link rel="apple-touch-icon-precomposed" href='<c:url value ="/resources/themes/images/ico/apple-touch-icon-57-precomposed.png"/>'>
	<style type="text/css" id="enject"></style>
  </head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<!-- Header End====================================================================== -->
<div id="mainBody">
	<div class="container">
	<div class="row">
<!-- Sidebar ================================================== -->
		<jsp:include page="category.jsp"></jsp:include>
<!-- Sidebar end=============================================== -->
	<div class="span9">
    <ul class="breadcrumb">
		<li><a href="index.html">Home</a> <span class="divider">/</span></li>
		<li class="active">Login</li>
    </ul>
	<h3> Login</h3>	
	<hr class="soft"/>
	
	<div class="row">
		<div class="span4">
			<div class="well">
			<h5>CREATE YOUR ACCOUNT</h5><br/>
			Enter your e-mail address to create an account.<br/><br/><br/>
			<form action="redirectRegister">
			  <div class="control-group">
				<label class="control-label" for="inputEmail0">E-mail address</label>
				<div class="controls">
				  <input class="span3"  type="text" id="inputEmail0" placeholder="Email">
				</div>
			  </div>
			  <div class="controls">
			  <button  type="submit" class="btn block">Create Your Account</button>
			  </div>
			</form>
		</div>
		</div>
		<div class="span1"> &nbsp;</div>
		<div class="span4">
			<div class="well">
			<h5>ALREADY REGISTERED ?</h5>
			<form action="" method="POST">
			  <div class="control-group">
				<label class="control-label" for="inputEmail1">Email</label>
				<div class="controls">
				  <input name="tendangnhap" class="span3"  type="text" id="inputEmail1" placeholder="Email">
				</div>
			  </div>
			  <div class="control-group">
				<label class="control-label" for="inputPassword1">Password</label>
				<div class="controls">
				  <input name="matkhau" type="password" class="span3"  id="inputPassword1" placeholder="Password">
				</div>
			  </div>
			  <div class="control-group">
				<div class="controls">
				  <button type="submit" class="btn">Sign in</button> <a href="forgetpass.html">Forget password?</a>
				</div>
			  </div>
			  		
			  
			</form>
		</div>
		</div>
	</div>	
	
</div>
</div></div>
</div>
<!-- MainBody End ============================= -->
<!-- Footer ================================================================== -->
	<jsp:include page="footer.jsp"></jsp:include>
	
</body>
</html>