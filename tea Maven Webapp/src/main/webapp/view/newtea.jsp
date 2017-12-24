<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML>
<html>
	<head>
	<base href="<%=basePath%>">
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>茶道网</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Website Template by freehtml5.co" />
	<meta name="keywords" content="free website templates, free html5, free template, free bootstrap, free website template, html5, css3, mobile first, responsive" />
	

	

  	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<link href="https://fonts.googleapis.com/css?family=Cormorant+Garamond:300,300i,400,400i,500,600i,700" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Satisfy" rel="stylesheet">
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="mainview/css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="mainview/css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="mainview/css/bootstrap.css">

	<!-- Flexslider  -->
	<link rel="stylesheet" href="mainview/css/flexslider.css">

	<!-- Theme style  -->
	<link rel="stylesheet" href="mainview/css/style.css">

	<!-- Modernizr JS -->
	<script src="mainview/js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

	</head>
	<body>
		
	<div class="fh5co-loader"></div>
	
	<div id="page">
			<nav class="fh5co-nav" role="navigation" >
		<!-- <div class="top-menu"> -->
			<div class="container">
				<div class="row">
					<div class="col-xs-12 text-center logo-wrap" >
						<div id="fh5co-logo"><a href="view/teaindex.jsp">茶道网</a></div>
					</div>
					<div class="col-xs-12 text-center menu-1 menu-wrap">
						<ul>
							<li><a href="view/teaindex.jsp">首页</a></li>
							<li  class="active"><a href="newtea/shownewtea.do">新茶资讯</a></li>
							<li><a href="goods/showmaingoods.do">茶具商城</a></li>
							<li><a href="maketea/showessays.do">泡茶吧</a></li>
							<c:choose>
							<c:when test="${userinfo!=null}">
							<li><a href="view/recharge.jsp">充值中心</a></li>
							<li><a href="cart/showcart.do">购物车</a></li>
							</c:when>
							</c:choose>
							<c:choose>
							<c:when test="${userinfo!=null}">
							<li  class="has-dropdown"><a href="user/userinfo.do">个人中心</a>
							<ul class="dropdown">
							        <li><a href="user/userinfo.do">个人信息</a></li>
									<li><a href="order/showall.do?state=0">待支付</a></li>
									<li><a href="order/showall.do?state=1">历史订单</a></li>
									<li><a href="user/selectinfo.do">修改信息</a></li>
									<li><a href="user/exit.do">退出</a></li>
								</ul>
							</li>
							</c:when>
							</c:choose>
							<li><a href="view/error.jsp">联系我们</a></li>
							<c:choose>
							<c:when test="${userinfo==null}">
							<li><a href="view/login.jsp">登录|注册</a></li>
							</c:when>
							<c:otherwise>
							<li>欢迎  ${userinfo.username} 登录</li>
							</c:otherwise>
							</c:choose>
						</ul>
					</div>
				</div>
				
			</div>
		<!-- </div> -->
		
	</nav>

	<header id="fh5co-header" class="fh5co-cover js-fullheight" role="banner" style="background-image: url(mainview/img/p13.jpg);" data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div class="row">
				<div class="col-md-12 text-center">
					<div class="display-t js-fullheight">
						<div class="display-tc js-fullheight animate-box" data-animate-effect="fadeIn">
							<h1>新茶连连看</h1>
							<h2>To see the tea again and again.</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>


<div id="fh5co-blog" class="fh5co-section">
		<div class="container">
			<div class="row">
			<c:forEach items="${teaList}" var="tea">
				<div class="col-md-4">
					<div class="fh5co-blog animate-box">
						<a href="#" class="blog-bg" style="background-image: url(${tea.teapath});"></a>
						<div class="blog-text">
							<span class="posted_on"></span>
							<h3><a href="#">${tea.teaname}</a></h3>
							<h4>${tea.tealocation}</h4>
							<p>${tea.teainfo}</p>
							<ul class="stuff">
								<li><i class="icon-heart2"></i>1.2K</li>
								<li><i class="icon-eye2"></i>2K</li>
								<li><a href="#">了解更多<i class="icon-arrow-right22"></i></a></li>
							</ul>
						</div> 
					</div>
				</div>
			</c:forEach>
			</div>
		</div>
	</div>
	
	

	
	

		<footer id="fh5co-footer" role="contentinfo" class="fh5co-section">
		<div class="container">
			<div class="row row-pb-md">
				<div class="col-md-4 fh5co-widget">
					<h4>中国茶道网</h4>
					<p>Facilis ipsum reprehenderit nemo molestias. Aut cum mollitia reprehenderit. Eos cumque dicta adipisci architecto culpa amet.</p>
				</div>
				<div class="col-md-2 col-md-push-1 fh5co-widget">
					<h4>Links</h4>
					<ul class="fh5co-footer-links">
						<li><a href="#">Home</a></li>
						<li><a href="#">About</a></li>
						<li><a href="#">Menu</a></li>
						<li><a href="#">Gallery</a></li>
					</ul>
				</div>

				<div class="col-md-2 col-md-push-1 fh5co-widget">
					<h4>Categories</h4>
					<ul class="fh5co-footer-links">
						<li><a href="#">Landing Page</a></li>
						<li><a href="#">Real Estate</a></li>
						<li><a href="#">Personal</a></li>
						<li><a href="#">Business</a></li>
						<li><a href="#">e-Commerce</a></li>
					</ul>
				</div>

				<div class="col-md-4 col-md-push-1 fh5co-widget">
					<h4>Contact Information</h4>
					<ul class="fh5co-footer-links">
						<li>198 West 21th Street, <br> Suite 721 New York NY 10016</li>
						<li><a href="tel://1234567920">+ 1235 2355 98</a></li>
						<li><a href="mailto:info@yoursite.com">info@yoursite.com</a></li>
						<li><a href="http://#">freehtml5.co</a></li>
					</ul>
				</div>

			</div>

			<div class="row copyright">
				<div class="col-md-12 text-center">
					<p>
						<small class="block">&copy; 2016.6.6 茶道网开始运营</small>
					</p>
				</div>
			</div>

		</div>
	</footer>
	</div>

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up22"></i></a>
	</div>
	
	<!-- jQuery -->
	<script src="mainview/js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="mainview/js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="mainview/js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="mainview/js/jquery.waypoints.min.js"></script>
	<!-- Waypoints -->
	<script src="mainview/js/jquery.stellar.min.js"></script>
	<!-- Flexslider -->
	<script src="mainview/js/jquery.flexslider-min.js"></script>
	<script src="mainview/js/zoomerang.js"></script>
	<!-- Main -->
	<script src="mainview/js/main.js"></script>

	<script>
		Zoomerang
      .config({
        maxHeight: 600,
        maxWidth: 900,
        bgColor: '#000',
        bgOpacity: .85
      })
      .listen('[data-trigger="zoomerang"]')
	</script>

	</body>
</html>

