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

				<ul class="breadcrumb">
					<li><i class="icon-home home-icon"></i> <a href="#">Home</a></li>

					<li><a href="#">Tables</a></li>
					<li class="active">Simple &amp; Dynamic</li>
				</ul>
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
						泡茶文章管理 <small> <i class="icon-double-angle-right"></i> 泡茶文章
							&amp; 列表 </small> <a href="view/back/addessay.jsp"
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
												<th width="8%">文章题目</th>
												<th width="10%">文章作者</th>
												<th width="10%">文章日期</th>
                                                <th width="70%">文章内容</th>
												<th width="8%"></th>
											</tr>
										</thead>

										<tbody>
											<c:forEach items="${essayList}" var="essay">
												<tr>
													<td class="center"><label> <input
															type="checkbox" class="ace" /> <span class="lbl"></span>
													</label></td>
													<td>${essay.title}</td>
													<td>${essay.author}</td>
													<td>${essay.date}</td>
                                                    <td>${essay.content}</td>
													<td>
														<div
															class="visible-md visible-lg hidden-sm hidden-xs action-buttons">
															<a class="green" href="maketea/selectbyid.do?essayid=${essay.essayid}"> <i class="icon-pencil bigger-130"></i> </a>
															<a class="red" href="maketea/deletebyid.do?essayid=${essay.essayid}"> <i class="icon-trash bigger-130"></i> </a>
														</div></td>
												</tr>
											</c:forEach>
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

