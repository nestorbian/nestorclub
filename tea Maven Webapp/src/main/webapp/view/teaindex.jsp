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
	<title>中国茶道网</title>
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
							<li  class="active"><a href="view/teaindex.jsp">首页</a></li>
							<li><a href="newtea/shownewtea.do">新茶资讯</a></li>
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

	<header id="fh5co-header" class="fh5co-cover js-fullheight" role="banner"  style="background-image: url(mainview/img/p2.jpg);" data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container" >
			<div class="row" >
				<div class="col-md-12 text-center" >
					<div class="display-t js-fullheight" >
						<div class="display-tc js-fullheight animate-box" data-animate-effect="fadeIn">
							<h1>品茗谈天地，赏花语人生</h1>
							<h2>Tea talk of heaven and earth, enjoy the flower of life</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
	
	<div id="fh5co-about" class="fh5co-section">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-md-pull-4 img-wrap animate-box" data-animate-effect="fadeInLeft">
					<img src="mainview/img/p3.jpg" alt="Free Restaurant Bootstrap Website Template by FreeHTML5.co">
				</div>
				<div class="col-md-5 col-md-push-1 animate-box">
					<div class="section-heading">
						<h2>铁观音</h2>
						<p>铁观音（tiě guān yīn）茶，中国传统名茶，属于青茶类，是中国十大名茶之一。原产于福建泉州市安溪县西坪镇，发现于1723—1735年。“铁观音”既是茶名，也是茶树品种名，铁观音茶介于绿茶和红茶之间，属于半发酵茶类，铁观音独具“观音韵”，清香雅韵，冲泡后有天然的兰花香，滋味纯浓,香气馥郁持久，有“七泡有余香之誉 ”。除具有一般茶叶的保健功能外，还具有抗衰老、抗动脉硬化、防治糖尿病、减肥健美、防治龋齿、清热降火，敌烟醒酒等功效。</p>
						<p>铁观音含有较高的氨基酸、维生素、矿物质、茶多酚和生物碱，有多种营养和药效成分，具有养生保健的功能。于民国八年自福建安溪引进木栅区试种，分“红心铁观音”及“青心铁观音”两种，主要产区在文山期树属横张型，枝干粗硬，叶较稀松，芽少叶厚，产量不高，但制包种茶品质高，产期较青心乌龙晚。其树形稍，叶呈椭圆形，叶厚肉多。叶片平坦展开。</p>
					</div>
				</div>
			</div>
		</div>
	</div>
				
				<div class="col-md-3 col-sm-6 col-xs-6 col-xxs-12 fh5co-item-wrap animate-box">
					<div class="fh5co-item">
						<img src="mainview/img/p4.jpg" class="img-responsive" alt="图片加载中">
						<h3></h3>
						<span class="fh5co-price">150元/斤</span>
						<p>碧螺春是中国传统名茶，中国十大名茶之一，属于绿茶类，已有1000多年历史。碧螺春产于江苏省苏州市吴县太湖的东洞庭山及西洞庭山（今苏州吴中区）一带，所以又称“洞庭碧螺春”。</p>
					</div>
				</div>
				<div class="col-md-3 col-sm-6 col-xs-6 col-xxs-12 fh5co-item-wrap animate-box">
					<div class="fh5co-item margin_top">
						<img src="mainview/img/p5.jpg" class="img-responsive" alt="图片加载中">
						<h3>西湖龙井</h3>
						<span class="fh5co-price">200元/斤</sup></span>
						<p>西湖龙井，属绿茶，中国十大名茶之一。产于浙江省杭州市西湖龙井村周围群山。具有1200多年历史。西湖龙井，因产于中国杭州西湖的龙井茶区而得名。欲把西湖比西子，从来佳茗似佳人。龙井既是地名，又是泉名和茶名。茶有“四绝”：色绿、香郁、味甘、形美。</p>
					</div>
				</div>
				<div class="clearfix visible-sm-block visible-xs-block"></div>
				<div class="col-md-3 col-sm-6 col-xs-6 col-xxs-12 fh5co-item-wrap animate-box">
					<div class="fh5co-item">
						<img src="mainview/img/p6.jpg" class="img-responsive" alt="Free Restaurant Bootstrap Website Template by FreeHTML5.co">
						<h3>信阳毛尖</h3>
						<span class="fh5co-price">280元/斤</span>
						<p>信阳毛尖又称豫毛峰，属绿茶类。是中国十大名茶之一，河南省著名特产。由信阳茶农创制于民国初年。主要产地在信阳市和新县，商城县及境内大别山一带。信阳毛尖具有“细、圆、光、直、多白毫、香高、味浓、汤色绿”的独特风格，具有生津解渴、清心明目、提神醒脑、去腻消食等多种营养价值。</p>
					</div>
				</div>
				<div class="col-md-3 col-sm-6 col-xs-6 col-xxs-12 fh5co-item-wrap animate-box">
					<div class="fh5co-item margin_top">
						<img src="mainview/img/p7.jpg" class="img-responsive" alt="Free Restaurant Bootstrap Website Template by FreeHTML5.co">
						<h3>君山银针</h3>
						<span class="fh5co-price">200元/斤</span>
						<p>君山银针是中国名茶之一。产于湖南岳阳洞庭湖中的君山，形细如针，故名君山银针。属于黄茶。其成品茶芽头茁壮，长短大小均匀，茶芽内面呈金黄色，外层白毫显露完整，而且包裹坚实，茶芽外形很象一根根银针，雅称“金镶玉”。“金镶玉色尘心去，川迥洞庭好月来。</p>
					</div>
				</div>
	
    <div class="copyrights">Collect from <a href="http://www.cssmoban.com/"  title="ç½ç«æ¨¡æ¿">ç½ç«æ¨¡æ¿</a></div>

	<div id="fh5co-featured-testimony" class="fh5co-section">
		<div class="container">
			<div class="row">
				<div class="col-md-5 animate-box img-to-responsive animate-box" data-animate-effect="fadeInLeft">
						<img src="mainview/img/p9.jpg" alt="">
				</div>
				<div class="col-md-7 animate-box" data-animate-effect="fadeInRight">
					<blockquote>
						<p style="font-size: 25px;"> 黄山毛峰产于安徽省黄山（徽州）一带，所以又称徽茶。由清代光绪年间谢裕大茶庄所创制。每年清明谷雨，选摘良种茶树“黄山种”、“黄山大叶种”等的初展肥壮嫩芽，手工炒制，该茶外形微卷，状似雀舌，绿中泛黄，银毫显露，且带有金黄色鱼叶。</p>
					</blockquote>
				</div>
			</div>
		</div>
	</div>

	<div id="fh5co-slider" class="fh5co-section animate-box">
		<div class="container">
			<div class="row">
				<div class="col-md-6 animate-box">
					<div class="fh5co-heading">
						<h2>武夷岩茶</h2>
					</div>
				</div>
				<div class="col-md-6 col-md-push-1 animate-box">
					<aside id="fh5co-slider-wrwap">
					<div class="flexslider">
						<ul class="slides">
					   	<li style="background-image: url(mainview/img/p8.jpg);">
					   		<div class="overlay-gradient"></div>
					   		<div class="container-fluid">
					   			<div class="row">
						   			<div class="col-md-12 col-md-offset-0 col-md-pull-10 slider-text slider-text-bg">
						   				<div class="slider-text-inner">
						   					<div class="desc">
													<h2>详细资讯</h2>
													<p>武夷岩茶是中国传统名茶，是具有岩韵（岩骨花香）品质特征的乌龙茶。产于福建闽北“秀甲东南”的武夷山一带，茶树生长在岩缝之中。武夷岩茶具有绿茶之清香，红茶之甘醇，是中国乌龙茶中之极品。武夷岩茶属半发酵的青茶，制作方法介于绿茶与红茶之间。最著名的武夷岩茶是大红袍茶。</p>
													<p><a href="#" class="btn btn-primary btn-outline">了解更多</a></p>
						   					</div>
						   				</div>
						   			</div>
						   		</div>
					   		</div>
					   	</li>   	
					  	</ul>
				  	</div>
				</aside>
				</div>
			</div>
		</div>
	</div>

	<div id="fh5co-blog" class="fh5co-section">
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<div class="fh5co-blog animate-box">
						<a href="#" class="blog-bg" style="background-image: url(mainview/img/p10.jpg);"></a>
						<div class="blog-text">
							<span class="posted_on"></span>
							<h3><a href="#">祁门红茶</a></h3>
							<p>祁门红茶简称祁红，茶叶原料选用当地的中叶、中生种茶树“槠叶种”（又名祁门种）制作，是中国历史名茶，著名红茶精品。由安徽茶农创制于光绪年间，但史籍记载最早可追溯至唐朝陆羽的茶经。产于安徽省祁门、东至、贵池（今池州市）、石台、黟县，以及江西的浮梁一带。</p>
							<ul class="stuff">
								<li><i class="icon-heart2"></i>1.2K</li>
								<li><i class="icon-eye2"></i>2K</li>
								<li><a href="#">了解更多<i class="icon-arrow-right22"></i></a></li>
							</ul>
						</div> 
					</div>
				</div>
				<div class="col-md-4">
					<div class="fh5co-blog animate-box">
						<a href="#" class="blog-bg" style="background-image: url(mainview/img/p11.jpg);"></a>
						<div class="blog-text">
							<span class="posted_on"></span>
							<h3><a href="#">都匀毛尖</a></h3>
							<p>都匀毛尖， 中国十大名茶之一。1956年，由毛泽东亲笔命名，又名“白毛尖”、“细毛尖”、“鱼钩茶”、“雀舌茶”，是贵州三大名茶之一。外形条索紧结纤细卷曲、披毫，色绿翠。香清高，味鲜浓，叶底嫩绿匀整明亮。产于贵州都匀市，属黔南布依族苗族自治州。</p>
							<ul class="stuff">
								<li><i class="icon-heart2"></i>1.2K</li>
								<li><i class="icon-eye2"></i>2K</li>
								<li><a href="#">了解更多<i class="icon-arrow-right22"></i></a></li>
							</ul>
						</div> 
					</div>
				</div>
				<div class="col-md-4">
					<div class="fh5co-blog animate-box">
						<a href="#" class="blog-bg" style="background-image: url(mainview/img/p12.jpg);"></a>
						<div class="blog-text">
							<span class="posted_on"></span>
							<h3><a href="#">六安瓜片</a></h3>
							<p>六安瓜片，中华传统历史名茶，中国十大名茶之一，简称瓜片、片茶，产自安徽省六安市大别山一带，唐称“庐州六安茶”，为名茶；明始称“六安瓜片”，为上品、极品茶；清为朝廷贡茶。六安瓜片，为绿茶特种茶类。“具有悠久的历史底蕴和丰厚的文化内涵。</p>
							<ul class="stuff">
								<li><i class="icon-heart2"></i>1.2K</li>
								<li><i class="icon-eye2"></i>2K</li>
								<li><a href="#">了解更多<i class="icon-arrow-right22"></i></a></li>
							</ul>
						</div> 
					</div>
				</div>
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
	</body>
</html>

