<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div  id="footerSection">
	<div class="container">
		<div class="row">
			<div class="span3">
				<h5>ACCOUNT</h5>
				<a href="login.jsp">YOUR ACCOUNT</a>
				<a href="login.jsp">PERSONAL INFORMATION</a> 
				<a href="login.jsp">ADDRESSES</a> 
				<a href="login.jsp">DISCOUNT</a>  
				<a href="login.jsp">ORDER HISTORY</a>
			 </div>
			<div class="span3">
				<h5>INFORMATION</h5>
				<a href="contact.html">CONTACT</a>  
				<a href="login/">REGISTRATION</a>  
				<a href="legal_notice.html">LEGAL NOTICE</a>  
				<a href="tac.html">TERMS AND CONDITIONS</a> 
				<a href="faq.html">FAQ</a>
			 </div>
			<div class="span3">
				<h5>OUR OFFERS</h5>
				<a href='<c:url value ="/resources/#"/>'>NEW PRODUCTS</a> 
				<a href='<c:url value ="/resources/#"/>'>TOP SELLERS</a>  
				<a href="/special_offer.html">SPECIAL OFFERS</a>  
				<a href='<c:url value ="/resources/#"/>'>MANUFACTURERS</a> 
				<a href='<c:url value ="/resources/#"/>'>SUPPLIERS</a> 
			 </div>
			<div id="socialMedia" class="span3 pull-right">
				<h5>SOCIAL MEDIA </h5>
				<a href='<c:url value ="/resources/#"/>'><img width="60" height="60" src='<c:url value ="/resources/themes/images/facebook.png"/>' title="facebook" alt="facebook"/></a>
				<a href='<c:url value ="/resources/#"/>'><img width="60" height="60" src='<c:url value ="/resources/themes/images/twitter.png"/>' title="twitter" alt="twitter"/></a>
				<a href="/resources/#"><img width="60" height="60" src='<c:url value ="/resources/themes/images/youtube.png"/>' title="youtube" alt="youtube"/></a>
			 </div> 
		 </div>
		<p class="pull-right">&copy; Bootshop</p>
	</div><!-- Container End -->
	</div>
<!-- Placed at the end of the document so the pages load faster ============================================= -->
	<script src='<c:url value ="/resources/themes/js/jquery.js"/>' type="text/javascript"></script>
	<script src='<c:url value ="/resources/themes/js/bootstrap.min.js"/>' type="text/javascript"></script>
	<script src='<c:url value ="/resources/themes/js/google-code-prettify/prettify.js"/>'></script>
	
	<script src='<c:url value ="/resources/themes/js/bootshop.js"/>'></script>
    <script src='<c:url value ="/resources/themes/js/jquery.lightbox-0.5.js"/>'></script>
    <script src='<c:url value ="/resources/themes/js/custom.js"/>'></script>
    
	
	<!-- Themes switcher section ============================================================================================= -->
<div id="secectionBox">
<link rel="stylesheet" href='<c:url value ="/resources/themes/switch/themeswitch.css"/>' type="text/css" media="screen" />
<script src='<c:url value ="/resources/themes/switch/theamswitcher.js"/>' type="text/javascript" charset="utf-8"></script>
	<div id="themeContainer">
	<div id="hideme" class="themeTitle">Style Selector</div>
	<div class="themeName">Oregional Skin</div>
	<div class="images style">
	<a href='<c:url value ="/resources/themes/css/#"/>' name="bootshop"><img src='<c:url value ="/resources/themes/switch/images/clr/bootshop.png"/>' alt="bootstrap business templates" class="active"></a>
	<a href='<c:url value ="/resources/themes/css/#"/>' name="businessltd"><img src="/resources/themes/switch/images/clr/businessltd.png" alt="bootstrap business templates" class="active"></a>
	</div>
	<div class="themeName">Bootswatch Skins (11)</div>
	<div class="images style">
		<a href='<c:url value ="/resources/themes/css/#"/>' name="amelia" title="Amelia"><img src='<c:url value ="/resources/themes/switch/images/clr/amelia.png"/>' alt="bootstrap business templates"></a>
		<a href='<c:url value ="/resources/themes/css/#"/>' name="spruce" title="Spruce"><img src='<c:url value ="/resources/themes/switch/images/clr/spruce.png"/>' alt="bootstrap business templates" ></a>
		<a href='<c:url value ="/resources/themes/css/#"/>' name="superhero" title="Superhero"><img src='<c:url value ="/resources/themes/switch/images/clr/superhero.png"/>' alt="bootstrap business templates"></a>
		<a href='<c:url value ="/resources/themes/css/#"/>' name="cyborg"><img src='<c:url value ="/resources/themes/switch/images/clr/cyborg.png"/>' alt="bootstrap business templates"></a>
		<a href='<c:url value ="/resources/themes/css/#"/>' name="cerulean"><img src='<c:url value ="/resources/themes/switch/images/clr/cerulean.png"/>' alt="bootstrap business templates"></a>
		<a href='<c:url value ="/resources/themes/css/#"/>' name="journal"><img src='<c:url value ="/resources/themes/switch/images/clr/journal.png"/>' alt="bootstrap business templates"></a>
		<a href='<c:url value ="/resources/themes/css/#"/>' name="readable"><img src='<c:url value ="/resources/themes/switch/images/clr/readable.png"/>' alt="bootstrap business templates"></a>	
		<a href='<c:url value ="/resources/themes/css/#"/>' name="simplex"><img src='<c:url value ="/resources/themes/switch/images/clr/simplex.png"/>' alt="bootstrap business templates"></a>
		<a href='<c:url value ="/resources/themes/css/#"/>' name="slate"><img src='<c:url value ="/resources/themes/switch/images/clr/slate.png"/>' alt="bootstrap business templates"></a>
		<a href='<c:url value ="/resources/themes/css/#"/>' name="spacelab"><img src='<c:url value ="/resources/themes/switch/images/clr/spacelab.png"/>' alt="bootstrap business templates"></a>
		<a href='<c:url value ="/resources/themes/css/#"/>' name="united"><img src='<c:url value ="/resources/themes/switch/images/clr/united.png"/>' alt="bootstrap business templates"></a>
		<p style="margin:0;line-height:normal;margin-left:-10px;display:none;"><small>These are just examples and you can build your own color scheme in the backend.</small></p>
	</div>
	<div class="themeName">Background Patterns </div>
	<div class="images patterns">
		<a href='<c:url value ="/resources/themes/css/#"/>' name="pattern1"><img src='<c:url value ="/resources/themes/switch/images/pattern/pattern1.png"/>' alt="bootstrap business templates" class="active"></a>
		<a href='<c:url value ="/resources/themes/css/#"/>' name="pattern2"><img src='<c:url value ="/resources/themes/switch/images/pattern/pattern2.png"/>' alt="bootstrap business templates"></a>
		<a href='<c:url value ="/resources/themes/css/#"/>' name="pattern3"><img src='<c:url value ="/resources/themes/switch/images/pattern/pattern3.png"/>' alt="bootstrap business templates"></a>
		<a href='<c:url value ="/resources/themes/css/#"/>' name="pattern4"><img src='<c:url value ="/resources/themes/switch/images/pattern/pattern4.png"/>' alt="bootstrap business templates"></a>
		<a href='<c:url value ="/resources/themes/css/#"/>' name="pattern5"><img src='<c:url value ="/resources/themes/switch/images/pattern/pattern5.png"/>' alt="bootstrap business templates"></a>
		<a href='<c:url value ="/resources/themes/css/#"/>' name="pattern6"><img src='<c:url value ="/resources/themes/switch/images/pattern/pattern6.png"/>' alt="bootstrap business templates"></a>
		<a href='<c:url value ="/resources/themes/css/#"/>' name="pattern7"><img src='<c:url value ="/resources/themes/switch/images/pattern/pattern7.png"/>' alt="bootstrap business templates"></a>
		<a href='<c:url value ="/resources/themes/css/#"/>' name="pattern8"><img src='<c:url value ="/resources/themes/switch/images/pattern/pattern8.png"/>' alt="bootstrap business templates"></a>
		<a href='<c:url value ="/resources/themes/css/#"/>' name="pattern9"><img src='<c:url value ="/resources/themes/switch/images/pattern/pattern9.png"/>' alt="bootstrap business templates"></a>
		<a href='<c:url value ="/resources/themes/css/#"/>' name="pattern10"><img src='<c:url value ="/resources/themes/switch/images/pattern/pattern10.png"/>' alt="bootstrap business templates"></a>
		
		<a href='<c:url value ="/resources/themes/css/#"/>' name="pattern11"><img src='<c:url value ="/resources/themes/switch/images/pattern/pattern11.png"/>' alt="bootstrap business templates"></a>
		<a href='<c:url value ="/resources/themes/css/#"/>' name="pattern12"><img src='<c:url value ="/resources/themes/switch/images/pattern/pattern12.png"/>' alt="bootstrap business templates"></a>
		<a href='<c:url value ="/resources/themes/css/#"/>' name="pattern13"><img src='<c:url value ="/resources/themes/switch/images/pattern/pattern13.png"/>' alt="bootstrap business templates"></a>
		<a href='<c:url value ="/resources/themes/css/#"/>' name="pattern14"><img src='<c:url value ="/resources/themes/switch/images/pattern/pattern14.png"/>' alt="bootstrap business templates"></a>
		<a href='<c:url value ="/resources/themes/css/#"/>' name="pattern15"><img src='<c:url value ="/resources/themes/switch/images/pattern/pattern15.png"/>' alt="bootstrap business templates"></a>
		
		<a href='<c:url value ="/resources/themes/css/#"/>' name="pattern16"><img src='<c:url value ="/resources/themes/switch/images/pattern/pattern16.png"/>' alt="bootstrap business templates"></a>
		<a href='<c:url value ="/resources/themes/css/#"/>' name="pattern17"><img src='<c:url value ="/resources/themes/switch/images/pattern/pattern17.png"/>'alt="bootstrap business templates"></a>
		<a href='<c:url value ="/resources/themes/css/#"/>' name="pattern18"><img src='<c:url value ="/resources/themes/switch/images/pattern/pattern18.png"/>' alt="bootstrap business templates"></a>
		<a href='<c:url value ="/resources/themes/css/#"/>' name="pattern19"><img src='<c:url value ="/resources/themes/switch/images/pattern/pattern19.png"/>' alt="bootstrap business templates"></a>
		<a href='<c:url value ="/resources/themes/css/#"/>' name="pattern20"><img src='<c:url value ="/resources/themes/switch/images/pattern/pattern20.png"/>' alt="bootstrap business templates"></a>
		 
	</div>
	</div>
</div>
<span id="themesBtn"></span>
</body>
</html>