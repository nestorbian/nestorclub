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

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>管理员后台</title>
<!-- basic styles -->

<link href="backview/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="backview/css/font-awesome.min.css" />
<link rel="stylesheet" href="backview/css/jquery-ui-1.10.3.custom.min.css" />
<link rel="stylesheet" href="backview/css/chosen.css" />
<link rel="stylesheet" href="backview/css/datepicker.css" />
<link rel="stylesheet" href="backview/css/bootstrap-timepicker.css" />
<link rel="stylesheet" href="backview/css/daterangepicker.css" />
<link rel="stylesheet" href="backview/css/colorpicker.css" />

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
		<div class="main-container-inner">
			<div class="page-content">
				<div class="page-header">
					<h1>
						泡茶文章管理 <small> <i class="icon-double-angle-right"></i> 泡茶文章增加/修改
						</small>
					</h1>
				</div>
				<!-- /.page-header -->

				<div class="row">
					<div class="col-xs-12">
						<!-- PAGE CONTENT BEGINS -->

						<form class="form-horizontal" role="form" action="maketea/addormodify.do" id="essayform"
							method="post" enctype="multipart/form-data">
							<input type="hidden" name="essayid" value="${null==essay?0:essay.essayid }">

							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right"
									for="form-field-1"> 文章题目 </label>

								<div class="col-sm-9">
									<input type="text" id="title" placeholder="请输入文章题目"
										class="title" name="title"
										value="${null==essay?'':essay.title }" />
								</div>
							</div>
							<div class="space-4"></div>

							<div class="space-4"></div>
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right"
									for="form-field-1"> 文章作者</label>

								<div class="col-sm-9">
									<input type="text" id="author" placeholder="请输入文章作者"
										class="author" name="author"
										value="${null==essay?'':essay.author }" /><span class="author"></span>
								</div>
							</div>

							<div class="space-4"></div>

							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right"
									for="form-field-1"> 文章内容</label>

								<div class="col-sm-9">
									<textarea rows="12" cols="80" name="content" placeholder="请输入文章内容 (最多不超过800字)">${null==essay?'':essay.content }</textarea>
								</div>
							</div>


							<div class="space-4"></div>

							<div class="clearfix form-actions">
								<div class="col-md-offset-3 col-md-9">
									<button class="btn btn-info" type="submit">
										<i class="icon-ok bigger-110"></i> 保存
									</button>

								</div>
							</div>

						</form>


					</div>
				</div>
				<!-- PAGE CONTENT ENDS -->
			</div>
			<!-- /.col -->
		</div>
		<!-- /.row -->
	</div>
	<!-- /.page-content -->


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

		jQuery(function($) {
			$('#id-input-file-2').ace_file_input({
				no_file : 'No File ...',
				btn_choose : 'Choose',
				btn_change : 'Change',
				droppable : false,
				onchange : null,
				thumbnail : false
			//| true | large
			//whitelist:'gif|png|jpg|jpeg'
			//blacklist:'exe|php'
			//onchange:''
			//
			});

			$('#id-input-file-2').change(function() {
				$('#imgPath').val('');
			});

		});
	</script>
	<script src="backview/js/bootstrap.min.js"></script>
	<script src="backview/js/typeahead-bs2.min.js"></script>

	<!-- page specific plugin scripts -->

	<!--[if lte IE 8]>
		  <script src="backview/js/excanvas.min.js"></script>
		<![endif]-->

	<script src="backview/js/jquery-ui-1.10.3.custom.min.js"></script>
	<script src="backview/js/jquery.ui.touch-punch.min.js"></script>
	<script src="backview/js/chosen.jquery.min.js"></script>
	<script src="backview/js/fuelux/fuelux.spinner.min.js"></script>
	<script src="backview/js/date-time/bootstrap-datepicker.min.js"></script>
	<script src="backview/js/date-time/bootstrap-timepicker.min.js"></script>
	<script src="backview/js/date-time/moment.min.js"></script>
	<script src="backview/js/date-time/daterangepicker.min.js"></script>
	<script src="backview/js/bootstrap-colorpicker.min.js"></script>
	<script src="backview/js/jquery.knob.min.js"></script>
	<script src="backview/js/jquery.autosize.min.js"></script>
	<script src="backview/js/jquery.inputlimiter.1.3.1.min.js"></script>
	<script src="backview/js/jquery.maskedinput.min.js"></script>
	<script src="backview/js/bootstrap-tag.min.js"></script>

	<!-- ace scripts -->

	<script src="backview/js/ace-elements.min.js"></script>
	<script src="backview/js/ace.min.js"></script>

	<!-- inline scripts related to this page -->
	<script type="text/javascript" src="mainview/js/jquery-1.11.3.js"></script>
	<script type="text/javascript" src="mainview/js/jquery.validate.min.js"></script>
    <script type="text/javascript" src="mainview/js/common.js"></script>
</body>
</html>
