<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<meta charset="utf-8" />
<title>管理员后台</title>
<meta name="keywords"
	content="Bootstrap模版,Bootstrap模版下载,Bootstrap教程,Bootstrap中文" />
<meta name="description"
	content="JS代码网提供Bootstrap模版,Bootstrap教程,Bootstrap中文翻译等相关Bootstrap插件下载" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<!-- basic styles -->

<link href="backview/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="backview/css/font-awesome.min.css" />

<!--[if IE 7]>
		  <link rel="stylesheet" href="backview/css/font-awesome-ie7.min.css" />
		<![endif]-->

<!-- page specific plugin styles -->

<!-- fonts -->



<!-- ace styles -->

<link rel="stylesheet" href="backview/css/ace.min.css" />
<link rel="stylesheet" href="backview/css/ace-rtl.min.css" />
<link rel="stylesheet" href="backview/css/ace-skins.min.css" />

<!--[if lte IE 8]>
		  <link rel="stylesheet" href="backview/css/ace-ie.min.css" />
		<![endif]-->

<!-- inline styles related to this page -->

<!-- ace settings handler -->

<script src="backview/js/ace-extra.min.js"></script>

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->

<!--[if lt IE 9]>
		<script src="backview/js/html5shiv.js"></script>
		<script src="backview/js/respond.min.js"></script>
		<![endif]-->
</head>

<body>

	<div class="main-container" id="main-container">
		<script type="text/javascript">
			try {
				ace.settings.check('main-container', 'fixed')
			} catch (e) {
			}
		</script>

		<div class="main-container-inner">
			<div class="breadcrumbs" id="breadcrumbs">
				<script type="text/javascript">
					try {
						ace.settings.check('breadcrumbs', 'fixed')
					} catch (e) {
					}
				</script>

				
				<!-- .breadcrumb -->

				<div class="nav-search" id="nav-search">
					<form class="form-search">
						<span class="input-icon"> <input type="text"
							placeholder="Search ..." class="nav-search-input"
							id="nav-search-input" autocomplete="off" /> <i
							class="icon-search nav-search-icon"></i> </span>
					</form>
				</div>
				<!-- #nav-search -->
			</div>

			<div class="page-content">
				<div class="page-header">
					<h1>
					            茶具管理 <small> <i class="icon-double-angle-right"></i> 茶具
							&amp; 列表 </small> <a href="view/back/addgoods.jsp"
							style="float: right; margin-right: 30px;margin-top: -10px"><button
								class="btn btn-app btn-danger btn-xs">
								<i class="icon-plus bigger-160"></i> 增加
							</button> </a>
					</h1>

				</div>
				<!-- /.page-header -->

				<div class="row">
					<div class="col-xs-12">
						<!-- PAGE CONTENT BEGINS -->

						<div class="row">
							<div class="col-xs-12">
								<div class="table-responsive">
									<table id="sample-table-2"
										class="table table-striped table-bordered table-hover">
										<thead>
											<tr>
												<th class="center"><label> <input
														type="checkbox" class="ace" /> <span class="lbl"></span>
												</label></th>
												<th>茶具名称</th>
												<th>茶具价格</th>
                                                <th>茶具库存</th>
                                                <th>茶具描述</th>
												<th width="7%"></th>
											</tr>
										</thead>

										<tbody>
											<c:forEach items="${goodsList}" var="goods">
												<tr>
													<td class="center"><label> <input
															type="checkbox" class="ace" /> <span class="lbl"></span>
													</label></td>

													<td><a data-toggle="modal" data-target="#myModal"
											onclick="showDialog('${goods.goodname}','${goods.goodinfo }','${goods.googpath }','${goods.goodprice}','${goods.goodstock}')">${goods.goodname }</a></td>
													<td>${goods.goodprice }</td>
													<td>${goods.goodstock }</td>
													<td>${goods.goodinfo }</td>

													<td>
														<div
															class="visible-md visible-lg hidden-sm hidden-xs action-buttons">
															 <a class="green" href="goods/modifygoods.do?goodid=${goods.goodid }"> 
															 <i class="icon-pencil bigger-130"></i> </a> 
															<a class="red" href="goods/delgoods.do?goodid=${goods.goodid }"> 
															<i class="icon-trash bigger-130"></i> </a>
														</div></td>
												</tr>
											</c:forEach>


															<!-- 模态框（Modal） -->
											<div class="modal fade" id="myModal" tabindex="-1"
												role="dialog" aria-labelledby="myModalLabel"
												aria-hidden="true">
												<div class="modal-dialog">
													<div class="modal-content">
														<div class="modal-header">
															<button type="button" class="close" data-dismiss="modal"
																aria-hidden="true">&times;</button>
															<h2 class="modal-title red" id="myModalLabel">模态框（Modal）标题</h2>
														</div>
														<div class="modal-body" id="modal-body" style="height: 600px;"></div>
													</div>
													<!-- /.modal-content -->
												</div>
												<!-- /.modal -->
											</div>
										</tbody>
									</table>
								</div>
							</div>
						</div>

					</div>
					<!-- /.col -->
				</div>
				<!-- /.row -->
			</div>
			<!-- /.page-content -->
		</div>
		<!-- /.main-content -->

	</div>
	<!-- /.main-container-inner -->

	<!-- basic scripts -->

	<!--[if !IE]> -->

	<script src="backview/js/jquery.min.js"></script>

	<!-- <![endif]-->

	<!--[if IE]>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<![endif]-->

	<!--[if !IE]> -->

	<script type="text/javascript">
		window.jQuery
				|| document
						.write("<script src='backview/js/jquery-2.0.3.min.js'>"
								+ "<"+"/script>");
	</script>

	<!-- <![endif]-->

	<!--[if IE]>
<script type="text/javascript">
 window.jQuery || document.write("<script src='backview/js/jquery-1.10.2.min.js'>"+"<"+"/script>");
</script>
<![endif]-->

	<script type="text/javascript">
		if ("ontouchend" in document)
			document
					.write("<script src='backview/js/jquery.mobile.custom.min.js'>"
							+ "<"+"/script>");
	</script>
	<script src="backview/js/bootstrap.min.js"></script>
	<script src="backview/js/typeahead-bs2.min.js"></script>

	<!-- page specific plugin scripts -->

	<script src="backview/js/jquery.dataTables.min.js"></script>
	<script src="backview/js/jquery.dataTables.bootstrap.js"></script>

	<!-- ace scripts -->

	<script src="backview/js/ace-elements.min.js"></script>
	<script src="backview/js/ace.min.js"></script>

	<!-- inline scripts related to this page -->

	<script type="text/javascript">
		function showDialog(goodname, goodinfo, googpath, goodprice,goodstock) {
			$('#myModalLabel').html("茶具名称:"+goodname);
			var tmp = "<table><tr><td width=\"100%\"><img src=\""+googpath+"\" height=\"300px\"></td></tr>";
			tmp += "<td><h4 class=\"header smaller lighter blue\">茶具价格："
					+ goodprice + "</h4></td>";
			tmp += "<tr><td><h4 class=\"header smaller lighter blue\">茶具库存："
					+ goodstock + "</h4></td></tr>";
			tmp += "<tr><td colspan=\"2\"><h4 class=\"header smaller lighter purple\">描述："
					+ goodinfo + "</h4></td></tr></table>";

			$('#modal-body').empty();
			$('#modal-body').html(tmp);

		};
	
		jQuery(function($) {
			var oTable1 = $('#sample-table-2').dataTable({
				"aoColumns" : [ {
					"bSortable" : false
				}, null, null, {
					"bSortable" : false
				} ]
			});

			$('table th input:checkbox').on(
					'click',
					function() {
						var that = this;
						$(this).closest('table').find(
								'tr > td:first-child input:checkbox').each(
								function() {
									this.checked = that.checked;
									$(this).closest('tr').toggleClass(
											'selected');
								});

					});

			$('[data-rel="tooltip"]').tooltip({
				placement : tooltip_placement
			});
			function tooltip_placement(context, source) {
				var $source = $(source);
				var $parent = $source.closest('table')
				var off1 = $parent.offset();
				var w1 = $parent.width();

				var off2 = $source.offset();
				var w2 = $source.width();

				if (parseInt(off2.left) < parseInt(off1.left)
						+ parseInt(w1 / 2))
					return 'right';
				return 'left';
			}
		})
	</script>
</body>
</html>

