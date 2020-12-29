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
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href='<c:url value ="/resources/themes/images/ico/apple-touch-icon-144-precomposed.png"></c:url>'>
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
		<li class="active"> SHOPPING CART</li>
    </ul>
    <c:choose>
	<c:when test="${giohang != null}">
		<h3>  Giỏ Hàng [ <small>${giohang.size()} Item(s) </small>]<a href='<c:url value ="/products/"/>' class="btn btn-large pull-right"><i class="icon-arrow-left"></i> Thêm sản phẩm </a></h3>	
	         	   	  			 
	</c:when>
	<c:otherwise>
		<h3>  Giỏ Hàng [ <small>0 Item(s) </small>]<a href='<c:url value ="/products/"/>' class="btn btn-large pull-right"><i class="icon-arrow-left"></i> Thêm sản phẩm </a></h3>	
			
	</c:otherwise>
	</c:choose>
	<hr class="soft"/>
	<table class="table table-bordered">
		<tr><th> Danh sách sản phẩm của bạn </th></tr>
		 
	</table>		
			
	<table class="table table-bordered">
              <thead>
                <tr>
                  <th>Tên sản phẩm</th>
                  <th>Mô tả</th>
                  <th>Số lượng/Cập nhật</th>
				  <th>Giá</th>
                  <th>Giảm giá</th>
                  <th>Tổng giá sản phẩm</th>
				</tr>
              </thead>
              <tbody>
                <c:forEach var="giohang" items="${listGioHang}">
                <tr>
                  <td> <img width="60" src='<c:url value ="/resources/themes/images/products/4.jpg"/>' alt=""/></td>
                  <td class="sanpham" data-machitiet ="${giohang.getMachitietsanpham()}" data-mamau ="${giohang.getMamau()}" data-masanpham ="${giohang.getMasanpham()}">${giohang.getTensanpham()}<br/>Màu sắc : ${giohang.getTenmau()}, Hãng : ${giohang.getTenhang()}</td>
				  <td>
					<div class="input-append"><input value="${giohang.getSoluong()}" class="span1 soluong-giohang" style="max-width:34px" placeholder="" id="appendedInputButtons" min="1" size="16" type="number"><button class="btn" type="button"><i class="icon-minus"></i></button><button class="btn" type="button"><i class="icon-plus"></i></button><button class="btn btn-danger remove-cart" type="button"><i class="icon-remove icon-white"></i></button>				</div>
				  </td>
                  <td class="giatien">${giohang.getGiatien()}</td>
                  <td>$25.00</td>
                  <td class="tongtien">${giohang.getGiatien()}</td>
                </tr>
				</c:forEach>
                <tr>
                  <td colspan="6" style="text-align:right">Total Price:	</td>
                  <td>0</td>
                </tr>
				 <tr>
                  <td colspan="6" style="text-align:right">Total Discount:	</td>
                  <td> $50.00</td>
                </tr>
				 <tr>
                  <td colspan="6" style="text-align:right"><strong>TOTAL ($228 - $50 + $31) =</strong></td>
                  <td class="label label-important" style="display:block"> <strong id="tongtiengiohang"> 0</strong></td>
                </tr>
				</tbody>
            </table>
		
		
            <table class="table table-bordered">
			<tbody>
				 <tr>
                  <td> 
				<form class="form-horizontal">
				<div class="control-group">
				<label class="control-label"><strong> VOUCHERS CODE: </strong> </label>
				<div class="controls">
				<input type="text" class="input-medium" placeholder="CODE">
				<button type="submit" class="btn"> ADD </button>
				</div>
				</div>
				</form>
				</td>
                </tr>
				
			</tbody>
			</table>
			
			<table class="table table-bordered">
			 <tr><th>Đơn Hàng</th></tr>
			 <tr> 
			 <td>
				<form class="form-horizontal" method="post">
				  <div class="control-group">
					<label class="control-label" for="inputCountry">Họ tên : </label>
					<div class="controls">
					  <input type="text" name="tenkhachhang" id="inputCountry" placeholder="Họ tên">
					</div>
				  </div>
				  <div class="control-group">
					<label class="control-label" for="inputPost">Số điện thoại : </label>
					<div class="controls">
					  <input type="text" name="sodt" id="inputPost" placeholder="Số điện thoại">
					</div>
				  </div>
				  <div class="control-group">
					<label class="control-label" for="inputCountry">Địa chỉ giao hàng : </label>
					<div class="controls">
					  <input type="text" name="diachigiaohang" id="inputCountry" placeholder="Địa chỉ">
					</div>
				  </div>
				  <div class="control-group">
					<label class="control-label" for="inputCountry">Ghi chú : </label>
					<div class="controls">
					  <input type="text" name="ghichu" id="inputCountry" placeholder="Ghi chú">
					</div>
				  </div>
				  <div class="control-group">
					<div class="controls">
					  <button type="submit" class="btn">Đặt hàng</button>
					</div>
				  </div>
				</form>				  
			  </td>
			  </tr>
            </table>		
	<a href='<c:url value ="/products/"/>' class="btn btn-large"><i class="icon-arrow-left"></i> Thêm sản phẩm </a>
	<a href="login.html" class="btn btn-large pull-right">Next <i class="icon-arrow-right"></i></a>
	
</div>
</div></div>
</div>
	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>