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
	<link rel="stylesheet" href="mainview/css/choose.css">
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
     <link rel="stylesheet" href="../mainview/css/bootstrap.min.css" type="text/css">
	<!-- Modernizr JS -->
	<script src="mainview/js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->
<script type="text/javascript" src="mainview/js/jquery-1.11.3.js"></script>
<script type="text/javascript">
$(document).ready(function(){
  $(".cart").click(function(){
    if("${userinfo}"!='')
    {
    $.post("cart/addcart.do",{goodid:$(".goodid").val(),goodnum:$(".text_box").val(),sum:$(".sum").val()},function(data,status){
    $(".modal-body").html(data.result);
    $("#myModal").modal("show");
    });
    }
    else{
    $(".modal-body").html("请您先登录");
    $("#myModal").modal("show");
    }
    });
  $(".buy").click(function(){
    if("${userinfo}"!='')
    {
    window.location.href="goods/confirm.do?goodid=${goods.goodid}&goodnum="+$(".text_box").val()+"&sum="+$(".sum").val();
    }
    else{
    $(".modalp").html("请您先登录");
    $("#myModal").modal("show");
    }
    });
    $(".text_box").blur(function(){
    var t=$(".text_box").val();
    var g=$(".goodstock").val();
    var p=$(".goodprice").val();
    if(parseInt(t)>parseInt(g)||parseInt(t)<1||t=='')
    {
    $(".myspan").html("购买数量不合法！");
    $(".sumh3").hide();
    $(".buy").attr("disabled",true);
    $(".cart").attr("disabled",true);
    }
    else{
    $(".sumh3").show();
    $(".myspan").html("");
    $(".sum").val(t*p);
    $(".buy").attr("disabled",false);
    $(".cart").attr("disabled",false);
    }
    });
});
</script>
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
							<li  class="active"><a href="goods/showmaingoods.do">茶具商城</a></li>
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
<div  class="maindiv">
<div class="img-responsive"><img src="${goods.googpath}" alt="loading" class="teaimg"></div>
<div class="hh">
<input type="hidden" class="goodid" value="${goods.goodid}"/>
<h3>名称：${goods.goodname }</h3>
<h3>价格：<input type="text" class="goodprice" value="${goods.goodprice}" readonly="readonly"/>元</h3>
<h3>库存：<input type="text" class="goodstock" value="${goods.goodstock}" readonly="readonly"/></h3>
<div class="num">
<h3>数量：
<input class="min" name="" type="button" value="-" />
<input class="text_box" name="goodnum" type="text" value="1" style="width:50px;" onkeyup="this.value=this.value.replace(/\D/g, '')"/>
<input class="add" name="" type="button" value="+" />
<span class="myspan"></span>
</h3>
<h3 class="sumh3">总计：<input type="text" class="sum" value="${goods.goodprice}" readonly="readonly"/>元</h3>
</div>
<div class="label">
<button class="buy">立即购买</button><span>  </span><button class="cart">加入购物车</button>
</div>
</div>
</div>
	<!-- 模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="margin-top: 150px;">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">茶具商城提醒您</h4>
            </div>
            <div class="modal-body" style="height: 200px;color:black;font-size: 40px;text-align: center;">
            <p class="modalp"></p>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
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
	<!-- Main -->
	<script src="mainview/js/main.js"></script>
	<script src="mainview/js/choose.js"></script>
	</body>
</html>

