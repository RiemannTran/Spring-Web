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
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href='<c:url value ="/resources/themes/images/ico/apple-touch-icon-144-precomposed.png"/>'>
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
		<li><a href="home">Home</a> <span class="divider">/</span></li>
		<li class="active">Registration</li>
    </ul>
	<h3> Registration</h3>	
	<div class="well">
	<!--
	<div class="alert alert-info fade in">
		<button type="button" class="close" data-dismiss="alert">×</button>
		<strong>Lorem Ipsum is simply dummy</strong> text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s
	 </div>
	<div class="alert fade in">
		<button type="button" class="close" data-dismiss="alert">×</button>
		<strong>Lorem Ipsum is simply dummy</strong> text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s
	 </div>
	 <div class="alert alert-block alert-error fade in">
		<button type="button" class="close" data-dismiss="alert">×</button>
		<strong>Lorem Ipsum is simply</strong> dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s
	 </div> -->
	<form class="form-horizontal" method="post">
		<h4>Đăng kí tài khoản</h4>
		<div class="control-group">
		<label class="control-label">Title <sup>*</sup></label>
		<div class="controls">
		<select class="span1" name="days">
			<option value="">-</option>
			<option value="1">Mr.</option>
			<option value="2">Mrs</option>
			<option value="3">Miss</option>
		</select>
		</div>
		</div>
		<div class="control-group">
			<label class="control-label" for="inputFname1">Họ tên <sup>*</sup></label>
			<div class="controls">
			  <input type="text" id="name" value="${hoten}" name="hoten" placeholder="Họ tên">
			  <div id="z-name"></div>
			</div>
		 </div>
		 <div class="control-group">
			<label class="control-label" for="inputLnam">Tên đăng nhập <sup>*</sup></label>
			<div class="controls">
			  <input type="text" id="user" value="${tendangnhap}" name="tendangnhap" placeholder="Tên đăng nhập">
			  <div id="z-user"></div>
			</div>
		 </div>
		<div class="control-group">
		<label class="control-label" for="input_email">Email <sup>*</sup></label>
		<div class="controls">
		  <input type="text" id="email" onkeydown="check()" onkeyup= "emailValidate()" value="${email}" name="email" placeholder="Email">
		  <div id="z-email"></div>
		</div>
	  </div>	  
	<div class="control-group">
		<label class="control-label" for="inputPassword1">Mật khẩu <sup>*</sup></label>
		<div class="controls">
		  <input type="password" id="password" onkeydown="check()" onkeyup="passwordValidate()" value="${matkhau}" name="matkhau" placeholder="Mật khẩu">
		  <div id="z-password"></div>
		  
		</div>
	  </div>
	  
	  <div class="control-group">
		<label class="control-label" for="inputPassword1">Nhập lại mật khẩu <sup>*</sup></label>
		<div class="controls">
		  <input type="password" id="cpassword" onkeydown="check()" onkeyup="passwordValidate()" name="rematkhau" placeholder="Nhập lại mật khẩu">
		  <div id="z-cpassword"></div>
		  
		</div>
	  </div>	  
		

		
	<div class="control-group">
			<div class="controls">
				<input type="hidden" name="email_create" value="1">
				<input type="hidden" name="is_new_customer" value="1">
				<input class="btn btn-large btn-success" type="submit" value="Register" />
			</div>
		</div>		
	</form>
</div>

</div>
</div>
</div>
</div>
<!-- MainBody End ============================= -->
<!-- Footer ================================================================== -->
	<jsp:include page="footer.jsp"></jsp:include>

<script>
	function check() {
		 
	    var data = new Array();
	    data[0] = document.getElementById('name').value;
	    data[4] = document.getElementById('user').value;
	    data[1] = document.getElementById('email').value;
	    data[2] = document.getElementById('password').value;
	    data[3] = document.getElementById('cpassword').value;

	 
	    var myerror = new Array();
	    myerror[0] = "<span style='color:red,font-weight:bold'>Bạn chưa nhập tên</span>";
	    myerror[1] = "<span style='color:red,font-weight:bold'>Bạn chưa nhập tên đăng nhập</span>";
	    myerror[2] = "<span style='color:red,font-weight:bold'>Bạn chưa nhập email</span>";
	    myerror[3] = "<span style='color:red,font-weight:bold'>Bạn chưa nhập mật khẩu</span>";
	    myerror[4] = "<span style='color:red,font-weight:bold'>Mật khẩu chưa khớp</span>";

	 
	    var nearby = new Array("z-name", "z-user", "z-email","z-password", "z-cpassword");
	 
	    for (i in data) {
	        var error = myerror[i];
	        var div = nearby[i];
	        if (data[i]=="") {
	            document.getElementById(div).innerHTML = error;
	        } else {
	        	document.getElementById(div).innerHTML = "OK!";
	        	
	        	
	        }
	    }
	 
	}
	function emailValidate(){
		  var regExp = /^[A-Za-z][\w$.]+@[\w]+\.\w+$/;
		  var email = document.getElementById("email").value;
		  if (regExp.test(email)) 
	            document.getElementById("z-email").innerHTML = "Email hợp lệ";
 
		    else 
		        document.getElementById("z-email").innerHTML = "Email không hợp lệ";
	}
	
	function passwordValidate() {
	    var fpw = document.getElementById("password").value;
	    var spw = document.getElementById("cpassword").value;
	 
	    if (fpw.length<8) {
	        document.getElementById('z-password').innerHTML = "Mật khẩu tối thiểu 8 kí tự ";
	    }
	    if (fpw==spw) {
	        document.getElementById('z-cpassword').innerHTML = "Mật khẩu đã khớp";
	    } else {
	        document.getElementById('z-cpassword').innerHTML = "<span color='red'>Mật khẩu chưa khớp</span>";
	    }
	}
	
	
</script>
	
	
</body>
</html>