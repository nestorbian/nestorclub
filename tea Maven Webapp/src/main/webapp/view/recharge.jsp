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

	<link rel="stylesheet" href="mainview/css/recharge.css" type="text/css"></link>
	</head>
	<body  style="background-image: url(mainview/img/broken_noise.png);">
		
	

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
							<li><a href="newtea/shownewtea.do">新茶资讯</a></li>
							<li><a href="goods/showmaingoods.do">茶具商城</a></li>
							<li><a href="maketea/showessays.do">泡茶吧</a></li>
							<c:choose>
							<c:when test="${userinfo!=null}">
							<li  class="active"><a href="view/recharge.jsp">充值中心</a></li>
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

	<header id="fh5co-header" class="fh5co-cover js-fullheight" role="banner"  style="background-image: url(mainview/img/p16.jpg);" data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container" >
			<div class="row" >
				<div class="col-md-12 text-center" >
					<div class="display-t js-fullheight" >
						<div class="display-tc js-fullheight animate-box" data-animate-effect="fadeIn">
							<h1>充值中心</h1>
							<h2>Voucher Center</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
	
	<div class="main">
	<form action="user/recharge.do" method="post">
	<span class="p1">充值金额：</span>
	<button class="choose" value="50" type="button">50元</button>  <button class="choose" value="100" type="button">100元</button> 
	 <button class="choose" value="200" type="button">200元</button>  <button class="choose"value="500" type="button">500元</button> 
	<div class="div1"><input type="text" id="account" class="account" placeholder="其它金额" maxlength="6"/><span class="span1">元</span></div>
	<div class="div2"><span class="span2">应付金额:</span><input type="text" name="money" class="money" readonly="readonly" value="0"/><span class="span3">元</span><br/></div>
	<button type="submit" class="recharge" disabled="disabled">充值</button>
	</form>
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


	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up22"></i></a>
	</div>
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
	<!-- Main -->
	<script src="mainview/js/main.js"></script>
	<script type="text/javascript">
	$(function(){
	$(".choose").click(function(){
	$(".div1").css({'background-color':'transparent'});
	$(".choose").css({'background-color':'gray','border':'gray'});
	$(this).css({'background-color':'orange','border':'orange'});
	$(".account").val('');
	$(".money").val($(this).val());
	$(".recharge").prop("disabled",false);
	});
	$(".account").click(function(){
	$(".choose").css({'background-color':'gray','border':'gray'});
	if($(".account").val()=='')
	{
	$(".money").val(0);
	$(".recharge").prop("disabled",true);
	}
	});
	$(".account").keyup(function(){
	this.value=this.value.replace(/\D/g,'');
	$(".money").val($(this).val()); 
	if($(".account").val()!='')
	{
	$(".div1").css({'background-color':'orange','border':'orange'});
	$(".recharge").prop("disabled",false);
	}
	else {
	$(".div1").css({'background-color':'transparent'});
	$(".recharge").prop("disabled",true);
	$(".money").val(0);
	}
	});
	$("form").submit(function(e){
	if("${userinfo}"=='')
	{
	e.preventDefault();
	window.location.href="view/login.jsp";
	}
	});
	});
	</script>
	</body>
</html>

