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
<title>Insert title here</title>
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
    <li><a href="products.html">Products</a> <span class="divider">/</span></li>
    <li class="active">product Details</li>
    </ul>	
	<div class="row">	  
			<div id="gallery" class="span3">
            <a href='<c:url value ="/resources/themes/images/products/large/f1.jpg"/>' title="Fujifilm FinePix S2950 Digital Camera">
				<img src='<c:url value ="/resources/themes/images/products/large/3.jpg"/>' style="width:100%" alt="Fujifilm FinePix S2950 Digital Camera"/>
            </a>
			<div id="differentview" class="moreOptopm carousel slide">
                <div class="carousel-inner">
                  <div class="item active">
                   <a href='<c:url value ="/resources/themes/images/products/large/f1.jpg"/>'> <img style="width:29%" src='<c:url value ="/resources/themes/images/products/large/f1.jpg"/>' alt=""/></a>
                   <a href='<c:url value ="/resources/themes/images/products/large/f2.jpg"/>'> <img style="width:29%" src='<c:url value ="/resources/themes/images/products/large/f2.jpg"/>' alt=""/></a>
                   <a href='<c:url value ="/resources/themes/images/products/large/f3.jpg"/>' > <img style="width:29%" src='<c:url value ="/resources/themes/images/products/large/f3.jpg"/>' alt=""/></a>
                  </div>
                  <div class="item">
                   <a href='<c:url value ="/resources/themes/images/products/large/f3.jpg"/>' > <img style="width:29%" src='<c:url value ="/resources/themes/images/products/large/f3.jpg"/>' alt=""/></a>
                   <a href='<c:url value ="/resources/themes/images/products/large/f1.jpg"/>'> <img style="width:29%" src='<c:url value ="/resources/themes/images/products/large/f1.jpg"/>' alt=""/></a>
                   <a href='<c:url value ="/resources/themes/images/products/large/f2.jpg"/>'> <img style="width:29%" src='<c:url value ="/resources/themes/images/products/large/f2.jpg"/>' alt=""/></a>
                  </div>
                </div>
              <!--  
			  <a class="left carousel-control" href="#myCarousel" data-slide="prev">‹</a>
              <a class="right carousel-control" href="#myCarousel" data-slide="next">›</a> 
			  -->
              </div>
			  
			 <div class="btn-toolbar">
			  <div class="btn-group">
				<span class="btn"><i class="icon-envelope"></i></span>
				<span class="btn" ><i class="icon-print"></i></span>
				<span class="btn" ><i class="icon-zoom-in"></i></span>
				<span class="btn" ><i class="icon-star"></i></span>
				<span class="btn" ><i class=" icon-thumbs-up"></i></span>
				<span class="btn" ><i class="icon-thumbs-down"></i></span>
			  </div>
			</div>
			</div>
			<div class="span6">
				<h3 id="tensp" data-masanpham="${sanpham.getMasanpham()}" data-tenhang ="${sanpham.getTenhang()}">${sanpham.getTensanpham()} </h3>
				<small>- (14MP, 18x Optical Zoom) 3-inch LCD</small>
				<hr class="soft"/>
				<form class="form-horizontal qtyFrm">
				  <div class="control-group">
					<label class="control-label"><span id="giatien">${sanpham.getGiatien()}</span></label>
					<div class="controls">
					<input type="number" class="span1" placeholder="Qty."/>
					  <button class="btn btn-large btn-primary pull-right btn-giohang"> Add to cart <i class=" icon-shopping-cart"></i></button>
					</div>
				  </div>
				</form>
				
				<hr class="soft"/>
				<h4>100 items in stock</h4>
				<form class="form-horizontal qtyFrm pull-right">
				  <div class="control-group">
					<label class="control-label"><span>Color</span></label>
					<div class="controls">
					  <select class="span2 mausac">
					    <c:forEach var="chitiet" items="${sanpham.getChitietsanpham()}">
						  <option data-machitiet="${chitiet.getMachitietsanpham()}" value="${chitiet.getMausanpham().getMamau()}">${chitiet.getMausanpham().getTenmau()}</option>
					     </c:forEach>
						</select>
					</div>
				  </div>
				</form>
				<hr class="soft clr"/>
				<p>
				${sanpham.getMota()}
				
				</p>
				<a class="btn btn-small pull-right" href="#detail">More Details</a>
				<br class="clr"/>
			<a href="#" name="detail"></a>
			<hr class="soft"/>
			</div>
			
			<div class="span9">
            <ul id="productDetail" class="nav nav-tabs">
              <li class="active"><a href="#home" data-toggle="tab">Product Details</a></li>
              <li><a href="#profile" data-toggle="tab">Related Products</a></li>
            </ul>
            <div id="myTabContent" class="tab-content">
              <div class="tab-pane fade active in" id="home">
			  <h4>Product Information</h4>
                <table class="table table-bordered">
				<tbody>
				<tr class="techSpecRow"><th colspan="2">Product Details</th></tr>
				<tr class="techSpecRow"><td class="techSpecTD1" >Tên: </td><td class="techSpecTD2 tensanpham masanpham" data-tensanpham ="${sanpham.getTensanpham()}" data-masanpham = "${sanpham.getMasanpham()}">${sanpham.getTensanpham()}</td></tr>
				<tr class="techSpecRow"><td class="techSpecTD1">Hãng:</td><td class="techSpecTD2 tenhang" data-tenhang ="${sanpham.getTenhang()}">${sanpham.getTenhang()}</td></tr>
				<tr class="techSpecRow"><td class="techSpecTD1">Released on:</td><td class="techSpecTD2"> 2011-01-28</td></tr>
				</tbody>
				</table>
				
				<h5>Features</h5>
				
				<p>
				With its easy to use Panoramic shooting mode you can get creative on the S2950, however basic your skills, and rest assured that you will not risk shooting uneven landscapes or shaky horizons. The camera enables you to take three successive shots with a helpful tool which automatically releases the shutter once the images are fully aligned to seamlessly stitch the shots together in-camera. It's so easy and the results are impressive.
				</p>

				<h5>Sharp, clear shots</h5>
				<p>
				Even at the longest zoom settings or in the most challenging of lighting conditions, the S2950 is able to produce crisp, clean results. With its mechanically stabilised 1/2 3", 14 megapixel CCD sensor, and high ISO sensitivity settings, Fujifilm's Dual Image Stabilisation technology combines to reduce the blurring effects of both hand-shake and subject movement to provide superb pictures.
				</p>
              </div>
		<div class="tab-pane fade" id="profile">
		<div id="myTab" class="pull-right">
		 <a href="#listView" data-toggle="tab"><span class="btn btn-large"><i class="icon-list"></i></span></a>
		 <a href="#blockView" data-toggle="tab"><span class="btn btn-large btn-primary"><i class="icon-th-large"></i></span></a>
		</div>
		<br class="clr"/>
		<hr class="soft"/>
		<div class="tab-content">
			<div class="tab-pane" id="listView">

				<div class="row">	  
					<div class="span2">
					<img src='<c:url value ="/resources/themes/images/products/9.jpg"/>' alt=""/>
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
						<h3> $222.00</h3>
						<label class="checkbox">
						<input type="checkbox">  Adds product to compair
						</label><br/>
						<div class="btn-group">
						<a href="product_details.html" class="btn btn-large btn-primary"> Add to <i class=" icon-shopping-cart"></i></a>
						<a href="product_details.html" class="btn btn-large"><i class="icon-zoom-in"></i></a>
						</div>
						</form>
					</div>
			</div>
			<hr class="soft"/>
		</div>
			<div class="tab-pane active" id="blockView">
				<ul class="thumbnails">
					<li class="span3">
					  <div class="thumbnail">
						<a href="product_details.html"><img src='<c:url value ="/resources/themes/images/products/10.jpg"/>' alt=""/></a>
						<div class="caption">
						  <h5>Manicure &amp; Pedicure</h5>
						  <p> 
							Lorem Ipsum is simply dummy text. 
						  </p>
						  <h4 style="text-align:center"><a class="btn" href="product_details.html"> <i class="icon-zoom-in"></i></a> <a class="btn" href="#">Add to <i class="icon-shopping-cart"></i></a> <a class="btn btn-primary" href="#">&euro;222.00</a></h4>
						</div>
					  </div>
					</li>
					<li class="span3">
					  <div class="thumbnail">
						<a href="product_details.html"><img src='<c:url value ="/resources/themes/images/products/11.jpg"/>' alt=""/></a>
						<div class="caption">
						  <h5>Manicure &amp; Pedicure</h5>
						  <p> 
							Lorem Ipsum is simply dummy text. 
						  </p>
						  <h4 style="text-align:center"><a class="btn" href="product_details.html"> <i class="icon-zoom-in"></i></a> <a class="btn" href="#">Add to <i class="icon-shopping-cart"></i></a> <a class="btn btn-primary" href="#">&euro;222.00</a></h4>
						</div>
					  </div>
					</li>
					<li class="span3">
					  <div class="thumbnail">
						<a href="product_details.html"><img src='<c:url value ="/resources/themes/images/products/12.jpg"/>' alt=""/></a>
						<div class="caption">
						  <h5>Manicure &amp; Pedicure</h5>
						  <p> 
							Lorem Ipsum is simply dummy text. 
						  </p>
						   <h4 style="text-align:center"><a class="btn" href="product_details.html"> <i class="icon-zoom-in"></i></a> <a class="btn" href="#">Add to <i class="icon-shopping-cart"></i></a> <a class="btn btn-primary" href="#">&euro;222.00</a></h4>
						</div>
					  </div>
					</li>
					<li class="span3">
					  <div class="thumbnail">
						<a href="product_details.html"><img src='<c:url value ="/resources/themes/images/products/13.jpg"/>' alt=""/></a>
						<div class="caption">
						  <h5>Manicure &amp; Pedicure</h5>
						  <p> 
							Lorem Ipsum is simply dummy text. 
						  </p>
						   <h4 style="text-align:center"><a class="btn" href="product_details.html"> <i class="icon-zoom-in"></i></a> <a class="btn" href="#">Add to <i class="icon-shopping-cart"></i></a> <a class="btn btn-primary" href="#">&euro;222.00</a></h4>
						</div>
					  </div>
					</li>
					<li class="span3">
					  <div class="thumbnail">
						<a href="product_details.html"><img src='<c:url value ="/resources/themes/images/products/1.jpg"/>' alt=""/></a>
						<div class="caption">
						  <h5>Manicure &amp; Pedicure</h5>
						  <p> 
							Lorem Ipsum is simply dummy text. 
						  </p>
						   <h4 style="text-align:center"><a class="btn" href="product_details.html"> <i class="icon-zoom-in"></i></a> <a class="btn" href="#">Add to <i class="icon-shopping-cart"></i></a> <a class="btn btn-primary" href="#">&euro;222.00</a></h4>
						</div>
					  </div>
					</li>
					<li class="span3">
					  <div class="thumbnail">
						<a href="product_details.html"><img src='<c:url value ="/resources/themes/images/products/2.jpg"/>' alt=""/></a>
						<div class="caption">
						  <h5>Manicure &amp; Pedicure</h5>
						  <p> 
							Lorem Ipsum is simply dummy text. 
						  </p>
						   <h4 style="text-align:center"><a class="btn" href="product_details.html"> <i class="icon-zoom-in"></i></a> <a class="btn" href="#">Add to <i class="icon-shopping-cart"></i></a> <a class="btn btn-primary" href="#">&euro;222.00</a></h4>
						</div>
					  </div>
					</li>
				  </ul>
			<hr class="soft"/>
			</div>
		</div>
				<br class="clr">
					 </div>
		</div>
          </div>

	</div>
</div>
</div> </div>
</div>

	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>