<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
	<head>
	  <base href="<%=basePath%>">
		<meta charset="utf-8" />
		<title>管理员后台</title>
		<link href="backview/css/bootstrap.min.css" rel="stylesheet" />
		<link rel="stylesheet" href="backview/css/font-awesome.min.css" />
		<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400,300" />
		<link rel="stylesheet" href="backview/css/ace.min.css" />
		<link rel="stylesheet" href="backview/css/ace-rtl.min.css" />
		<link rel="stylesheet" href="backview/css/ace-skins.min.css" />
		<script src="backview/js/ace-extra.min.js"></script>
		<script type="text/javascript" src="backview/js/jquery-1.11.3.js"></script>
		<script type="text/javascript">
		$(document).ready(function(){
		$("a").click(function(){
		if("${admin.adname}"!='');
		else window.location.href="view/back/login.jsp";
		});
		});
		</script>
	</head>

	<body>
		<div class="navbar navbar-default" id="navbar">
		<script type="text/javascript">
			try {
				ace.settings.check('navbar', 'fixed')
			} catch (e) {
			}
		</script>

			<div class="navbar-container" id="navbar-container">
				<div class="navbar-header pull-left">
					<a href="#" class="navbar-brand">
						<small>
							<i class="icon-leaf"></i>
							茶道后台管理系统
						</small>
					</a><!-- /.brand -->
				</div><!-- /.navbar-header -->

				<div class="navbar-header pull-right" role="navigation">
					<ul class="nav ace-nav">

						<li class="light-blue">
						<c:choose>
						<c:when test="${admin.adname!=null}">
								<img class="nav-user-photo" src="backview/avatars/user.jpg" alt="Jason's Photo" style="position: absolute;right:140px;top:5px;"/>
								<span class="user-info" style="position: absolute;right:80px;">
									<small>欢迎光临,</small>
									${admin.adname}
								</span>
								<a href="admin/exit.do">退出</a>
						</c:when>
						<c:otherwise>
						<a style="width: 50px;height: 45px;" href="view/back/login.jsp">登录</a>
						</c:otherwise>
						</c:choose>
						</li>
					</ul><!-- /.ace-nav -->
				</div><!-- /.navbar-header -->
			</div><!-- /.container -->
		</div>

		<div class="main-container" id="main-container">
			<script type="text/javascript">
				try{ace.settings.check('main-container' , 'fixed')}catch(e){}
			</script>

			<div class="main-container-inner">
				<a class="menu-toggler" id="menu-toggler" href="#">
					<span class="menu-text"></span>
				</a>

				<div class="sidebar" id="sidebar">
					<script type="text/javascript">
						try{ace.settings.check('sidebar' , 'fixed')}catch(e){}
					</script>

					<div class="sidebar-shortcuts" id="sidebar-shortcuts">
						<div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
							<button class="btn btn-success">
								<i class="icon-signal"></i>
							</button>

							<button class="btn btn-info">
								<i class="icon-pencil"></i>
							</button>

							<button class="btn btn-warning">
								<i class="icon-group"></i>
							</button>

							<button class="btn btn-danger">
								<i class="icon-cogs"></i>
							</button>
						</div>

						<div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
							<span class="btn btn-success"></span>

							<span class="btn btn-info"></span>

							<span class="btn btn-warning"></span>

							<span class="btn btn-danger"></span>
						</div>
					</div><!-- #sidebar-shortcuts -->

					<ul class="nav nav-list">
					<%-- <c:forEach items="${pList }" var="item">

						<li class="menu_left"><a href="${item.url }" target="right"> <i
								class="${item.icon }"></i> <span class="menu-text">
									${item.name } </span> </a>
						</li>

					</c:forEach> --%>
					
						 <li class="active">
							<a href="user/showall.do" target="right" class="dropdown-toggle" >
								<i class="icon-dashboard"></i>
								<span class="menu-text"> 用户管理 </span>
							</a>
						</li>

						<li>
							<a href="view/priv/priv.jsp" target="right" class="dropdown-toggle" >
								<i class="icon-text-width"></i>
								<span class="menu-text"> 权限管理 </span>
							</a>
						</li>

						<li>
							<a href="goods/showgoods.do" class="dropdown-toggle" target="right">
								<i class="icon-desktop"></i>
								<span class="menu-text"> 茶具管理 </span>
							</a>

						</li>

						<li>
							<a href="newtea/showtea.do" class="dropdown-toggle" target="right">
								<i class="icon-list"></i>
								<span class="menu-text">新茶管理 </span>

							</a>
						</li>
						<li>
							<a href="maketea/showall.do" class="dropdown-toggle" target="right">
								<i class="icon-edit"></i>
								<span class="menu-text">泡茶管理</span>
							</a>

						</li>

						<li>
							<a href="widgets.html">
								<i class="icon-list-alt"></i>
								<span class="menu-text"> 插件 </span>
							</a>
						</li>

						<li>
							<a href="calendar.html">
								<i class="icon-calendar"></i>

								<span class="menu-text">
									日历
									<span class="badge badge-transparent tooltip-error" title="2&nbsp;Important&nbsp;Events">
										<i class="icon-warning-sign red bigger-130"></i>
									</span>
								</span>
							</a>
						</li>

						<li>
							<a href="gallery.html">
								<i class="icon-picture"></i>
								<span class="menu-text"> 相册 </span>
							</a>
						</li>
						

						
					</ul><!-- /.nav-list -->

				</div>

				<div class="main-content">
				<iframe id="iframe" name="right" src="view/back/welcome.jsp" width="100%"
					scrolling="no" frameborder="0" onload="iframeLoad()">
					</iframe>
				
			</div><!-- /.main-container-inner -->

			<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
				<i class="icon-double-angle-up icon-only bigger-110"></i>
			</a>
		</div><!-- /.main-container -->

		<!-- basic scripts -->

		<!--[if !IE]> -->



		<script type="text/javascript">
			window.jQuery || document.write("<script src='assets/js/jquery-2.0.3.min.js'>"+"<"+"script>");
		</script>


		<script type="text/javascript">
			if("ontouchend" in document) document.write("<script src='backview/js/jquery.mobile.custom.min.js'>"+"<"+"script>");
		</script>
		<script src="backview/js/bootstrap.min.js"></script>
		<script src="backview/js/typeahead-bs2.min.js"></script>

		<script src="backview/js/jquery-ui-1.10.3.custom.min.js"></script>
		<script src="backview/js/jquery.ui.touch-punch.min.js"></script>
		<script src="backview/js/jquery.slimscroll.min.js"></script>
		<script src="backview/js/jquery.easy-pie-chart.min.js"></script>
		<script src="backview/js/jquery.sparkline.min.js"></script>
		<script src="backview/js/flot/jquery.flot.min.js"></script>
		<script src="backview/js/flot/jquery.flot.pie.min.js"></script>
		<script src="backview/js/flot/jquery.flot.resize.min.js"></script>

		<!-- ace scripts -->

		<script src="backview/js/ace-elements.min.js"></script>
		<script src="backview/js/ace.min.js"></script>

		<!-- inline scripts related to this page -->

	
			
		<script type="text/javascript">
		function iframeLoad() {
			document.getElementById("iframe").height = 0;
			document.getElementById("iframe").height = document
					.getElementById("iframe").contentWindow.document.body.scrollHeight;
		}
	</script>
	
</body>
</html>

